/*import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  Future<void> _launched;
  String phoneNumber = '';
  String _launchUrl = 'https://www.google.com';

  @override
  Future<void> _launchInApp(String url) async {
    await launch("https://github.com");
  }



  Future<void> _launchInApp5(String url) async {
    await launch("https://github.com/WosberbonDesu");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage:
                    AssetImage("images/"),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 250,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ],
                    ),
                  ),
                  child: NotificationListener<OverscrollIndicatorNotification>(
                    onNotification:
                        (OverscrollIndicatorNotification overscroll) {
                      overscroll.disallowGlow();
                      return;
                    },
                    child: SingleChildScrollView(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.all(15),

                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
        Divider(
          indent: 10,
          endIndent: 10,
          thickness: 4,
        ),
        ListTile(
          onTap: () {
            _launchInApp(_launchUrl);
          },
          leading: Icon(
            SocialMediaIcons.github_circled,
          ),

        ),
        Divider(
          indent: 10,
          endIndent: 10,
          thickness: 4,
        ),
        ListTile(
          onTap: () {
            _launchInApp2(_launchUrl);
          },
          leading: Icon(
            SocialMediaIcons.github_circled,
            color: Colors.white,
          ),

        ),
        ListTile(
          onTap: () {
            _launchInApp3(_launchUrl);
          },
          leading: Icon(
            SocialMediaIcons.github_circled,
          ),

        ),
        ListTile(
          onTap: () {
            _launchInApp4(_launchUrl);
          },
          leading: Icon(SocialMediaIcons.github_circled),

        ),
        ListTile(
          onTap: () {
            _launchInApp5(_launchUrl);
          },
          leading: Icon(),

        ),
        Divider(
          indent: 10,
          endIndent: 10,
          thickness: 4,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "No dream is ever just a dream."
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}

 */