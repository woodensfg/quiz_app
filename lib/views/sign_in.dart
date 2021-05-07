import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();
  String email, password;

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
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Spacer(),
              TextFormField(
                validator: (val) { return val.isEmpty ? "Enter correct email" : null;
                },
                decoration: InputDecoration(
                  hintText: "Email"
                ),
                onChanged: (val) {
                  email = val;
                },
              ),
              SizedBox(height: 6,),
              TextFormField(
                validator: (val) { return val.isEmpty ? "Enter password" : null;
                },
                decoration: InputDecoration(
                    hintText: "Password"
                ),
                onChanged: (val) {
                  password = val;
                },
              ),
              SizedBox(height: 16,),
              Container(
                color: Colors.blue,
                height: 50,
                child: Text("Sign In"),
              ),

              SizedBox(height: 80,),
            ],
          ),
        ),
      ),
    );
  }
}

