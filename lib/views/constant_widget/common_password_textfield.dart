import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonPasswordTextField extends StatelessWidget {
  const CommonPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2)
      ),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(color: Colors.white)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(color: Colors.white)
            ),
            enabledBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(color: Colors.white)
            ),
            suffixIcon: const Icon(CupertinoIcons.eye, color: Colors.grey,)
        ),
      ),
    );
  }
}
