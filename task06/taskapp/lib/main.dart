import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Intro(),
    );
  }
}

class Intro extends StatelessWidget {
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => WelcomeScreen()),
    );
  }
  final pageDecoration = PageDecoration(
    titleTextStyle:
      PageDecoration().titleTextStyle.copyWith(color: Colors.black),
    bodyTextStyle:
      PageDecoration().bodyTextStyle.copyWith(color: Colors.black));
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: 'YOGA SURE',
        image: Image.asset("assets/images/page1.png"),
        body: 'Welcome to the yoga world',
        decoration: pageDecoration),

      PageViewModel(
          title: 'Healthy freaks Exercises',
          image: Image.asset("assets/images/page2.png"),
          body: 'Letting go is the hardest asana',
          decoration: pageDecoration),
      PageViewModel(
          title: 'Cycling',
          image: Image.asset("assets/images/page3.png"),
          body: 'You can not always control what goes on on the outside. '
              'You can control whats on the inside',
          decoration: pageDecoration),
      PageViewModel(
          title: 'Meditation',
          image: Image.asset("assets/images/page4.png"),
          body: 'Longest journey of any person is the journey inward',
          decoration: pageDecoration),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Color(0xFFebe0d8),
        pages: getPages(),
        showNextButton: true,
        showSkipButton: true,
        done: Text(
          "Get Started",
          style: TextStyle(color: Colors.black),
        ),
        onDone: () => _onIntroEnd(context),
        next: const Text("next"),
        skip: const Text("skip"),
        dotsDecorator: getDotDecoration(),


      ),
    );
  }
  DotsDecorator getDotDecoration() => DotsDecorator(
    color: Color(0xFFBDBDBD),
    //activeColor: Colors.orange,
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
  );
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome')),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/welcome.png'),
            Text(
                "Harshith",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text("Student developer"),
          ],
        ),


      ),
    );
  }
}