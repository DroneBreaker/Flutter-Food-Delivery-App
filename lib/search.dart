import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        child: TextField(
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 26, vertical: 12),
              hintText: 'Search any food',
              suffixIcon: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(30),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              border: InputBorder.none),
        ));
  }
}
