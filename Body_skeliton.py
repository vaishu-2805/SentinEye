#!/usr/bin/env python3
"""Simple YOLOv12 webcam demo.

Usage:
    python main.py --weights yolov12n.pt

The script expects a local weights file (e.g. `yolov12n.pt`). If the file
is missing it will print instructions. The project uses Git LFS to store
large model files - see the README for details.
"""

import argparse
import os
import sys

try:
    from ultralytics import YOLO
except Exception:
    print("[ERROR] The 'ultralytics' package is not installed. Run:\n    pip install ultralytics opencv-python")
    sys.exit(1)

import cv2


def parse_args():
    p = argparse.ArgumentParser(description="YOLOv12 webcam demo")
    p.add_argument("--weights", "-w", default="yolo11n-pose.pt", help="Path to model weights (.pt)")
    p.add_argument("--camera", "-c", type=int, default=0, help="Camera index (default: 0)")
    return p.parse_args()


def main():
    args = parse_args()
    weights = args.weights

    if not os.path.isfile(weights):
        print(f"[ERROR] Weights file '{weights}' not found in the project folder.")
        print("If you cloned from GitHub, ensure you installed Git LFS and ran 'git lfs pull' to fetch large files.")
        print("You can also download the weights manually and place them in this folder.")
        sys.exit(1)

    print(f"[INFO] Loading model from '{weights}'...")
    model = YOLO(weights)
    print("[INFO] Model loaded.")

    cap = cv2.VideoCapture(args.camera)
    if not cap.isOpened():
        print(f"[ERROR] Could not open camera index {args.camera}")
        sys.exit(1)

    cv2.namedWindow("YOLOv12 Webcam", cv2.WINDOW_NORMAL)
    cv2.resizeWindow("YOLOv12 Webcam", 800, 600)

    try:
        while True:
            ret, frame = cap.read()
            if not ret:
                print("[WARNING] Failed to read frame from camera.")
                break

            results = model(frame)
            annotated = results[0].plot()

            cv2.imshow("YOLOv12 Webcam", annotated)
            if cv2.waitKey(1) & 0xFF == ord('q'):
                print("[INFO] 'q' pressed — exiting.")
                break
    finally:
        cap.release()
        cv2.destroyAllWindows()


if __name__ == "__main__":
    main()
