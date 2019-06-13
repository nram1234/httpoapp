import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:httpapp/scr/Home.dart';
import 'package:httpapp/scr/validatorData.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

Post p;
const String CREATE_POST_URL =
    "https://executed-returns.000webhostapp.com/login.php";

class _LoginState extends State<Login> with ValidationData {
  final formkey = GlobalKey<FormState>();
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                emailFiled(),
                passWordFiled(),
                submitButton(),
                RaisedButton(onPressed: () {
                  print(p.user_email);
                })
              ],
            ),
          )),
    );
  }

  Widget emailFiled() {
    return TextField(
      onChanged: (String v) {
        email = v;
      },
      decoration:
          InputDecoration(hintText: "you@example.com", labelText: "Email"),
    );
  }

  Widget passWordFiled() {
    return TextField(
      onChanged: (String v) {
        password = v;
      },
      decoration:
          InputDecoration(hintText: "you@example.com", labelText: "Email"),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () async {
        // Post newPost = new Post(
        //     user_name: email, user_email: password );
        //   p = await createPost(CREATE_POST_URL,
        //    body: newPost.toMap());

        var response = await http.post(CREATE_POST_URL,
            body: {'name': email, 'user_email': password});
        print('Response status: ${response.statusCode}');
        print('Response body: ${response.body}');

        if (response.body == "getuser") {

          Navigator.pushReplacement (
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        } else {
          print('11111111111111111111111111111111111111111111111');
        }
      },
      child: Text("Submit"),
    );
  }

  Future<Post> createPost(String url, {Map body}) async {
    return http.post(url, body: body).then((http.Response response) {
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return Post.fromJson(json.decode(response.body));
    });
  }
}

class Post {
  final String user_name;
  final String user_email;

  Post({this.user_name, this.user_email});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      user_name: json['name'],
      user_email: json['user_email'],
    );
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["name"] = user_name;
    map["user_email"] = user_email;

    return map;
  }
}
