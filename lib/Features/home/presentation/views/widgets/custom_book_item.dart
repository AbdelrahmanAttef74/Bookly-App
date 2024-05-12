import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImageItem extends StatelessWidget {
  const CustomBookImageItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: CachedNetworkImage(
        errorWidget: (context, url, error) => const Icon(Icons.error),
        imageUrl: imageUrl,
      ),
    );
  }
}
