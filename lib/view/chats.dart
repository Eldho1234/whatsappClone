import 'package:flutter/material.dart';
import 'package:whatsappclone/constant/costcard.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstCard(
      img: "assets/image/chad.jpg",
      text: "Giga Chad",
      subtitle: "Hey i am using Whatsapp",
      time: const Text("yesterday"),
    );
  }
}
