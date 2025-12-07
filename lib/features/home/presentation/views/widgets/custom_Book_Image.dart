import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class customBookImage extends StatelessWidget {
  const customBookImage( {super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Image.asset('assets/images/download.png'),
     ),
    );
  }
}
