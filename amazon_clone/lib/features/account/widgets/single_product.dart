import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String imageUrl;
  const SingleProduct({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Container(
          width: 180,
          padding: const EdgeInsets.all(10),
          // child: Image.network(
          //   imageUrl,
          //   fit: BoxFit.fitHeight,
          //   width: 180,
          // ),
          child: Image.network(
            imageUrl,
            fit: BoxFit.fitHeight,
            width: 180,
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return Image.asset(
                  'assets/images/mobiles.jpeg'); // Path to your placeholder image
            },
          ),
        ),
      ),
    );
  }
}
