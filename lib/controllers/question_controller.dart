import 'package:flutter/animation.dart';
import 'package:get/get.dart';

// ignore: deprecated_member_use
class QuestionController extends GetxController with SingleGetTickerProviderMixin {

  //Let's animated our progress bar

  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation=>this._animation;

  //called immediately after teh widget is allocated memory
@override
  void onInit(){
  //Our animation duration is 60 s
  //so our plan is to fill the progress bar within 60s
    _animationController=
        AnimationController(duration: Duration(seconds: 60),vsync: this);
    _animation=Tween<double>(begin: 0,end: 1).animate(_animationController)
    ..addListener(() {
      //update like setState
      update();
    });
    //start our animation
    _animationController.forward();
    super.onInit();
  }
}