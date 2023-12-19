import 'package:flutter/material.dart';

class ListImages extends StatelessWidget {
   ListImages({
    Key? key,

  }) : super(key: key);
  List<dynamic> Images =["assets/images/one.jpg",
    "assets/images/two.jpg",
    "assets/images/four.jpg",
    ];


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Images.length >= 3 ? 3 : Images.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(8),
            width: 160,

            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                Images[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
