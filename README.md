# Robot Framework Web Testing Project

This repository contains a basic setup for web testing using Robot Framework with SeleniumLibrary.

## Project Structure

```
robot-web-testing/
├── .gitignore
├── README.md
├── requirements.txt
├── Resources/
│   ├── common.robot
│   └── pages/
│       └── login_page.robot
├── Tests/
│   ├── login_tests.robot
│   └── search_tests.robot
└── Results/
    └── .gitkeep
```

## Setup

1. Install Python 3.x
2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Install WebDriver for your preferred browser:
   - Chrome: Download ChromeDriver
   - Firefox: Download GeckoDriver

## Running Tests

Execute all tests:
```bash
robot -d Results Tests/
```

Run specific test suite:
```bash
robot -d Results Tests/login_tests.robot
```

## Project Files

### requirements.txt