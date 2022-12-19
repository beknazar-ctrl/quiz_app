import 'package:flutter/material.dart';
import 'package:quiz_app/contants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebsafeSvg.asset("assets/icons/retrocowboysandacar.svg"),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2,),
                  Text(
                    "Let's Play Quiz",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text("Enter your information below"),
                  Spacer(),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue,
                        hintText: "Full name",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)))),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75),
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Let's Start Quiz",
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  Spacer(flex: 2,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
