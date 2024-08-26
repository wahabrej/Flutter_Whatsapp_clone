import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatpage extends StatelessWidget {
  const chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(top: 10, left: 5),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          leadingWidth: 20,
          title: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    'images/4.jpg',
                    height: 30,
                    width: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Programmer",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Online",
                          style: TextStyle(color: Colors.white, fontSize: 9)),
                    ],
                  ),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 10, right: 30),
              child: Icon(
                CupertinoIcons.videocam_fill,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10),
              child: Icon(
                Icons.call_sharp,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 10),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 252, 250, 150),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                  "Message and call are End-to-end encrypted  text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may "),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text("Hi, Developer How are you"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
