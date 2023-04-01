import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData icono;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icono,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //shape: const StadiumBorder(),
      enableFeedback: true,
      onPressed: onPressed,
      child: Icon(icono),
    );
  }
}
