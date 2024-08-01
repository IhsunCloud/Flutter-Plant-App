import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:plant_shop/src/kernel/constants/images.dart';

import 'package:plant_shop/src/kernel/painless.dart';
import 'package:plant_shop/src/presentation/widgets/appbar.dart';
import 'package:plant_shop/src/presentation/widgets/plant_card.dart';
import 'package:plant_shop/src/presentation/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                                color: AppColors.teaGreen,
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
                      PlantCard(
                        image: plants[0].image,
                        title: plants[0].title,
                        price: plants[0].price,
                      ),
                      PlantCard(
                        image: plants[1].image,
                        title: plants[1].title,
                        price: plants[1].price,
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
                    AppIcons.menu,
                    width: 26,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 120,
                    height: 130,
                    child: Image.asset(
                      AppImages.plant2,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 130,
                    child: Image.asset(
                      AppImages.plant4,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 130,
                    child: Image.asset(
                      AppImages.plant1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
