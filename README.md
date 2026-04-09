# Android Robot Framework 🤖📱

This repository contains automation tests for **Android applications** using the Robot Framework and mobile automation tools such as Appium.

The project demonstrates how to build, organize, and execute automated tests for Android devices using a keyword-driven approach.

---

## 📦 Repository Overview

The repository is structured to support scalable mobile test automation:

| Directory    | Description                                 |
| ------------ | ------------------------------------------- |
| `tests/`     | Test cases written in Robot Framework       |
| `resources/` | Reusable keywords and variables             |
| `configs/`   | Configuration files (devices, capabilities) |
| `reports/`   | Test execution reports and logs             |
| `scripts/`   | Helper scripts for running tests            |

---

## 🧠 Goals

* Automate Android application testing
* Learn mobile test automation with Robot Framework
* Practice integration with Appium
* Build reusable and maintainable test suites
* Understand test architecture and scalability

---

## 🛠️ Tech Stack

* Python
* Robot Framework
* Appium
* Android SDK
* (Optional) Selenium / Appium libraries

Robot Framework is a keyword-driven automation framework widely used for **acceptance testing, RPA, and end-to-end automation across platforms**. ([GitHub][1])

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/che711/android_robotframework.git
cd android_robotframework
```

### 2. Create virtual environment

```bash
python3 -m venv venv
source venv/bin/activate  # Linux / macOS
# venv\Scripts\activate   # Windows
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Install and start Appium

```bash
npm install -g appium
appium
```

### 5. Run tests

```bash
robot tests/
```

---

## 📂 Project Structure

```
android_robotframework/
│
├── tests/            # Test cases
├── resources/        # Keywords and shared logic
├── configs/          # Device and environment configs
├── reports/          # Logs and reports
├── scripts/          # Utility scripts
│
├── requirements.txt
└── README.md
```

---

## 📱 Example Test Case

```robot
*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub

*** Test Cases ***
Open Application
    Open Application    ${REMOTE_URL}    platformName=Android
    ...    deviceName=Android Emulator
    ...    appPackage=com.example
    ...    appActivity=.MainActivity
```

---

## ⚙️ Requirements

* Python 3.8+
* Node.js & npm
* Appium server
* Android SDK
* Android device or emulator

---

## 🧪 Features

* Keyword-driven test design
* Cross-platform automation support
* Easy integration with CI/CD
* Scalable test architecture
* Detailed HTML reports

---

## 🧪 Ideas for Improvements

* Add CI/CD pipeline (GitHub Actions)
* Integrate Allure reporting
* Add parallel test execution
* Support multiple devices
* Dockerize test environment

---

## 📖 Learning Resources

* https://robotframework.org/
* https://appium.io/docs/en/latest/
* https://github.com/serhatbolsu/robotframework-appiumlibrary

---

## 🤝 Contributing

Feel free to contribute by adding new tests, improving structure, or enhancing automation workflows.

---

## 📄 License

This project is licensed under the MIT License.

[1]: https://github.com/topics/robotframework?utm_source=chatgpt.com "robotframework · GitHub Topics · GitHub"
