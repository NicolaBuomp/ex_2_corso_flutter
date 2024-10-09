import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  // final String imagePath;
  final VoidCallback onPressed;

  const SocialMediaIcon({
    super.key,
    // required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(66, 160, 160, 160),
              blurRadius: 4.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        // child: ClipOval(
        //   child: Image.asset(
        //     imagePath,
        //     fit: BoxFit.cover,
        //   ),
        // ),
      ),
    );
  }
}
