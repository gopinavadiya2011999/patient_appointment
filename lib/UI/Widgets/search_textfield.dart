import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      shadowColor: const MaterialStatePropertyAll(Colors.transparent),
      surfaceTintColor: const MaterialStatePropertyAll(Colors.transparent),
       shape: MaterialStatePropertyAll(RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(16)
       )),
      hintText: "Search doctor or health issue",
      leading: const Icon(Icons.search,color: Colors.grey),
      hintStyle: const MaterialStatePropertyAll(TextStyle(
          color: Colors.grey
      )),
      backgroundColor:MaterialStatePropertyAll(Colors.grey.withOpacity(0.15),


      ),
    );
  }
}
