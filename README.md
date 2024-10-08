# Simple Budgeting/Expense Tracking App

Welcome to the Simple Budgeting/Expense Tracking App! This Flutter project helps you manage your finances by tracking your expenses and budgeting efficiently. The project utilizes the BLoC (Business Logic Component) state management pattern to ensure a scalable and maintainable codebase.

## Features

- **Expense Tracking**: Easily add, view, and delete expenses.
- **Budget Management**: Set budgets and track your spending against them.
- **Persistent Storage**: Save your data using SQFLite.
- **App Theme**: Change from light or dark modes using shared preferences
- **Localization**: Supports multiple languages with the intl package.
- **Smooth UI**: Enhanced UI components using the figma_squircle package.

## Dependencies

The following packages are used in this project:

- **bloc**: ^8.1.4
- **flutter_bloc**: ^8.1.6
- **uuid**: ^4.4.2
- **equatable**: ^2.0.5
- **rxdart**: ^0.28.0
- **shared_preferences**: ^2.2.3
- **intl**: ^0.19.0
- **figma_squircle**: ^0.5.3
- **sqflite**: ^2.3.3+1
- **path**: ^1.9.0
- **smooth_page_indicator**: ^1.2.0+3

## Getting Started

### Prerequisites

Ensure you have Flutter installed on your machine. You can download it from [flutter.dev](https://flutter.dev/).

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/Mohamed-Mourad/Budget-Tracker.git

2. Navigate to the project directory:
   ```sh
   cd {path where you cloned the project}
3. Install the dependencies:
   ```sh
   flutter pub get

4. Run the app:
   ```sh
   flutter run

## Project Structure

Here iss a brief overview of the project structure:  
lib/  
├── blocs/               # Contains BLoC files  
├── data/                # Contains data layer of the app  
├── models/              # Contains data models  
├── repositories/        # Contains repository files  
├── screens/             # Contains UI screens  
├── widgets/             # Contains reusable widgets  
├── methods/             # Contains reusable methods  
├── main.dart            # Entry point of the app

## ScreenShots

![App Screenshot](assets/screenshots/ob-1.jpg)
![App Screenshot](assets/screenshots/ob-2.jpg)
![App Screenshot](assets/screenshots/1.jpg)
![App Screenshot](assets/screenshots/2.jpg)
![App Screenshot](assets/screenshots/3.jpg)
![App Screenshot](assets/screenshots/4.jpg)
![App Screenshot](assets/screenshots/pink-1.jpg)
![App Screenshot](assets/screenshots/5.jpg)
![App Screenshot](assets/screenshots/6.jpg)
![App Screenshot](assets/screenshots/7.jpg)
![App Screenshot](assets/screenshots/8.jpg)