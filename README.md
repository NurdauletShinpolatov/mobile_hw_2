## Getting Started

To run my project, you have to open terminal and type 'flutter run' and run it

In the body using the `Column` widget both 1. `MessageWidget` StatelessWidget and 2. `CounterStatefulWidget` StatefulWidget are called. This arrangement enables the seamless integration of message display, facilitated by the `MessageWidget`, and dynamic counter functionality provided by the CounterStatefulWidget within the same user interface structure.

The `MessageWidget`, as the first widget in our project, accepts a text parameter of type String. It utilizes the Text widget to display the provided text with a customized style. This approach allows for dynamic content presentation within the widget, enhancing flexibility and visual appeal.

The widget `MyCounterWidget` is a StatefulWidget that has a counter value and a button. Every time the button is pressed, the `_incrementCounter` function is triggered, incrementing the counter value and calling the `setState` function. The `setState` function rebuilds all the widgets inside the `MyCounterWidget`. Within the `MyCounterWidget`, I also call the 3. `MyThirdContainer` StatelessWidget each time the button is pressed, passing the incremented counter value as a parameter to it and rebuilding it.# mobile_hw_2
