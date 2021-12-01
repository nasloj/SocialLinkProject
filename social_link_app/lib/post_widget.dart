import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'notification_page.dart';
import 'profilesettings.dart';
import 'profile_edit.dart';
import 'post_widget.dart';


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
        style: TextStyle(color: Colors.grey),
      ));
    }
    postData.add(Text(
      "Likes:" + widget.likes.toString() + "                 |                 Comments: " + widget.comments.toString(),
      style: TextStyle(color: Colors.grey),));
    
    return Container(
      
      decoration: BoxDecoration(
        gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color.fromARGB(255, 142, 63, 255),
                  Color.fromARGB(255, 181, 55, 254),
                ]),
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
        
        margin: EdgeInsets.all(6),
        child: Column(
          children: postData,
        )
      ),
    );
  }
}