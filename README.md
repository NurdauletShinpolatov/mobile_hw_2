# widgets_practice

## Getting Started

Enter the project from terminal and run 'flutter run' command.

I will call my created widgets, namely 1. `MyStatelessWidget` StatelessWidget and 2. `MyCounterWidget` StatefulWidget, using the `Column` widget in the body.

The widget 1. `MyStatelessWidget` takes a String type text as a parameter and displays it using the Text widget with a specified style.

The widget `MyCounterWidget` is a StatefulWidget that has a counter value and a button. Every time the button is pressed, the `_incrementCounter` function is triggered, incrementing the counter value and calling the `setState` function. The `setState` function rebuilds all the widgets inside the `MyCounterWidget`. Within the `MyCounterWidget`, I also call the 3. `MyThirdContainer` StatelessWidget each time the button is pressed, passing the incremented counter value as a parameter to it and rebuilding it.# mobile_hw_2
