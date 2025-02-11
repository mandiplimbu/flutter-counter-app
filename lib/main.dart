import 'package:flutter/material.dart';

void main() {
  runApp(Counter());
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

// the widget class
class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

// the state class
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _count = 0;
  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Center(
        child: Text("Button pressed: $_count times",
        style: TextStyle(fontSize: 18, 
        color: Colors.white)),

      ),
      backgroundColor: const Color.fromARGB(255, 90, 65, 156),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 90, 65, 156),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
               child: Text("$_count",
               style: TextStyle(fontSize: 50,
                           color: Colors.white
                         ),
                         ),                          
          ),

          SizedBox(height: 20),

        // Text("Button pressed: $_count times",
        // style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),  

          const SizedBox(height: 60),
          Text("Press here",
          style: TextStyle(
            color: Color.fromARGB(255, 90, 65, 156)
          ),),
          const SizedBox(height: 3),
          ElevatedButton(onPressed: _increment, 
          child: Text("INCREMENT", 
          style: TextStyle(fontSize: 20)),
          ),
          
        ],
      ),
    ),
    );
  }
}
