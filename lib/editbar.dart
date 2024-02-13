import 'package:flutter/material.dart';

class editbar extends StatelessWidget {
  const editbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            child: Center(child: Text("Edit profile")),
            width: MediaQuery.sizeOf(context).width,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 8),
            child: Center(child: Text("share profile")),
            width: MediaQuery.sizeOf(context).width,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 8),
          child: Center(child: Icon(Icons.person_add)),
          width: 40,
          height: 35,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        ),
      ],
    );
  }
}
