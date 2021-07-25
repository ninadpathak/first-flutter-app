import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// There's also a shorthand for the Main() function
// void main() {
//   runApp(FirstApp());
// }

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstAppState();
  }
}

class _FirstAppState extends State<FirstApp> {
  var _idx = 0;
  void _buttonPressed() {
    setState(() {
      _idx += 1;
      if (_idx > 2) {
        _idx = 0;
      }
    });
  }

  // Adding a decorator override. It works without this as well. Only helps clarify the code for other devs
  @override
  // We have to override the build Widget method from the StatelessWidget class to create our app
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is your name?',
        'answers': ['Ninad', 'Preet', 'Mohit']
      },
      {
        'questionText': 'What is your age?',
        'answers': ['10+', '20+', '30+']
      },
      {
        'questionText': 'What is your birth year?',
        'answers': ['1990+', '1994+', '2000+']
      }
    ];
    //To build the foundation, MaterialApp() method is returned with a named argument
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
          backgroundColor: Colors.deepPurple.shade500,
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_idx]['questionText'] as String),
            ...(questions[_idx]['answers'] as List<String>).map((answer) {
              return Answer(_buttonPressed, answer);
            }).toList(),
            // Answer(_buttonPressed),
            // Answer(_buttonPressed),
            // Answer(_buttonPressed),
          ],
        ),
      ),
    );
  }
}
