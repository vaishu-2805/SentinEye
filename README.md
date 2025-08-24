# Face Tracker & ATM Security Prototype

A comprehensive face tracking application suite that includes basic face detection and an advanced ATM security prototype system. Uses webcam for real-time face detection and tracking with security monitoring capabilities.

This repository includes three applications:
1. **Simple Face Tracker** - Basic version with face detection only
2. **Advanced Face Tracker** - Extended version with eye detection, screenshots, and more features  
3. **ATM Security Prototype** - Demonstration security system for ATM environments

## Features

### Simple Face Tracker
- Real-time face detection using OpenCV
- FPS counter to monitor performance
- Face counter showing number of detected faces
- Configurable parameters for easy customization
- Mirror mode (horizontal flip) for intuitive interaction

### Advanced Face Tracker
All features from the simple version, plus:
- Eye detection within detected faces
- Screenshot capture functionality (press 's')
- Toggle help display (press 'h')
- Toggle eye detection on/off (press 'e')
- Enhanced statistics tracking
- Organized screenshot storage

### 🏧 ATM Security Prototype
An innovative security demonstration system featuring:
- **Dual Window Interface**: Separate camera monitoring and keypad simulation windows
- **Multi-Person Detection**: Automatic warning when more than one person is detected
- **Security Alerts**: Visual and audio warnings during security breaches
- **Automatic Screenshots**: Captures security incidents for review
- **Transaction Blocking**: Prevents PIN entry during security breaches
- **Real-time Status**: Live security status updates in both windows
- **Professional UI**: ATM-style keypad with realistic design
- **Threaded Architecture**: Improved performance with proper thread management
- **Skeleton Detection**: Real-time body pose tracking using YOLO v11 model

**Advanced Security Features (NEW!):**
- 🧠 **Deep Learning-based Face Detection**: More accurate face detection using DNN models
- 🔎 **Full Kalman Filter Tracking**: Advanced prediction of face positions for better tracking
- 🛡️ **Anti-Spoofing Protection**: Detects fake faces and photos with blink detection & texture analysis
- 📊 **Comprehensive Analytics**: Logging and statistics to monitor security events
- 🦴 **Skeleton Detection**: Real-time body pose tracking and skeleton visualization with YOLO

**Basic Security Features:**
- 🔴 Red warning boxes when multiple people detected
- 🟢 Green secure status for single user
- 📸 Automatic screenshot capture during breaches
- 🔊 Audio alert system
- ⏱️ Timed warning periods
- 📊 Security breach statistics

## Requirements

- Python 3.6 or higher
- OpenCV library
- Pygame (for ATM security audio alerts)
- NumPy (for signal processing)
- Tkinter (for ATM keypad interface - usually included with Python)
- Ultralytics (for YOLO pose detection)
- A working webcam

## Installation

1. Clone or download this repository

2. Install the required dependencies:

```bash
pip install -r requirements.txt
```

## Virtual Environment

This project uses a Python virtual environment located in the `env` directory. This directory should not be tracked by version control.

To set up the environment, run the following commands in your terminal:

```bash
python -m venv env
.\env\Scripts\Activate.ps1   # for Windows PowerShell
# or
.\env\Scripts\activate.bat   # for Windows Command Prompt
pip install -r requirements.txt
```

All the provided batch files will automatically check for and use the Python virtual environment.

## Usage

## Batch Files for Easy Execution

The project includes batch files to easily run each application:

| Batch File | Application | Description |
|------------|-------------|-------------|
| `run_face_tracker.bat` | Simple Face Tracker | Runs the basic face detection application |
| `run_advanced_face_tracker.bat` | Advanced Face Tracker | Runs the enhanced version with eye detection |
| `run_atm_security.bat` | ATM Security Prototype | Runs the basic ATM security system |
| `run_advanced_security.bat` | Advanced ATM Security | Runs the ATM security with advanced features |
| `run_skeleton_tracker.bat` | Skeleton Detection | Runs the ATM security with skeleton detection |

Each batch file will:
1. Check if the Python virtual environment exists
2. Activate the environment
3. Run the corresponding Python application
4. Provide clear instructions and controls

## Application Controls

### Simple Face Tracker
- Press 'q' to quit the application

### Advanced Face Tracker
- Press 'q' to quit the application
- Press 's' to take a screenshot
- Press 'h' to toggle help text display
- Press 'e' to toggle eye detection on/off

### 🏧 ATM Security Prototype
- Press 'q' to quit the camera application
- Press 's' to take a manual screenshot
- Press 'k' to open/close the keypad window
- Press 'h' to toggle help display
- Press 'a' to display analytics report (advanced version only)

## Repository Structure

```
face_tracker.py              # Simple face detection program
advanced_face_tracker.py     # Enhanced version with eye detection
atm_security_prototype.py    # ATM security prototype
main.py                      # Advanced version with skeleton detection
requirements.txt             # Project dependencies
README.md                    # This documentation file

# Batch files for easy execution
run_face_tracker.bat         # Runs the simple face tracker
run_advanced_face_tracker.bat # Runs the advanced face tracker
run_atm_security.bat         # Runs the ATM security prototype
run_advanced_security.bat    # Runs the advanced security version
run_skeleton_tracker.bat     # Runs the skeleton detection version

# Directories
screenshots/                 # For storing manual screenshots
security_screenshots/        # For automatic security breach captures
logs/                        # For security event logs
models/                      # For DNN face detection models
```

**How it Works:**
1. **Camera Window**: Shows live feed with face detection
   - Green boxes = Secure (1 person or less)
   - Red boxes = Security breach (multiple people)
   - Real-time security status display
   
2. **Keypad Window**: Simulates ATM PIN entry
   - Numeric keypad for PIN entry
   - Security status indicator
   - Transaction blocking during breaches
   - Warning popups for security alerts

**Security Demo Scenarios:**
- 👤 **Single Person**: Normal operation, green indicators, PIN entry allowed
- 👥 **Multiple People**: Security breach mode, red warnings, PIN entry blocked
- 📸 **Auto Documentation**: Screenshots automatically saved during security events
- 🔊 **Audio Alerts**: Warning sounds when multiple people detected

### Advanced Face Tracker
The advanced face tracker has additional configuration options in the `CONFIG` dictionary in the `advanced_face_tracker.py` file:

#### Camera Settings
| Parameter | Description | Default Value |
|-----------|-------------|---------------|
| `camera_id` | Camera device ID | 0 (built-in webcam) |
| `frame_width` | Width of camera frame | 640 |
| `frame_height` | Height of camera frame | 480 |
| `flip_horizontal` | Flip the camera horizontally (mirror mode) | True |

#### Face Detection Settings
| Parameter | Description | Default Value |
|-----------|-------------|---------------|
| `face_box_color` | Color of face bounding box (BGR format) | (0, 255, 0) (green) |
| `face_box_thickness` | Thickness of bounding box lines | 2 |
| `min_face_size` | Minimum face size to detect | (30, 30) |
| `scale_factor` | How much the image size is reduced at each scale | 1.1 |
| `min_neighbors` | How many neighbors each candidate rectangle should have | 5 |

#### Eye Detection Settings
| Parameter | Description | Default Value |
|-----------|-------------|---------------|
| `detect_eyes` | Whether to detect eyes within faces | True |
| `eye_box_color` | Color of eye bounding box (BGR format) | (255, 0, 0) (blue) |
| `eye_box_thickness` | Thickness of eye bounding box lines | 1 |

#### Display Settings
| Parameter | Description | Default Value |
|-----------|-------------|---------------|
| `show_fps` | Whether to display FPS counter | True |
| `show_help` | Whether to display help text | True |
| `text_color` | Color of text overlays (BGR format) | (0, 0, 255) (red) |
| `text_size` | Size of text overlays | 0.7 |
| `text_thickness` | Thickness of text overlays | 2 |

#### Screenshot Settings
| Parameter | Description | Default Value |
|-----------|-------------|---------------|
| `screenshot_dir` | Directory to save screenshots | 'screenshots' |
| `screenshot_format` | Format to save screenshots (jpg or png) | 'jpg' |

### ATM Security Prototype Configuration
The ATM security system can be customized by modifying the `CONFIG` dictionary in `atm_security_prototype.py`:

#### Security Settings
| Parameter | Description | Default Value |
|-----------|-------------|---------------|
| `max_safe_people` | Maximum safe number of people | 1 |
| `warning_duration` | Duration to show warning (seconds) | 3 |
| `auto_screenshot` | Auto screenshot on security breach | True |
| `face_box_color` | Color for secure status (BGR) | (0, 255, 0) (green) |
| `warning_box_color` | Color for warning status (BGR) | (0, 0, 255) (red) |

#### Advanced Security Settings (NEW!)
| Parameter | Description | Default Value |
|-----------|-------------|---------------|
| `use_dnn_detector` | Use Deep Neural Network for face detection | True |
| `use_kalman_filter` | Use Kalman filter for face tracking | True |
| `enable_anti_spoofing` | Enable anti-spoofing protection | True |
| `enable_logging` | Enable comprehensive event logging | True |
| `dnn_confidence` | Confidence threshold for DNN detection | 0.7 |
| `dnn_model_path` | Path to DNN model files | 'models/' |
| `log_dir` | Directory for storing log files | 'logs/' |
| `enable_skeleton_detection` | Enable YOLO pose detection | True |
| `skeleton_model_path` | Path to YOLO pose model | 'yolo11n-pose.pt' |

#### Output Directories
- **Screenshots**: `screenshots/` (manual screenshots)
- **Security Screenshots**: `security_screenshots/` (automatic security breach captures)
- **Logs**: `logs/` (security event logs and analytics)
- **Models**: `models/` (DNN face detection models)
- **YOLO Models**: Project root directory (YOLO pose model files)

## How It Works

### Face Detection
The base version uses the Haar Cascade classifier from OpenCV, which is a machine learning-based approach where a cascade function is trained from many positive and negative images. It's particularly efficient for face detection.

The advanced security version also implements Deep Neural Network (DNN) based face detection from OpenCV, which provides better accuracy and robustness compared to Haar Cascade, especially in challenging lighting conditions and different face orientations.

### Skeleton Detection
The enhanced version implements YOLO (You Only Look Once) v11 pose detection:
1. **Real-time Detection**: Identifies human body key points in the video stream
2. **Pose Estimation**: Maps the skeletal structure of detected persons
3. **Visualization**: Overlays skeleton visualization on the camera feed
4. **Result**: Adds another layer of security monitoring through body pose analysis

### Kalman Filter Tracking
The advanced security version implements a full Kalman filter for face tracking:
1. **Prediction**: Predicts where faces should be in the next frame
2. **Measurement**: Measures actual face positions in the current frame
3. **Update**: Refines the prediction based on measurement
4. **Result**: Smooth tracking of faces across frames, even during brief occlusions

### Anti-Spoofing
The anti-spoofing features help detect attempts to fool the system with photos or fake faces:
1. **Blink Detection**: Monitors eye regions for natural blinking patterns
2. **Texture Analysis**: Analyzes facial texture to detect printed photos or screens
3. **Result**: Increased security against presentation attacks and identity fraud

### ATM Security System
The security prototype implements a multi-threaded architecture:
1. **Main Thread**: Handles the Tkinter UI (keypad window)
2. **Background Thread**: Processes camera frames and detects faces
3. **Thread Communication**: Uses Queue for thread-safe data exchange
4. **Event System**: Coordinates between security monitoring and UI

This architecture ensures the application remains responsive while performing intensive face detection operations in the background.

The basic process for both versions:
1. Captures video from your webcam
2. Converts each frame to grayscale
3. Applies the face detection algorithm
4. Draws rectangles around detected faces
5. Displays the processed frame with face counts and FPS

### Eye Detection (Advanced Version)
The advanced version also uses a Haar Cascade classifier specifically trained for eye detection. For each detected face:
1. A region of interest (ROI) is extracted from the face area
2. The eye detection algorithm is applied to this region
3. Rectangles are drawn around detected eyes

### Screenshots (Advanced Version)
The advanced version allows you to capture screenshots by pressing the 's' key:
1. Screenshots are saved to the 'screenshots' directory (created automatically)
2. Files are named with a timestamp (e.g., 'face_tracker_20230615_120530.jpg')
3. The format can be configured (JPG or PNG)

## Troubleshooting

- If the webcam doesn't open, check that your camera is connected and not being used by another application
- If face detection is not working well, try adjusting the `scale_factor` and `min_neighbors` parameters
- For better performance on slower computers, try reducing the `frame_width` and `frame_height`

## Further Extensions

Some ideas for further extending this application:

- Add face recognition to identify specific people
- Track faces across frames to assign consistent IDs
- Add emotion detection to recognize facial expressions
- Implement facial landmark detection (nose, mouth, etc.)
- Add age and gender estimation
- Create a recording feature to save video
- Implement motion detection to only track when movement occurs
- Add a GUI for adjusting settings without modifying code

## License

This project is open source and available for personal and educational use.