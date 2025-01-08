import 'package:flutter/material.dart';
import 'package:kyubi/core/theme/app_pallete.dart';

class AuthGredientbutton extends StatelessWidget {
  final String buttonText;
  const AuthGredientbutton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(colors: [AppPallete.gradient1,AppPallete.gradient2,AppPallete.gradient3],begin: Alignment.topLeft,end: Alignment.bottomRight)
      ),
      
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: AppPallete.transparentColor,
            shadowColor: AppPallete.transparentColor,
            fixedSize: const Size(395, 55)),
        child: Text(
          buttonText,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: AppPallete.whiteColor),
        ),
      ),
    );
  }
}
