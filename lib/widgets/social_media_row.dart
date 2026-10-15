import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void showMessage(BuildContext context, String media) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Kamu mengklik $media'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () => showMessage(context, 'Instagram'),
          icon: const Icon(Icons.camera_alt),
          tooltip: 'Instagram',
        ),
        IconButton(
          onPressed: () => showMessage(context, 'LinkedIn'),
          icon: const Icon(Icons.work),
          tooltip: 'LinkedIn',
        ),
        IconButton(
          onPressed: () => showMessage(context, 'GitHub'),
          icon: const Icon(Icons.code),
          tooltip: 'GitHub',
        ),
      ],
    );
  }
}