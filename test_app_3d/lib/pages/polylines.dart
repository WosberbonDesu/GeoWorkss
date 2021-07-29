import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:like_button/like_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

void eeee() {
  runApp(WebViewLocal());
}

class WebViewLocal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'google.com',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WebViewController? webViewController;

  String filepath = 'images/map2.html';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF626262),
        body: SafeArea(
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            //https://www.google.com/maps/@39.7617531,30.5110982,11063m/data=!3m1!1e3
            initialUrl: "https://www.google.com/maps/@39.7617531,30.5110982,11063m/data=!3m1!1e3",
            onWebViewCreated: (controller) {
              webViewController = controller;
              print("::: onWebViewCreated");
            },
            onPageStarted: (text) {
              print("::: onPageStarted");
            },
            onPageFinished: (text) {
              print("::: onPageFinished");
            },
            onWebResourceError: (error) {
              print("::: onWebResourceError");
            },
            navigationDelegate: (NavigationRequest request) {
              if (!request.url.contains('google.com')) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        title: Text("Tarayıda aç?"),
                        //backgroundColor: Color(0xFFEDD23B),
                        actions: <Widget>[
                          ButtonBar(
                            children: <Widget>[
                              TextButton(
                                child: Text("Hayır"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              TextButton(
                                child: Text("Evet"),
                                onPressed: () async {
                                  Navigator.pop(context);
                                  if (await canLaunch(request.url)) {
                                    await launch(
                                      request.url,
                                      forceSafariVC: false,
                                      forceWebView: false,
                                      headers: <String, String>{
                                        'my_header_key': 'my_header_value'
                                      },
                                    );
                                  } else {
                                    throw 'Could not launch $request.url';
                                  }
                                },
                              )
                            ],
                          )
                        ],
                      );
                    });
                return NavigationDecision.prevent;
              }
              print('allowing navigation to $request');
              return NavigationDecision.navigate;
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: LikeButton(
            size: 40,
            bubblesColor: BubblesColor(
                dotPrimaryColor: Color(0xFFEDD23B),
                dotSecondaryColor: Color(0xFF626262)),
            onTap: (value) async {
              // js
              bool result = value;
              SharedPreferences sharedPreferences =
              await SharedPreferences.getInstance();
              List<String> favorites =
                  sharedPreferences.getStringList("favorites") ?? [];
              String? currentUrl = await webViewController?.currentUrl();

              if (!favorites.contains(currentUrl)) {
                favorites.add(currentUrl!);
                sharedPreferences.setStringList("favorites", favorites);
              }

              return !result;
            },
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 60,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.home,
                      color: Colors.deepOrange,
                    ),
                    label: Text(
                      "Anasayfa",
                      style: TextStyle(
                        color: Color(0xFF626262),
                      ),
                    ),
                    onPressed: () {
                      webViewController!.loadUrl("https://www.google.com");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: VerticalDivider(),
                ),
                Expanded(
                  child: TextButton.icon(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                    label: Text(
                      "Favoriler",
                      style: TextStyle(
                        color: Color(0xFF626262),
                      ),
                    ),
                    onPressed: () async {
                      SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                      List<String> favorites =
                          sharedPreferences.getStringList("favorites") ?? [];

                      showDialog(
                          context: context,
                          builder: (context) {
                            return SimpleDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    "Favoriler",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.9,
                                  height:
                                  MediaQuery.of(context).size.height * 0.8,
                                  child: ListView.separated(
                                      separatorBuilder: (context, _) {
                                        return Divider();
                                      },
                                      itemCount: favorites.length,
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          title:
                                          Text(favorites[index].toString()),
                                          trailing: Icon(Icons.navigate_next),
                                          onTap: () {
                                            Navigator.pop(context);
                                            webViewController!
                                                .loadUrl(favorites[index]);
                                          },
                                        );
                                      }),
                                )
                              ],
                            );
                          });
                    },
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}