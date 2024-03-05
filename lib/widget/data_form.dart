import 'package:flutter/material.dart';

class DataForm extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const DataForm({super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(width: 0, style: BorderStyle.none),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 8),
        filled: true,
        fillColor: Color(0xFF2F2C44),
        hintText: hintText,
        hintStyle: TextStyle(
            color: Colors.white24, fontSize: 14, fontWeight: FontWeight.w400),
        prefixIcon: Icon(
          icon,
          size: 20,
        ),
        prefixIconColor: Colors.white24,
      ),
    );
  }
}
