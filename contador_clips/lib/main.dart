import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const ClipCounter(),
    );
  }
}

class ClipCounter extends StatefulWidget {
  const ClipCounter({super.key});

  @override
  ClipCounterState createState() => ClipCounterState();
}

class ClipCounterState extends State<ClipCounter> {
  int clipCount = 0;

  void incrementClip() {
    setState(() {
      clipCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.blue, Colors.cyan],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                '¡Clips Épicos!',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Text(
                  '$clipCount',
                  style: const TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellowAccent,
                    shadows: [
                      Shadow(
                        blurRadius: 20.0,
                        color: Colors.black,
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: incrementClip,
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 10,
                  shadowColor: Colors.black,
                ),
                child: const Text(
                  'Incrementar Clip',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
