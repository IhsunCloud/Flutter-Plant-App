import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:plant_shop/src/kernel/themes.dart';

class SummaryItem extends StatelessWidget {
  final String title, value;
  const SummaryItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0, bottom: 20),
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.vazirmatn(fontSize: 14, color: kLapisLazuoli),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: 70,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                shape: BoxShape.rectangle,
                border: Border.all(width: 0.55, color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(16)),
            child: Center(
              child: Text(
                value,
                style: GoogleFonts.vazirmatn(
                  fontSize: 14,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
