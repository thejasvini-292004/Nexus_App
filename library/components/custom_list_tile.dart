import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  CustomListTile({required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Color(0xff1B134F)),
      title: Text(text, style: TextStyle(color: Colors.indigo)),
      trailing: Icon(Icons.arrow_forward, color: Colors.indigo),
      onTap: onTap,
    );
  }
}