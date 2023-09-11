import 'package:ecommerce_app/views/constant_widget/common_password_textfield.dart';
import 'package:ecommerce_app/views/login_signup_views/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant_widget/common_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.sizeOf(context).height * 0.1,
            left: MediaQuery.sizeOf(context).width * 0.04,
            right: MediaQuery.sizeOf(context).width * 0.04),
        child: Column(
          children: [
            const Center(
              child: Text(
                "Get Started",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
            const Center(
              child: Text(
                "By creating a free account",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
            const CommonTextField(
                hintText: "Full name", icon: CupertinoIcons.person),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            const CommonTextField(hintText: "Email", icon: CupertinoIcons.mail),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            const CommonTextField(
                hintText: "Phone number", icon: CupertinoIcons.phone),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            const CommonPasswordTextField(),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.06,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffeb3461),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ))),
             SizedBox(
               height: MediaQuery.sizeOf(context).height*0.02,
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Text(
                  "Already a member?",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const LoginPage()));
                  },
                  child: const Text(
                    " Login",
                    style: TextStyle(
                        color: Color(0xffeb3461),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
