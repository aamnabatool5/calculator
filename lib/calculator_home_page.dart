import 'package:flutter/material.dart';

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({super.key});

  @override
  State<CalculatorHomePage> createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Calculator App'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    controller.text += '7';
                    print('You just print 7');
                  },
                  child: const Text('7')),
              ElevatedButton(
                  onPressed: () {
                    controller.text += '8';
                    print('You just print 8');
                  },
                  child: const Text('8')),
              ElevatedButton(
                  onPressed: () {
                    controller.text += '9';
                    print('You just print 9');
                  },
                  child: const Text('9')),
              ElevatedButton(
                  onPressed: () {
                    if (controller.text.isEmpty) {
                      controller.text += '0*';
                    } else {
                      controller.text += '*';
                    }
                    print('You just print x');
                  },
                  child: const Text('*')),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    controller.text += '4';
                    print('You just print 4');
                  },
                  child: const Text('4')),
              ElevatedButton(
                  onPressed: () {
                    controller.text += '5';
                    print('You just print 5');
                  },
                  child: const Text('5')),
              ElevatedButton(
                  onPressed: () {
                    controller.text += '6';
                    print('You just print 6');
                  },
                  child: const Text('6')),
              ElevatedButton(
                  onPressed: () {
                    controller.text += '-';
                    print('You just print -');
                  },
                  child: const Text('-')),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    controller.text += '1';
                    print('You just print 1');
                  },
                  child: const Text('1')),
              ElevatedButton(
                  onPressed: () {
                    controller.text += '2';
                    print('You just print 2');
                  },
                  child: const Text('2')),
              ElevatedButton(
                  onPressed: () {
                    controller.text += '3';
                    print('You just print 3');
                  },
                  child: const Text('3')),
              ElevatedButton(
                  onPressed: () {
                    controller.text += '+';
                    print('You just print +');
                  },
                  child: const Text('+')),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    controller.text += '/';
                    print('You just print %');
                  },
                  child: const Text('/')),
              ElevatedButton(
                  onPressed: () {
                    controller.text += '0';

                    print('You just print 0');
                  },
                  child: const Text('0')),
              ElevatedButton(
                  onPressed: () {
                    controller.text = '';

                    print('You just print C');
                  },
                  child: const Text('C')),
              ElevatedButton(
                  onPressed: () {
                    String operator = '';
                    double num1 = 0;
                    double num2 = 0;
                    double result = 0;

                    if (controller.text.contains('+')) {
                      operator = '+';
                    } else if (controller.text.contains('-')) {
                      operator = '-';
                    } else if (controller.text.contains('/')) {
                      operator = '/';
                    } else if (controller.text.contains('*')) {
                      operator = '*';
                    }

                    List<String> numbers = controller.text.split(operator);
                    num1 = double.parse(numbers[0]);
                    num2 = double.parse(numbers[1]);

                    if (operator == '+') {
                      result = num1 + num2;
                    } else if (operator == '-') {
                      result = num1 - num2;
                    } else if (operator == '*') {
                      result = num1 * num2;
                    } else if (operator == '/') {
                      result = num1 / num2;
                    }

                    controller.text = result.toString();
                    //controller.text = '=';
                    print('You just print =');
                  },
                  child: const Text('=')),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 230,
              child: IgnorePointer(
                ignoring: true,
                child: TextField(
                  controller: controller,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
