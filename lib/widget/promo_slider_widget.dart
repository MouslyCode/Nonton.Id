import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PromoSliderWidget extends StatelessWidget {
  PromoSliderWidget({super.key});
  CarouselController btnCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 163.0,
          autoPlay: true,
          scrollPhysics: BouncingScrollPhysics(),
          enlargeCenterPage: true,
          initialPage: 0,
          autoPlayCurve: Curves.fastOutSlowIn,
          viewportFraction: 0.7),
      carouselController: btnCarouselController,
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              // width: 265,
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFF867AD2), Color(0xFF494080)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  Text(
                    'Nonton Dimana Saja, Kapan Saja',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
