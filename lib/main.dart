import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:widgets_practice/my_third_deep.dart';
>>>>>>> d88beec544449fa4c58da131eb3b3951c5b23e53

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
<<<<<<< HEAD
            'Widgets Practice Widget',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        body: const Column(
          children: [
            MyStatelessWidget(message: 'Hi Everybody!!!!'),
            SizedBox(
              height: 70,
            ),
            MyCounterWidget(),
=======
            'Widgets Practice',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MessageWidget(message: 'Nursulton!'),
            SizedBox(
              height: 70,
            ),
            CounterStatefulWidget(),
>>>>>>> d88beec544449fa4c58da131eb3b3951c5b23e53
          ],
        ),
      ),
    );
  }
}

<<<<<<< HEAD
class MyStatelessWidget extends StatelessWidget {
  final String message;

  const MyStatelessWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: const TextStyle(fontSize: 46, color: Colors.purple),
=======
class MessageWidget extends StatelessWidget {
  final String message;

  const MessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          'Hi My Name Is $message',
          style: const TextStyle(fontSize: 28),
        ),
>>>>>>> d88beec544449fa4c58da131eb3b3951c5b23e53
      ),
    );
  }
}

<<<<<<< HEAD
class MyCounterWidget extends StatefulWidget {
  const MyCounterWidget({super.key});

  @override
  State<MyCounterWidget> createState() => _MyCounterWidgetState();
}

class _MyCounterWidgetState extends State<MyCounterWidget> {
  int counter = 0;
  bool animateSize = false;
=======
class CounterStatefulWidget extends StatefulWidget {
  const CounterStatefulWidget({super.key});

  @override
  State<CounterStatefulWidget> createState() => _CounterStatefulWidgetState();
}

class _CounterStatefulWidgetState extends State<CounterStatefulWidget> {
  int counter = 0;
>>>>>>> d88beec544449fa4c58da131eb3b3951c5b23e53

  void _incrementCounter() {
    setState(() {
      counter++;
<<<<<<< HEAD
      animateSize = !animateSize;
=======
>>>>>>> d88beec544449fa4c58da131eb3b3951c5b23e53
    });
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 45,
          ),
          const Text(
            'My Counter Value',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 45,
          ),
          MyThirdContainer(
            counter: counter,
            animate: animateSize,
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton(onPressed: _incrementCounter, child: const Text('Count Me'))
        ],
      ),
      
    );
  }
}

class MyThirdContainer extends StatelessWidget {
  const MyThirdContainer({
    super.key,
    required this.counter,
    required this.animate,
  });

  final int counter;
  final bool animate;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      height: animate ? 60 : 45,
      width: animate ? 60 : 45,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(counter.toString(), style: const TextStyle(fontSize:32)),
      ),
=======
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 45,
        ),
        const Text(
          'Counter value',
          style: TextStyle(fontSize: 24, color: Colors.grey),
        ),
        const SizedBox(
          height: 12,
        ),
        ThirdDeep(
          counter: counter,
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: _incrementCounter,
            child: const Row(
              children: [
                Icon(Icons.add),
                SizedBox(
                  width: 4,
                ),
                Text('Counter'),
              ],
            ),
          ),
        )
      ],
>>>>>>> d88beec544449fa4c58da131eb3b3951c5b23e53
    );
  }
}
