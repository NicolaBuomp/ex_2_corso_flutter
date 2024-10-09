import 'package:flutter/material.dart';

class CheckboxField extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;
  final String label;

  const CheckboxField({
    super.key,
    required this.value,
    required this.onChanged,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          checkColor: const Color(0xFF61A3F1), // Colore del segno di spunta
          activeColor: Colors.white, // Colore del bordo
          onChanged: onChanged, // Callback per aggiornare lo stato
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          side: WidgetStateBorderSide.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const BorderSide(
                color: Color(0xFF61A3F1), // Colore del bordo quando selezionata
              );
            } else {
              return const BorderSide(
                color: Colors.white, // Colore del bordo quando non selezionata
              );
            }
          }),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white), // Colore del testo
        ),
      ],
    );
  }
}
