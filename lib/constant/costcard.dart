import 'package:flutter/material.dart';

class ConstCard extends StatelessWidget {
  final String img;
  final String text;
  final String subtitle;
  final Widget? time;
  ConstCard({
    this.time,
    required this.img,
    required this.text,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(img),
          ),
          title: Text(text),
          subtitle: Text(subtitle),
          trailing: time,
        ),
        Divider(
            thickness: 0.4, color: const Color.fromARGB(255, 207, 203, 203)),
      ],
    );
  }
}
