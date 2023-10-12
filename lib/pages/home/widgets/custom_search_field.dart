import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  CustomSearchField({Key? key}) : super(key: key);

  final inputBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.grey.shade500,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        hintStyle: TextStyle(color: Colors.grey.shade500),
        hintText: "Digite alguma busca aqui",
        suffixIcon: IconButton(
          icon: const Icon(Icons.search),
          color: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}
