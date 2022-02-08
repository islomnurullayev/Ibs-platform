import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final Function() onTap;
  final String imageUrl;
  const HomeCard({
    Key? key,
    required this.onTap,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network(imageUrl).image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
