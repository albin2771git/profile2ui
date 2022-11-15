import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileUi extends StatelessWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/301958/pexels-photo-301958.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    minRadius: 50,
                    maxRadius: 75,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 60, right: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/facebook.svg',
                        width: 30,
                        height: 30,
                        color: Colors.blue,
                      ),
                      SvgPicture.asset(
                        'assets/svg/google.svg',
                        width: 30,
                        height: 30,
                        color: Colors.red,
                      ),
                      SvgPicture.asset(
                        'assets/svg/linkedin.svg',
                        width: 30,
                        height: 30,
                        color: Colors.blue,
                      ),
                      SvgPicture.asset(
                        'assets/svg/twitter.svg',
                        width: 30,
                        height: 30,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "chromicle",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                Text("@amFOSS"),
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 20, bottom: 20),
                  child: Text(
                    "Mobile App Developer And Enthusiastic",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 44, right: 44, top: 10, bottom: 20),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 60, left: 70, right: 70),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        ListTile(
                          tileColor: Colors.grey[200],
                          leading: Icon(
                            Icons.account_box_sharp,
                          ),
                          title: Text("Privacy"),
                          trailing: Icon(Icons.arrow_circle_right),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        ListTile(
                          tileColor: Colors.grey[200],
                          leading: Icon(
                            Icons.timer,
                          ),
                          title: Text("Purchase History"),
                          trailing: Icon(Icons.arrow_circle_right),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        ListTile(
                          tileColor: Colors.grey[200],
                          leading: Icon(
                            Icons.help_center,
                          ),
                          title: Text("Help & Support"),
                          trailing: Icon(Icons.arrow_circle_right),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        ListTile(
                          tileColor: Colors.grey[200],
                          leading: Icon(
                            Icons.settings,
                          ),
                          title: Text("Settings"),
                          trailing: Icon(Icons.arrow_circle_right),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        ListTile(
                          tileColor: Colors.grey[200],
                          leading: Icon(
                            Icons.add_card,
                          ),
                          title: Text("invite a friend"),
                          trailing: Icon(Icons.arrow_circle_right),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        ListTile(
                          tileColor: Colors.grey[200],
                          leading: Icon(
                            Icons.logout,
                          ),
                          title: Text("Sign Out"),
                          trailing: Icon(Icons.arrow_circle_right),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
