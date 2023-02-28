import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TecnologyCard extends StatelessWidget {
  final String logo;
  final String link;
  const TecnologyCard({super.key, required this.logo, required this.link});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(link)),
      child: SizedBox(
        height: 185,
        width: 130,
        child: Card(
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Image.network(logo, height: 100),
                SizedBox(height: 5),
                const Text('Clique para saber mais...')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
