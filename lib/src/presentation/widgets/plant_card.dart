import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_shop/src/kernel/painless.dart';

class PlantCard extends StatelessWidget {
  final String image, title, price;
  const PlantCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      width: 230,
      margin: const EdgeInsets.only(top: 30, left: 30, bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 205, 205, 205).withOpacity(0.2),
            blurRadius: 50,
            spreadRadius: 0.70,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            width: 250,
            height: 340,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: GoogleFonts.vazirmatn(
              color: AppColors.teaGreen,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            price,
            style: GoogleFonts.vazirmatn(
              color: AppColors.teaGreenDark,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
