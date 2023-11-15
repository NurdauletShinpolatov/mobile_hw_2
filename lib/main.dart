import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  final String message;

  const MyStatelessWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: const TextStyle(fontSize: 46, color: Colors.purple),
      ),
    );
  }
}

class MyCounterWidget extends StatefulWidget {
  const MyCounterWidget({super.key});

  @override
  State<MyCounterWidget> createState() => _MyCounterWidgetState();
}

class _MyCounterWidgetState extends State<MyCounterWidget> {
  int counter = 0;
  bool animateSize = false;

  void _incrementCounter() {
    setState(() {
      counter++;
      animateSize = !animateSize;
    });
  }

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
