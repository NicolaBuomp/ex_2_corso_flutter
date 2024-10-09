import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;
  final bool networkImage;

  const SocialMediaIcon({
    super.key,
    required this.imagePath,
    required this.onPressed,
    this.networkImage = false,
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
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: ClipOval(
            child: networkImage
                ? Image.network(
                    imagePath,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
      ),
    );
  }
}
