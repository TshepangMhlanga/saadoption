import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:saadoptionsystem/Main/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:saadoptionsystem/Main/pages/NewsFeed/post_model.dart';
import 'package:saadoptionsystem/Main/pages/NewsFeed/posts.dart';

class App extends StatefulWidget with NavigationStates{
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  List<PostModel> posts = new List<PostModel>();

  void getPosts() async {
    try {
      Map<String, String> requestHeaders = {'Accept': 'application/json'};

      final response = await get(
        "https://newsapi.org/v2/top-headlines?country=za&apiKey=cd3374bffe0a42d48be49679ec506411",
        headers: requestHeaders,
      );

      posts.clear();

      setState(() {
        for (var post in json.decode(response.body)['posts']) {
          posts.add(new PostModel(post));
        }
      });
    } catch (e) {
      print('Error occurred');
    }
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('News Feed'),
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Posts(posts),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          tooltip: 'Refresh Posts',
          child: Icon(Icons.refresh),
          onPressed: getPosts,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

