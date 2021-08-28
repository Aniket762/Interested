import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.fromLTRB(25, 10, 25, 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Heading Top News",
                    style: TextStyle(
                        fontFamily: "Times",
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            )
          ];
        },
        body: Container());
  }
}
