import 'package:flutter/material.dart';
import 'package:whatsappclone/constant/colorconst.dart';

class ConstCardtw extends StatelessWidget {
  final String img;
  final String text;
  final String subtitle;
  ConstCardtw({
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
          subtitle: Row(
            children: [
              Icon(Icons.arrow_forward),
              Text(subtitle),
            ],
          ),
          trailing: Icon(
            Icons.phone,
            color: ColorConst.indicator,
          ),
        ),
        Divider(
          thickness: 0.4,
          color: Colors.grey,
        )
      ],
    );
  }
}
