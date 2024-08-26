import 'package:flutter/material.dart';
import 'package:nike_shop_app/Widget/CallWideget.dart';
import 'package:nike_shop_app/Widget/ChatWidget.dart';
import 'package:nike_shop_app/Widget/StatusWediget.dart';
import 'package:nike_shop_app/pages/SettingPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "WhatsApp",
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(right: 15, top: 15),
                child: Icon(
                  Icons.search,
                  size: 18,
                  color: Colors.white,
                ),
              ),
              PopupMenuButton<int>(
                onSelected: (index) {
                  if (index == 5) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingPage(),
                      ),
                    );
                  }
                },
                padding: const EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                iconColor: Colors.white,
                itemBuilder: (context) => [
                  const PopupMenuItem<int>(
                    value: 1,
                    child: Text(
                      "New Group",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const PopupMenuItem<int>(
                    value: 2,
                    child: Text(
                      "New Broadcast",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const PopupMenuItem<int>(
                    value: 3,
                    child: Text(
                      "WhatsApp Web",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const PopupMenuItem<int>(
                    value: 4,
                    child: Text(
                      "Starred Messages",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const PopupMenuItem<int>(
                    value: 5,
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: const Color(0xFF075E55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: const TextStyle(
                  fontSize: 16,
                ),
                tabs: [
                  const SizedBox(
                    width: 50,
                    child: Tab(
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    child: Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Chats",
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            height: 20,
                            width: 25,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "10",
                              style: TextStyle(
                                color: Color(0xFF075E55),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                    child: Tab(
                      child: Text(
                        "STATUS",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                    child: Tab(
                      child: Text(
                        "CALLS",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  Center(
                    child: Text("Camera Page"),
                  ),
                  ChatWidget(),
                  StatusWediget(),
                  CallWideget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
