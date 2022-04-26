import 'package:app_012/pages/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  static const String id = "page_10";

  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              ),
            ),
            expandedHeight: 300,
            backgroundColor: Colors.blue,
            leading: IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Page2.id);
                },
                color: Colors.black,
                icon: Icon(Icons.arrow_forward),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(42),
                        bottomRight: Radius.circular(42),),
                    image: DecorationImage(
                      image: AssetImage('assets/images/images1.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
              title: Text("my clock"),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        "C2 Analog Clocks",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "\$542",
                        style: TextStyle(fontSize: 20, color: Colors.redAccent),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              height: 40,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 500,
                    decoration: BoxDecoration(
                      // color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("assets/images/img.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    "65,795 ",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 160,
              color: Colors.white,
              child: Text(
                """   An alarm clock can be a healthy upgrade to a distraction-free bedroom, despite its feeling like a technological downgrade. After a phone-free week of testing, we recommend seven clocks (including analog, digital, and smart versions) for a more peaceful bedroom.""",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 120,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Type",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Meneger",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text("Analog"),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text("Place"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Add to cart",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
