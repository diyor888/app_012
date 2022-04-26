import 'package:app_012/pages/page1.dart';
import 'package:flutter/material.dart';
class Page2 extends StatefulWidget {
  static const String id = "page_2";
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        child: IconButton(
          onPressed: (){
            Navigator.pushReplacementNamed(context, Page1.id);
          },
          icon: Icon(Icons.exit_to_app_outlined),
        ),
      ),
    );
  }
}
