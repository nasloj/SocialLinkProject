import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

Color backgroundColor = const Color.fromARGB(255, 36, 37, 45);


class Post extends StatefulWidget {
  final Color appColor;
  String? text;
  Image? image;
  int likes;
  List<String> comments;


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
      "Likes: " + widget.likes.toString(),
      style: TextStyle(color: Colors.white),));
    postData.addAll(widget.comments.map((e) => Text(e,style: TextStyle(color: Colors.white),)));
    
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
        
        margin: EdgeInsets.all(20),
        child: Column(
          children: postData,
        )
      ),
    );
  }
}