import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroSliderExample extends StatefulWidget {
  @override
  _IntroSliderExampleState createState() => _IntroSliderExampleState();
}

class _IntroSliderExampleState extends State<IntroSliderExample> {
  List<Slide> slides = [];
  bool _isDone = false;

  @override
  void initState() {
    super.initState();
    slides.add(ReusableSlide.name(
        'images/GinPhoto.png',
        'Gin is my favorite drink',
        'Slide to see what is the secret of my gin cocktail.'));
    slides.add(ReusableSlide.name(
        'images/Bombay.png', 'Bombay Sapphire', '1 liter. Maybe 2 liter...'));
    slides.add(ReusableSlide.name(
        'images/Lemon.png', 'Lemon', '3 lemons for refreshing taste'));
    slides.add(
        ReusableSlide.name('images/Strawberry.png', 'Strawberries', '1/2 kg'));
    slides.add(ReusableSlide.name('images/Sprite.png', 'Sprite',
        'In all other cases you will use Tonic water, but with strawberries Sprite is what you need. 2 liters. '));
    slides.add(ReusableSlide.name('images/Mint.png', 'Mint',
        'Before you add mint, wash it and squeeze it with the palm of your hand like Zhu said.'));
    slides.add(ReusableSlide.name('images/Ice.png', 'Ice', 'Never enough!'));
  }

  @override
  Widget build(BuildContext context) {
    return _isDone
        ? Center(
            child: TextLiquidFill(
                text: 'Your Gin Cocktail Is Done!',
                boxHeight: 100,
                waveColor: Colors.blueGrey[800],
                loadDuration: Duration(seconds: 3),
                waveDuration: Duration(seconds: 2),
                textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
                boxBackgroundColor: Colors.lightGreenAccent[100]),
          )
        : IntroSlider(
            borderRadiusPrevBtn: 20,
            slides: this.slides,
            isShowNextBtn: true,
            isShowPrevBtn: true,
            isShowSkipBtn: false,
            onDonePress: () {
              setState(() {
                _isDone = true;
              });
            },
          );
  }
}

class ReusableSlide extends Slide {
  ReusableSlide.name(String pathImage, String title, String description)
      : super(
          styleDescription: TextStyle(
              color: Colors.blueGrey[800],
              fontSize: 25,
              fontStyle: FontStyle.italic),
          styleTitle: TextStyle(
              color: Colors.blueGrey[800],
              fontSize: 30,
              fontWeight: FontWeight.bold),
          title: title,
          colorBegin: Colors.yellowAccent[100],
          colorEnd: Colors.lightGreen,
          pathImage: pathImage,
          description: description,
        );
}
