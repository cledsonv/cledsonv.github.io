import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialCard extends StatelessWidget {
  final String image;
  final String description;
  final String? link;
  const SocialCard({
    Key? key,
    required this.image,
    required this.description,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => link == null ? null : launchUrl(Uri.parse(link!)),
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Image.network(
                image,
                height: 40,
              ),
              const SizedBox(width: 15),
              Expanded(child: Text(description))
            ],
          ),
        ),
      ),
    );
  }
}
