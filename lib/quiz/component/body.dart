import 'package:flutter/material.dart';
import 'package:quiz_app/quiz/component/progress_bar.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset('assets/icons/foodcart-1904.svg', fit: BoxFit.fill),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ProgressBar(),
              ],
            ),
          ),
        )
      ],
    );
  }
}


