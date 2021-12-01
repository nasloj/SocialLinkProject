import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

Color backgroundColor = const Color.fromARGB(255, 36, 37, 45);


class Post extends StatefulWidget {
  final Color appColor;
  String? text;
  Image? image;
  int likes;
  int comments;


  Post({Key? key, this.image, this.text, required this.likes, required this.comments, required this.appColor}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    List<Widget> postData = [];
    if (widget.image != null){
      postData.add(Image(image: AssetImage(widget.image.toString())));
    }
    if (widget.text != null){
      postData.add(Text(
        widget.text.toString(),
        style: TextStyle(color: Colors.white),
      ));
    }
    postData.add(Text(
      "Likes: " + widget.likes.toString() + " Comments: " + widget.comments.toString(),
      style: TextStyle(color: Colors.white),));
    
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(60))
      ),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(60))
      ),
        
        margin: EdgeInsets.all(60),
        child: Column(
          children: postData,
        )
      ),
    );
  }
}