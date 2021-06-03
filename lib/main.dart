import 'package:flutter/material.dart';
import 'package:exercise1/screen/home/home.dart';

/*LIM WEI HAN A18CS0100
YEW WAN QI A18CS0279
 */

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Home(),
    );
  }
}
