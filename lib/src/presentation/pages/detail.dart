import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:plant_shop/src/kernel/painless.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Column(
                      children: [
                        SummaryItem(title: 'ارتفاع', value: '۲۲ س'),
                        SummaryItem(title: 'نور', value: 'سایه'),
                        SummaryItem(title: 'کود', value: 'مایع'),
                        SummaryItem(title: 'امتیاز', value: '۴.۹'),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 186, 182, 182)
                                .withOpacity(0.1),
                            blurRadius: 20,
                            spreadRadius: 0.9,
                            offset: const Offset(1, 1),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        AppImages.plant7,
                        height: 500,
                        width: 300,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            height: 320,
            width: 430,
            child: Container(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    plants[0].title,
                    style: GoogleFonts.vazirmatn(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.teaGreen,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    plants[0].description,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.vazirmatn(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                        letterSpacing: 0.4,
                        wordSpacing: 0.3),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(280, 60),
                      backgroundColor: AppColors.teaGreenDark,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                      AppTexts.addToBasket,
                      style: GoogleFonts.vazirmatn(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
