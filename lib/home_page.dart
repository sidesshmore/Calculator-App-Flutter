import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Output: $sum',
              style: TextStyle(
                fontSize: 25,
                color: Colors.deepPurple[500],
                // backgroundColor: Colors.amber,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'Enter Number 1'),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'Enter Number 2'),
              controller: t2,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: doAddition,
                  child: const Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: doSub,
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: doDiv,
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  child: const Text('/'),
                ),
                ElevatedButton(
                  onPressed: doMul,
                  child: const Icon(Icons.close),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
