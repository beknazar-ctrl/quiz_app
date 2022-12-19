import 'package:flutter/material.dart';
import 'package:quiz_app/quiz/component/body.dart';


class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Skip',
                style: TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.w600,fontSize: 18.0),),
          ),
        ],
      ),
      body: Body(),
    );
  }
}


