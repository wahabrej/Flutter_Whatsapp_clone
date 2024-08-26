import 'package:flutter/material.dart';
import 'package:nike_shop_app/pages/chatpage.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Column(
        children: [
          for (int i = 1; i < 14; i++)
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (contex) => chatpage()));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'images/$i.jpg',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Programmer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Hi, Programmer How are you")
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            "12;40",
                            style: TextStyle(color: Colors.green),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 27,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color(0xFF0FCE5E),
                                borderRadius: BorderRadius.circular(20)),
                            child: Text("2"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
