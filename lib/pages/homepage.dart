import 'dart:html';

import 'package:flutter/material.dart';
import 'package:homework10/models/comment.dart';
import 'package:homework10/models/post.dart';

import 'widgets/mycards.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);
  final List<Post> post = [
    Post(
      profile: "assets/images/profile.jpg",
      author: "Yae Miko",
      postpic: "assets/images/post.jpg",
      caption: "สุขสันต์วันความรัก",
      comment: [
        Comment(commenter: "Raiden Shogun", commentword: "Love You <3"),
        Comment(commenter: "Ei", commentword: "Love You too <3"),
      ],
    ),
    Post(
      profile: "assets/images/profile2.jpg",
      author: "Ei",
      postpic: "assets/images/post2.jpg",
      caption: "สุขสันต์วันวาเลนไทน์นะ",
      comment: [
        Comment(commenter: "Raiden Shogun", commentword: "เธอทำอะไรเนี่ย"),
        Comment(commenter: "Yae Miko", commentword: "น่ารักจังเลย"),
      ],
    ), Post(
      profile: "assets/images/profile3.png",
      author: "Raiden Shogun",
      postpic: "assets/images/post3.jpg",
      caption: "สุขสันต์วันวาเลนไทน์ รักทุกคนแหละ",
      comment: [
        Comment(commenter: "Ei", commentword: "คนผมชมพูน่ารักที่สุด"),
        Comment(commenter: "Yae Miko", commentword: "รักพวกเธอทั้งคู่น้าา"),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Valentine"),
      ),
      body: ListView(
        children: [
          for(int i=0;i<post.length;i++)
          Mycard(post:post[i]),
        ],
      ),
    );
  }
}
