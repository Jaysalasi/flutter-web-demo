import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FirstCarousel extends StatefulWidget {
  const FirstCarousel({super.key});

  @override
  State<FirstCarousel> createState() => _FirstCarouselState();
}

class _FirstCarouselState extends State<FirstCarousel> {
  final String inagePath = 'assets/images';

  final CarouselController _controller = CarouselController();

  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  final List _isSelected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  int _current = 0;

  final List<String> images = [
    'assets/images/asia.jpg',
    'assets/images/africa.jpg',
    'assets/images/europe.jpg',
    'assets/images/south_america.jpg',
    'assets/images/australia.jpg',
    'assets/images/antarctica.jpg',
  ];

  final List<String> places = [
    'ASIA',
    'AFRICA',
    'EUROPE',
    'SOUTH AMERICA',
    'AUSTRALIA',
    'ANTARCTICA',
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map((e) => ClipRRect(
              borderRadius: BorderRadius.circular(
                8.0,
              ),
              child: Image.asset(
                e,
                fit: BoxFit.cover,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);
    return Stack(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
            enlargeCenterPage: true,
            aspectRatio: 18 / 8,
            autoPlay: true, pauseAutoPlayOnTouch: true,
            // autoPlayAnimationDuration: const Duration(milliseconds: 5000),
            onPageChanged: (index, reason) {
              setState(
                () {
                  _current = index;
                  for (int i = 0; i < imageSliders.length; i++) {
                    if (i == index) {
                      _isSelected[i] = true;
                    } else {
                      _isSelected[i] = false;
                    }
                  }
                },
              );
            },
          ),
          carouselController: _controller,
        ),
        AspectRatio(
          aspectRatio: 18 / 8,
          child: Center(
            child: Text(
              places[_current],
              style: TextStyle(
                fontSize: screenSize.width / 25,
                letterSpacing: 8,
                fontFamily: 'Electrolize',
                color: Colors.white,
              ),
            ),
          ),
        ),
        screenSize.width < 800
            ? Container()
            : AspectRatio(
                aspectRatio: 18 / 8,
                child: Center(
                  heightFactor: 1,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width / 8,
                      ),
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: screenSize.width / 50,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              for (int i = 0; i < places.length; i++)
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      onHover: (value) {
                                        setState(() {
                                          value
                                              ? _isHovering[i] = true
                                              : _isHovering[i] = false;
                                        });
                                      },
                                      onTap: () {
                                        _controller.animateToPage(i);
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: screenSize.height / 80,
                                          bottom: screenSize.height / 90,
                                        ),
                                        child: Text(
                                          places[i],
                                          style: TextStyle(
                                            fontFamily: 'Electrolize',
                                            color: _isHovering[i]
                                                ? Colors.blueGrey[900]
                                                : Colors.blueGrey,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      maintainSize: true,
                                      maintainAnimation: true,
                                      maintainState: true,
                                      visible: _isSelected[i],
                                      child: AnimatedOpacity(
                                        opacity: _isSelected[i] ? 1 : 0,
                                        duration: const Duration(
                                          milliseconds: 400,
                                        ),
                                        child: Container(
                                          height: 5,
                                          decoration: const BoxDecoration(
                                            color: Colors.blueGrey,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                10,
                                              ),
                                            ),
                                          ),
                                          width: screenSize.width / 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
