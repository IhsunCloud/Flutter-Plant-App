import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_shop/src/kernel/painless.dart';

import 'package:plant_shop/src/presentation/pages/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.background),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  AppTexts.appTitle,
                  style: GoogleFonts.yesteryear(
                    fontSize: 52,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Text(
                  'ورود | ثبت نام',
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.vazirmatn(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: 330,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white10.withAlpha(80)),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withAlpha(100),
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration.collapsed(
                      hintText: 'شماره موبایل',
                      hintTextDirection: TextDirection.rtl,
                      hintStyle: GoogleFonts.vazirmatn(
                          color:
                              Theme.of(context).colorScheme.onSurfaceVariant),
                      border: InputBorder.none,
                    ),
                    maxLines: 1,
                    controller: TextEditingController(),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 46,
                width: 330,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white10.withAlpha(80)),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimaryContainer
                          .withAlpha(100),
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                  color: Colors.white.withOpacity(0.2),
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage())),
                  style: TextButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.onPrimaryContainer,
                    foregroundColor: Theme.of(context).colorScheme.onSecondary,
                  ),
                  child: Text(
                    'دریافت کد تایید',
                    style: GoogleFonts.vazirmatn(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
