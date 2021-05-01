import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Form(
        child: Container(
          child: Column(
            children: [
              Spacer(),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
