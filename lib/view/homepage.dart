import 'package:flutter/material.dart';
import 'package:whatsappclone/community.dart';
import 'package:whatsappclone/constant/colorconst.dart';
import 'package:whatsappclone/view/calls.dart';
import 'package:whatsappclone/view/chats.dart';
import 'package:whatsappclone/view/status.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: Center(child: Text("WhatsApp")),
          leadingWidth: 100,
          actions: [Icon(Icons.search), Icon(Icons.more_vert)],
          backgroundColor: ColorConst.green,
          bottom: TabBar(
              indicatorColor: ColorConst.indicator,
              indicatorWeight: 5,
              tabs: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  child: Tab(
                    icon: Icon(
                      Icons.people,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Tab(text: "Chats")),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Tab(text: "Status")),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Tab(text: "Call"))
              ]),
        ),
        body: TabBarView(children: [Community(), Chats(), Status(), Calls()]),
      ),
    );
  }
}
