import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instaprofile/editbar.dart';
import 'package:instaprofile/insta_post_model.dart';
import 'package:instaprofile/single_post_screen.dart';

class InstaProfile extends StatefulWidget {
  const InstaProfile({super.key});

  @override
  State<InstaProfile> createState() => _InstaProfileState();
}

class _InstaProfileState extends State<InstaProfile> {
  var list = <InstaPostModel>[
    InstaPostModel(
      images: ["images/1.jpg"],
      caption: "This is caption",
      hashtags: "#o7services #instCaptions",
    ),
    InstaPostModel(
      images: ["images/1.jpg", "images/1.jpg"],
      caption: "This is Second Caption",
      hashtags: "#o7services #instCaptions",
    ),
    InstaPostModel(
      images: ["images/1.jpg", "images/1.jpg", "images/1.jpg"],
      caption: "This is Third Caption",
      hashtags: "#o7services #instCaptions",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.lock),
        title: const Text(
          "i_yamish",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 40, right: 40),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage("images/1.jpg"),
                      ),
                      border: Border.all(width: 3)),
                ),
                profileStatusWidget("0", "posts"),
                profileStatusWidget("232", "Followers"),
                profileStatusWidget("282", "Following"),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(15),
              width: MediaQuery.sizeOf(context).width,
              height: 70,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "yamish",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                  Text(
                    "@yamish",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "bio",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
            editbar(), //in this there are 'edit profile and share profile container with icon'
            Container(
              height: 10,
            ),
            Expanded(
                child: GridView.builder(
                    itemCount: list.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SinglePostScreen(
                                  instaPostModel: list[index])));
                        },
                        child: Container(
                          margin: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(list[index].images![0]))),
                        ),
                      );
                    })))
          ],
        ),
      ),
    );
  }

  Widget profileStatusWidget(String count, String text) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w100),
        ),
      ],
    );
  }
}
