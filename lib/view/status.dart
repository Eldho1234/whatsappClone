import 'package:flutter/material.dart';
import 'package:whatsappclone/constant/colorconst.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                foregroundColor: Colors.red,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: ColorConst.indicator,
                  child: Center(
                      child: Icon(
                    Icons.add,
                    size: 15,
                  )),
                ),
              )
            ],
          ),
          title: Text("My Status"),
          subtitle: Text("Tap to add status update"),
        ),
        Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.04,
            color: Color.fromARGB(255, 211, 210, 210),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 4),
              child: Text("Recent updates"),
            )),
      ],
    );
  }
}
