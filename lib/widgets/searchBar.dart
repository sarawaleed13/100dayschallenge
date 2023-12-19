import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBat extends StatelessWidget {
  const SearchBat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:InputDecoration(
        filled: true,
        hintStyle: TextStyle(color: Colors.grey),
        prefixIconColor: Colors.black,
        prefixIcon: Icon(Icons.search),
        hintText: "Search you're looking for ..... ",
        fillColor: Colors.grey.withOpacity(0.2),
   border: OutlineInputBorder(
     borderSide: BorderSide.none,
     borderRadius: BorderRadius.circular(16),

   )
      ) ,

    );
  }
}