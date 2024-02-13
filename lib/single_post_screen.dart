import 'package:flutter/material.dart';
import 'insta_post_model.dart';
import 'instaprofile.dart';

class SinglePostScreen extends StatefulWidget {
  final InstaPostModel instaPostModel;
  const SinglePostScreen({super.key, required this.instaPostModel});

  @override
  State<SinglePostScreen> createState() => _SinglePostScreenState();
}

class _SinglePostScreenState extends State<SinglePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const InstaProfile())));
          },
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: const Center(
          child: Column(
            children: [
              Text(
                "GURJOTSHERGILL29",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "Posts",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.circle,
                    size: 42,
                  ),
                ),
                Text(
                  "gurjotshergill29",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 300),
                  child: Icon(
                    Icons.more_vert,
                  ),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: widget.instaPostModel.images?.length ?? 0,
                  itemBuilder: (context, index) {
                    var images = widget.instaPostModel.images;
                    return Image.asset(
                      images?[index] ?? "",
                      fit: BoxFit.cover,
                    );
                  }),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 36,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.chat_bubble_outline_rounded,
                    size: 36,
                  ),
                ),
                Icon(
                  Icons.send_sharp,
                  size: 36,
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 300),
                  child: Icon(
                    Icons.bookmark_border,
                    size: 36,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.amber, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 29), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 29), label: "Profile")
      ]),
      // bottomNavigationBar: const Padding(
      //   padding: EdgeInsets.symmetric(vertical: 20),
      //   child: Row(
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Icon(Icons.home, size: 29),
      //       Padding(
      //         padding: EdgeInsets.symmetric(horizontal: 0),
      //         child: Icon(Icons.search, size: 29),
      //       ),
      //       Icon(Icons.add_box_outlined, size: 29),
      //       Icon(Icons.slideshow, size: 29),
      //       Icon(Icons.circle, size: 29),
      //     ],
      //   ),
      // ),
    );
  }
}
