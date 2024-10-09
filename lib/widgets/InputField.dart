import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          obscureText:
              isPassword, // Mostra gli asterischi se è un campo password
          keyboardType: isPassword
              ? TextInputType.text
              : TextInputType.emailAddress, // Controlla il tipo di tastiera
          inputFormatters: [
            FilteringTextInputFormatter.deny(RegExp(r'\s')), // Negare spazi
          ],
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
