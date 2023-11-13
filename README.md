## Getting Started

To run my project, you have to open terminal and type 'flutter run' and run it

In the body using the `Column` widget both 1. `MessageWidget` StatelessWidget and 2. `CounterStatefulWidget` StatefulWidget are called. This arrangement enables the seamless integration of message display, facilitated by the `MessageWidget`, and dynamic counter functionality provided by the CounterStatefulWidget within the same user interface structure.

The `MessageWidget`, as the first widget in our project, accepts a text parameter of type String. It utilizes the Text widget to display the provided text with a customized style. This approach allows for dynamic content presentation within the widget, enhancing flexibility and visual appeal.

The `CounterStatefulWidget` is a special widget that keeps track of a number called the counter. When you press the button, it adds 1 to the counter and updates the display. This is done using a function called `_incrementCounter`. The `setState` function is responsible for refreshing everything, making sure the new counter value is shown.

Additionally, inside the `CounterStatefulWidget`, there's another widget called `ThirdDeep`. Every time you press the button, it also updates with the latest counter value. This helps to show different parts of the app changing together when you interact with it.# HW2_Nursultan
