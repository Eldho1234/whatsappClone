import 'package:flutter/material.dart';
import 'package:whatsappclone/constant/colorconst.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.101,
              child: ListTile(
                leading: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.150,
                      height: MediaQuery.of(context).size.height * 0.120,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 189, 176, 176),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.groups_3,
                        size: 35,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: ColorConst.indicator,
                        child: Center(
                            child: Icon(
                          Icons.add,
                          size: 15,
                        )),
                      ),
                    ),
                  ],
                ),
                title: Text("New Community"),
              ))
        ],
      ),
    );
  }
}
