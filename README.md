# Simple Budgeting/Expense Tracking App

Welcome to the Simple Budgeting/Expense Tracking App! This Flutter project helps you manage your finances by tracking your expenses and budgeting efficiently. The project utilizes the BLoC (Business Logic Component) state management pattern to ensure a scalable and maintainable codebase.

## Features

- **Expense Tracking**: Easily add, view, and delete expenses.
- **Budget Management**: Set budgets and track your spending against them.
- **Persistent Storage**: Save your data using SharedPreferences.
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

## Getting Started

### Prerequisites

Ensure you have Flutter installed on your machine. You can download it from [flutter.dev](https://flutter.dev/).

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/Mohamed-Mourad/Budget-Tracker.git
   
2. Navigate to the project directory:
3. Install the dependencies:
   ```flutter pub get
4. Run the app:
   ```flutter run
   
## Project Structure

Here's a brief overview of the project structure:
lib/
├── blocs/               # Contains BLoC files
├── data/                # Contains data layer of the app
├── models/              # Contains data models
├── repositories/        # Contains repository files
├── screens/             # Contains UI screens
├── widgets/             # Contains reusable widgets
├── main.dart            # Entry point of the app

