import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final String label;
  final Icon icon;

  const InputField({
    super.key,
    required this.hintText,
    required this.label,
    this.isPassword = false,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            prefixIcon: icon,
            prefixIconColor: Colors.white,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white70),
            filled: true,
            fillColor: Colors.white24,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          ),
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
