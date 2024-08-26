import 'package:flutter/material.dart';

class StatusWediget extends StatelessWidget {
  const StatusWediget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
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
                        'images/1.jpg',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Status",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Today, 12:30 am")
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Icon(
                      Icons.more_vert,
                      color: Color(0xFF075E55),
                    ),
                  )
                ],
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recent Update",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
            Divider(),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  for (int i = 3; i < 6; i++)
                    Container(
                      margin: EdgeInsets.only(top: 13),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(1.5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border:
                                    Border.all(width: 3, color: Colors.grey)),
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
                                  "ALex",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text("Today,1:40 am")
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                ],
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Viewed Update",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  for (int i = 10; i < 14; i++)
                    Container(
                      margin: EdgeInsets.only(top: 13),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(1.5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border:
                                    Border.all(width: 3, color: Colors.grey)),
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
                                  "ALex",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text("Today,1:40 am")
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
