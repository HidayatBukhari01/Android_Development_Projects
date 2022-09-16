import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random randomNumber = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Lucky Draw'),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Your Number! is $x',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: x == 3
                    ? Colors.blue.withOpacity(0.3)
                    : Colors.teal.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
                // image: const DecorationImage(
                //     fit: BoxFit.cover,
                //     image: AssetImage('assets/mountain.jpg')),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: x == 3
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Congratulations!!!!\n Your number was $x',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Better Luck Next Time. Your number was $x\n Try Again!',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
              ),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            x = randomNumber.nextInt(4),
            setState(() {}),
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
