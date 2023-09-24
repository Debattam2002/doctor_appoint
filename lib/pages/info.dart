import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadiusDirectional.circular(35),
          child: Image.asset(
            'images/vk.jpg',
            fit: BoxFit.cover,
            width: 400,
          ),
        ),
        ////////attention sttention//////
      ),
    );
  }
}