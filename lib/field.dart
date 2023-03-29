import 'package:flutter/material.dart';

Widget buildContent(
  String labelText,
  String placeholder,
) {
  return Padding(
    padding: EdgeInsets.all(8),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 6),
        labelText: labelText,
        labelStyle: TextStyle(fontSize: 15, color: Colors.black),
        hintText: placeholder,
        hintStyle: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w300, color: Colors.grey),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Colors.black,
          width: 1,
        )),
      ),
    ),
  );
}
