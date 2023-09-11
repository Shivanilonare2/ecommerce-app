import 'package:ecommerce_app/views/constant_widget/common_password_textfield.dart';
import 'package:ecommerce_app/views/constant_widget/common_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.05,
              vertical: MediaQuery.sizeOf(context).height * 0.07),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.15,
              ),
              const Text(
                "Welcome Back",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              const Text(
                "Sign in to access your account",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              const CommonTextField(
                hintText: "Enter your mail",
                icon: CupertinoIcons.mail,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              const CommonPasswordTextField(),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.right,
                      ))),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.05,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffeb3461),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ))),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "New Member?",
                    style: TextStyle(color: Colors.black87, fontSize: 14),
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        " Register Now",
                        style: TextStyle(
                            color: Color(0xffeb3461),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.02,
              ),
              const Text(
                "- OR -",
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Image.asset("assets/google_logo.png",
                    height: MediaQuery.sizeOf(context).height * 0.02,
                    width: MediaQuery.sizeOf(context).width * 0.02),
              )
            ],
          ),
        ),
      ),
    );
  }
}
