import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final IconData icon;
  const MyListTile({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        onTap: onTap,
        title: Text(text, style: TextStyle(color: Colors.black, fontSize: 20)),
      ),
    );
  }
}
