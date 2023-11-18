import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShortImage extends StatelessWidget {
  ShortImage({
    super.key,
    required this.image,
    required this.personImage,
    required this.personName,
  });
  String image;
  String personImage;
  String personName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 50),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(personImage),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "${personName}_Shorts",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
