import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_shop/src/kernel/themes.dart';

import 'package:plant_shop/src/presentation/widgets/appbar.dart';
import 'package:plant_shop/src/presentation/widgets/plant_card.dart';
import 'package:plant_shop/src/presentation/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              const MyAppBar(),
              const SearchWidget(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Transform.rotate(
                              angle: -math.pi / -2,
                              child: Text(
                                'گل آپارتمانی',
                                style: GoogleFonts.vazirmatn(
                                  fontSize: 18,
                                  color: kTeaGreen,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                            Transform.rotate(
                              angle: -math.pi / -2,
                              child: Text(
                                'گل تسلیت',
                                style: GoogleFonts.vazirmatn(fontSize: 18),
                              ),
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                            Transform.rotate(
                              angle: -math.pi / -2,
                              child: Text(
                                'گل لاکچری',
                                style: GoogleFonts.vazirmatn(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        const PlantCard(
                          image: 'assets/images/plant-7.png',
                          title: 'آگلونما',
                          price: '۲۵۰ هزار تومان',
                        ),
                        const PlantCard(
                          image: 'assets/images/plant-3.png',
                          title: 'سانسوریا',
                          price: '۲۵۰ هزار تومان',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  bottom: 24,
                ),
                child: Row(
                  children: [
                    Text(
                      'فروش ویژه',
                      style: GoogleFonts.vazirmatn(fontSize: 22),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/icons/menu.png',
                      width: 26,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 120,
                      height: 130,
                      child: Image.asset(
                        'assets/images/plant-2.png',
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 130,
                      child: Image.asset(
                        'assets/images/plant-4.png',
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 130,
                      child: Image.asset(
                        'assets/images/plant-1.png',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
