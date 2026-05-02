# Portify - Personal Portfolio Builder Mobile App

## Project Description

Portify is a modern Flutter mobile application that allows users to create, manage, and share professional portfolios effortlessly. Users can add their personal information, skills, work experience, projects, and choose from multiple themes to create a stunning portfolio. This app was developed as a group project for the Mobile Application Development course.

## Features

- ✅ Create and manage multiple portfolios
- ✅ Add profile image from gallery
- ✅ Add skills with proficiency levels (1-100)
- ✅ Add work experience with achievements
- ✅ Add projects with technologies and live links
- ✅ 8 different color themes (Blue, Purple, Green, Orange, Red, Teal, Pink, Indigo)
- ✅ Share portfolio via social media
- ✅ QR code generation for portfolio sharing
- ✅ Glassmorphic UI design
- ✅ Daily motivational quotes from public API
- ✅ SharedPreferences for user settings
- ✅ Responsive design for all screen sizes
- ✅ Portfolio detail view with timeline

## Screens in the App

| Screen                   | Description                                |
| ------------------------ | ------------------------------------------ |
| Splash Screen            | App loading screen with animation          |
| Onboarding Screen        | 4-page introduction to app features        |
| Home Screen              | Dashboard showing portfolio stats and list |
| Create Portfolio Screen  | 5-step form to create new portfolio        |
| Portfolio Detail Screen  | Stunning view of complete portfolio        |
| Portfolio Preview Screen | Confirmation after portfolio creation      |
| QR Share Screen          | QR code generation for sharing             |
| Settings Screen          | App information and team details           |

## Requirements Fulfilled

### 1. General Requirements (Topic 1)

- ✅ Developed using Flutter
- ✅ 8+ screens (exceeds 3-5 requirement)
- ✅ Meaningful user interaction throughout

### 2. UI & Interaction (Topic 2)

- ✅ Stateless & Stateful widgets used
- ✅ Proper layout (Row, Column, Stack, Expanded, Container)
- ✅ Responsive design with SingleChildScrollView
- ✅ Form inputs with validation (Create Portfolio Form)
- ✅ Snackbar feedback for user actions
- ✅ Dialog for sharing and motivational quotes

### 3. Navigation & State Management (Topic 3)

- ✅ Navigation between screens (push/pop/pushReplacementNamed)
- ✅ Data passing between screens (portfolio objects via arguments)
- ✅ Provider for global state management
- ✅ setState() for local state management

### 4. Data Persistence (Topic 4)

- ✅ SharedPreferences for user settings (dark mode, user preferences)
- ✅ Image storage via ImagePicker (file system)
- ✅ Portfolio data stored in PortfolioModel (in-memory with persistence ready)

### 5. Networking & API Integration (Topic 5)

- ✅ Fetch quotes from public API (type.fit/api/quotes)
- ✅ JSON parsing with json.decode()
- ✅ Loading indicator (CircularProgressIndicator)
- ✅ Error handling (try-catch with fallback quotes)
- ✅ Display of fetched data in beautiful dialog

### 6. Device Features & Plugin Integration (Topic 6)

- ✅ Image Picker plugin - Select profile images from gallery
- ✅ Share Plus plugin - Share portfolio links via social media
- ✅ QR Flutter plugin - Generate QR codes for portfolios
- ✅ URL Launcher plugin - Open email, phone, and web links
- ✅ HTTP plugin - API calls for motivational quotes

## Tech Stack

| Technology        | Purpose              |
| ----------------- | -------------------- |
| Flutter 3.0+      | UI Framework         |
| Dart              | Programming Language |
| Provider          | State Management     |
| SharedPreferences | Local Storage        |
| Image Picker      | Image Selection      |
| HTTP              | API Integration      |
| QR Flutter        | QR Code Generation   |
| Share Plus        | Social Sharing       |
| URL Launcher      | Link Handling        |
| Google Fonts      | Custom Typography    |

## Group Members

| No. | Name               | ID        | Role                                    |
| --- | ------------------ | --------- | --------------------------------------- |
| 1   | [Edlawit Kinfe]    | [0350/15] | Lead Developer                          |
| 2   | [Eyerusalem Sahle] | [0389/15] | UI/UX Designer                          |
| 3   | [Nejimiya Abdi]    | [0858/15] | portfolio creation and management       |
| 4   | [Mikeyas Nega]     | [0742/15] | analytics dashboard and API integration |
| 5   | [Abiy Biniyam]     | [0074/15] | QR sharing and documentation            |

## Video Presentation

Watch our complete project presentation on Loom:
https://www.loom.com/share/78909041b4ec439ba967a18d69ce6e2c

## Installation Instructions

### Prerequisites

- Flutter SDK (3.0 or higher)
- Android Studio / VS Code with Flutter extensions
- Android device (API 21+) or emulator
- Internet connection for API features

### Steps to Run

1. **Clone the repository**

```bash
git clone https://github.com/edlawitKd/portify-group-project
cd portify
#```
