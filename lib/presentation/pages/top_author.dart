import 'package:flutter/material.dart';
import 'package:uik/presentation/widgets/circleavatar.dart';

class TopAuthor extends StatelessWidget {
  const TopAuthor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Top authors ",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          leading: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            )
          ],
          backgroundColor: Colors.white10,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myCircleAvatar(profileHeight: 22,image: AssetImage(""),),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("Teacher's name"),
                      Text("Teacher's username"),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 75,
                      height: 33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(33),
                          color: Colors.black),
                      margin: EdgeInsets.only(left: 6),
                      child: Center(
                        child: Text(
                          "Follow",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
