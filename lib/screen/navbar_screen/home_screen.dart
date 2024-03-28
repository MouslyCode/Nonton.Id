import 'package:carousel_slider/carousel_slider.dart';
import 'package:edspert/widget/promo_slider_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/walter_profile.jpg',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(padding: EdgeInsets.symmetric()),
                      SvgPicture.asset('assets/images/location.svg'),
                      Text(
                        'Alberqueuqee',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Icon(
                        Iconsax.notification,
                        color: Colors.white,
                        size: 23,
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                            width: 9,
                            height: 9,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4.5),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            PromoSliderWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sedang Tayang',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Lihat Semua',
                  style: TextStyle(fontSize: 10, color: Colors.white60),
                ),
                Icon(
                  Iconsax.arrow_right_3,
                  size: 10,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
