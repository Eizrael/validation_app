import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label; // Text for the label
  final String hintText; // Hint text for the TextField
  final TextEditingController? controller; // Controller for the TextField
  final Color fillColor; // Fill color for the TextField
  final Icon? beforeicon;
  
  const CustomTextField({
    Key? key,
    required this.label,
    this.hintText = '',
    this.controller,
    this.fillColor = const Color(0xFFF0F0F0), // Default fill color
    this.beforeicon,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.red,
              fontFamily: 'Poppins',
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 50,
          width: 300,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: beforeicon != null ? beforeicon : null,
              hintStyle: const TextStyle(
                color: Color(0xFFB0B0B0), // Non-nullable color
                fontFamily: "Poppins",
                fontSize: 13,
              ),
              hintText: hintText,
              filled: true,
              fillColor: fillColor, // Use the passed fillColor here
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
            style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}