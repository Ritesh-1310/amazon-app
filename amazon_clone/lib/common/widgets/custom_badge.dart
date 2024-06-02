import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  final Widget child;
  final String value;
  final Color color;

  const CustomBadge({super.key, 
    required this.child,
    required this.value,
    this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        child,
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            constraints: const BoxConstraints(
              minWidth: 18,
              minHeight: 18,
            ),
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
