import 'package:flutter/material.dart';

import 'package:plant_shop/src/kernel/painless.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 70.0,
        left: 30,
        right: 28,
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            AppIcons.menuRepo,
            color: AppColors.teaGreen,
            width: 40,
            height: 50,
          ),
          const Spacer(),
          const CircleAvatar(
            foregroundImage: AssetImage(
              AppImages.profile,
            ),
          ),
        ],
      ),
    );
  }
}
