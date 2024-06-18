import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.disable = false,
    this.arrow = false,
  });
  final String? text;
  final VoidCallback onTap;
  final double? width;
  final bool disable;
  final bool arrow;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: disable ? null : onTap,
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text!,
              style: const TextStyle(fontSize: 14,color: Colors.black),
            ),
            if (arrow) ...[
              const SizedBox(width: 2),
              const Icon(
                Icons.arrow_forward,
                size: 13,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
