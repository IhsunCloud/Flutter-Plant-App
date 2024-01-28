import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:plant_shop/src/kernel/themes.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 22, left: 26, right: 26),
      height: 75,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 90,
            spreadRadius: 0.90,
            offset: const Offset(1, 10),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'جستجو ....',
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: const BorderSide(color: Colors.grey, width: 0.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: const BorderSide(color: Colors.grey, width: 0.0),
          ),
          hintStyle: GoogleFonts.vazirmatn(
            color: Colors.black,
            fontSize: 18,
          ),
          prefixIcon: const Icon(
            IconlyLight.search,
            color: kTeaGreen,
          ),
        ),
        style: GoogleFonts.vazirmatn(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
}
