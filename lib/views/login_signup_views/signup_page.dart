import 'package:ecommerce_app/views/constant_widget/common_password_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant_widget/common_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
        children: [
          const CommonTextField(hintText: "Full name", icon: CupertinoIcons.person),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          const CommonTextField(hintText: "Email", icon: CupertinoIcons.mail),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          const CommonTextField(hintText: "Phone number", icon: CupertinoIcons.phone),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          const CommonPasswordTextField(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height*0.05,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffeb3461),
                  ),
                  onPressed: (){}, child: const Text("Login", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),))),
        ],
     ),
    );
  }
}
