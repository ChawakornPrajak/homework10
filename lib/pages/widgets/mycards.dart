import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework10/models/comment.dart';
import 'package:homework10/models/post.dart';

class Mycard extends StatefulWidget {
  final Post post;

  const Mycard({required this.post, Key? key}) : super(key: key);

  @override
  _MycardState createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  final controller = TextEditingController();
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(25),
                      child: Image.asset(
                        widget.post.profile,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Text(
                  widget.post.author,
                  style: TextStyle(fontSize: 30),
                )),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Image.asset(widget.post.postpic,fit:BoxFit.cover,),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.post.caption,
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ],
            ),
            for (int i = 0; i < widget.post.comment.length; i++)
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.post.comment[i].commenter,
                      style: TextStyle(color: Colors.pink, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.post.comment[i].commentword,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isLike = !isLike;
                    });
                  },
                  icon: !isLike
                      ? Icon(Icons.favorite_border_outlined)
                      : Icon(Icons.favorite, color: Colors.pink),
                ),
                Expanded(
                  child: TextField(
                    onSubmitted: (value) {
                      setState(() {
                        widget.post.comment.add(
                            Comment(commenter: "ไอฟง", commentword: value));
                        controller.clear();
                      });
                    },
                    controller: controller,
                    decoration: const InputDecoration(
                      hintText: "Add comment",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
