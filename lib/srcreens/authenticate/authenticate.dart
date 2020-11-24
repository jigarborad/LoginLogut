import 'package:brew_crew/srcreens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthentiState createState() => _AuthentiState();
}

class _AuthentiState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(child: SignIn());
  }
}
