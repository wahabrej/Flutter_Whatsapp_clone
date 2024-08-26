import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallWideget extends StatelessWidget {
  const CallWideget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          for (int i = 2; i < 6; i++)
            Container(
              margin: EdgeInsets.only(top: 13, right: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 3, color: Colors.grey)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'images/$i.jpg',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Abdul Karim",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.call_made,
                                color: Colors.green,
                                size: 17,
                              ),
                              Text(" (1) Today,1:40 am")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Icon(
                      Icons.call_sharp,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
          for (int i = 7; i < 14; i++)
            Container(
              margin: EdgeInsets.only(top: 13, right: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(width: 3, color: Colors.grey)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'images/$i.jpg',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Abdul Karim",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.call_sharp,
                                color: Colors.red,
                                size: 17,
                              ),
                              Text(" (1) Today,1:40 am")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Icon(
                      CupertinoIcons.videocam_fill,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    ));
  }
}
