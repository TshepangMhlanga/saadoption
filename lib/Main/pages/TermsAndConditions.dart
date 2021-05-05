import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class Terms extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Terms And Conditions Page",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}