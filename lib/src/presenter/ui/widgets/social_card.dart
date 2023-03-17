import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialCard extends StatelessWidget {
  final String image;
  final String? link;
  const SocialCard({
    Key? key,
    required this.image,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(link!)),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Image.network(
          image,
          height: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
