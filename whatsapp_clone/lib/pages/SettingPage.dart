import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text("Setting"),
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'images/5.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Salman Khan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Hey there, iam now whatsapp")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.key),
                ),
                title: Text(
                  "Account",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("Privacy,Security change number",
                    style: TextStyle(fontSize: 14)),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.message),
                ),
                title: Text(
                  "Chat",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("Chatting information and detail",
                    style: TextStyle(fontSize: 14)),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.notifications),
                ),
                title: Text(
                  "Notification",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("Mesage , group and call tone",
                    style: TextStyle(fontSize: 14)),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.circle_outlined),
                ),
                title: Text(
                  "Storage and Data",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("Network usage,auto-download",
                    style: TextStyle(fontSize: 14)),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.help_outline_outlined),
                ),
                title: Text(
                  "Help",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("Help center,contact us  for privacy",
                    style: TextStyle(fontSize: 14)),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Icon(Icons.people_alt),
                ),
                title: Text(
                  "Invite a Friend ",
                  style: TextStyle(fontSize: 17),
                ),
                subtitle: Text("People who added your contact",
                    style: TextStyle(fontSize: 14)),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        "from",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
