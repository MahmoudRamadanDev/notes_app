import 'package:flutter/material.dart';

class CustomeIconSearch extends StatelessWidget {
  const CustomeIconSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              width: 45,
              height: 45,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 52, 55, 56),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      size: 28,
                      ),
                ),
                    );
  }
}