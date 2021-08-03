import 'package:flutter/material.dart';
import 'package:saadoptionsystem/Main/bloc.navigation_bloc/navigation_bloc.dart';

class NewsFeedScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
          child: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                  ),
                  color: Colors.white),
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NewsFeedCard(),
                      ])))),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: 'Feed', icon: Icon(Icons.refresh)),
          BottomNavigationBarItem(label: 'Chat', icon: Icon(Icons.chat)),
        ],
      ),
    );
  }
}

class NewsFeedCard extends StatelessWidget {
  const NewsFeedCard({Key ?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Stack(
        // mainAxisAlignment:MainAxisAlignment.start,
        // crossAxisAlignment:CrossAxisAlignment.start,

        children: [
          Container(
            height: size.height * 0.50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                'https://www.jhbchildwelfare.co.za/uploads/_imager/uploads/files/1969/Margot-Newsletter-Feb-2020_c96292182b0c3e9c4f607ed42ecfc1bb.jpg',scale: 0.2,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: -01.0,
            right: -3.0,
            left: -2.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: size.height*0.13,
                  decoration: BoxDecoration(

                    boxShadow: [
                      BoxShadow(
                        color: Colors.white24,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                      BoxShadow(
                          color: Colors.white24,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0)
                    ],
                  ),


                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                            'We had an eye-opening moment last year when we worked out that Womens Catholic has leaped from serving 55 000 children.',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16.0)),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(Icons.calendar_today),
                            Text('Feb 27, 2020'),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(Icons.room)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
