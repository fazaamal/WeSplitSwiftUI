# WeSplit App

## Overview
WeSplit is a simple iOS app built using SwiftUI. It's designed to help users split bills, calculate tips, and determine the cost per person when dining out or sharing expenses. This app is my first SwiftUI project, showcasing various SwiftUI concepts and features.

## Features
- Calculate the total bill including tax, service charge, and tip
- Split the bill among a specified number of people
- Adjust tip percentage
- Set service charge percentage
- Include tax percentage
- Display the total bill and cost per person

## Key Components
1. **Bill Amount Input**: Users can enter the total bill amount.
2. **People Selector**: A picker to select the number of people sharing the bill (2-99).
3. **Tip Calculator**: A segmented control to select tip percentage (0%, 10%, 20%, or 30%).
4. **Service Charge**: Another segmented control for service charge (0%, 5%, 10%, or 15%).
5. **Tax Input**: A navigation link to a separate view for inputting tax percentage.
6. **Results Display**: Sections showing the total bill and the amount each person should pay.

## Technical Highlights
- Use of `@State` properties for managing the app's state
- Implementation of computed properties for calculations
- Usage of `Form` and various SwiftUI components like `TextField`, `Picker`, and `NavigationStack`
- Custom styling with `pickerStyle`
- Keyboard type specification for decimal input
- Currency formatting based on the user's locale
- Focus state management for the text field

## Learning Outcomes
This project helped me understand:
- Basic SwiftUI structure and syntax
- State management in SwiftUI
- Creating and styling forms
- Working with user input
- Implementing navigation
- Performing calculations based on user input

## Future Improvements
- Add ability to save and load previous bill splits
- Implement more advanced splitting options (e.g., unequal splits)
- Enhance UI with custom themes or animations

This WeSplit app serves as a great starting point for learning SwiftUI and iOS development, covering many fundamental concepts in a practical, real-world application.
