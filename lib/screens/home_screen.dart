import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int luckyNumber = 4;
  void updateNumber() {
    setState(() {
      luckyNumber = Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("LOTTERY APP"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Your Lucky Number is 4",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: luckyNumber == 4
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.done_all,
                          size: 34,
                          color: Colors.purple,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          "Congratulations Your Lucky number is $luckyNumber ",
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          size: 34,
                          color: Colors.red,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          "Your Lucky number is $luckyNumber try again",
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: updateNumber,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
