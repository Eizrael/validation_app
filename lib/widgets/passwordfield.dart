import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final String hintText;
  final Color fillColor;
  final Icon? beforeicon; // Made nullable

  const PasswordField({
    Key? key,
    required this.label,
    required this.controller,
    required this.hintText,
    this.fillColor = const Color(0xFFF5F5F5), // Default fill color
    this.beforeicon, // Optional prefix icon
  }) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true; // Initially hide the password

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label Text
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            widget.label,
            style: const TextStyle(
              color: Colors.red,
              fontFamily: 'Poppins',
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 8),

        // Password Input Field
        SizedBox(
          height: 50,
          width: double.infinity, // Make it adapt to the parent width
          child: TextField(
            controller: widget.controller,
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintStyle: const TextStyle(
                color: Color(0xFFB0B0B0),
                fontFamily: "Poppins",
                fontSize: 13,
              ),
              hintText: widget.hintText,
              filled: true,
              fillColor: widget.fillColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              prefixIcon: widget.beforeicon != null ? widget.beforeicon : null, // Handle nullable icon
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: const Color(0xFFB0B0B0),
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText; // Toggle password visibility
                  });
                },
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