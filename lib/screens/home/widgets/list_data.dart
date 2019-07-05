import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final EdgeInsets margin;

  ListData(
      {@required this.title,
      @required this.subTitle,
      @required this.image,
      @required this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey.shade200, width: 1.0),
          bottom: BorderSide(color: Colors.grey.shade200, width: 1.0),
        ),
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(image)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
              SizedBox(height: 5),
              Text(subTitle,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w300)),
            ],
          ),
        ],
      ),
    );
  }
}
