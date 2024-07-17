import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/utils/colors.dart';
import 'package:flutter_instagram_clone/widgets/text_field_input.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final bioController = TextEditingController();
  final usernameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    bioController.dispose();
    usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 2, child: Container()),
              // svg image
              SvgPicture.asset(
                "assets/ic_instagram.svg",
                // ignore: deprecated_member_use
                color: Colors.white,
                height: 64,
              ),
              // circular avatar
              Stack(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZSUyMHBpY3xlbnwwfHwwfHx8MA%3D%3D'),
                  ),
                  Positioned(
                    bottom: -10,
                    right: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_a_photo,color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              // text field input for username
              TextFieldInput(
                textEditingController: usernameController,
                hintText: "Enter your username",
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 15),
              // text field input for email
              TextFieldInput(
                textEditingController: emailController,
                hintText: "Enter your email",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15),
              // text field input for password
              TextFieldInput(
                textEditingController: passwordController,
                hintText: "Enter your password",
                textInputType: TextInputType.text,
                isPass: true,
              ),
              SizedBox(height: 15),
              TextFieldInput(
                textEditingController: bioController,
                hintText: "Enter your bio",
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 20),
              // button login
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  decoration: ShapeDecoration(
                    color: blueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                  ),
                  child: Text("Sign up"),
                ),
              ),
              SizedBox(height: 20),
              Flexible(flex: 2, child: Container()),
              // transitioning to signing up page
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text("Don't have an account? "),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Login.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
