import 'package:flutter/material.dart';
import 'package:portifolio/src/core/entities/social_media_entity.dart';
import 'package:portifolio/src/presenter/controller/social_controller.dart';
import 'package:portifolio/src/presenter/ui/molecules/social_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SocialController sc = SocialController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Center(
                child: CircleAvatar(
                  radius: 140,
                  backgroundImage: NetworkImage(
                      'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650'),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'Cledson Ventura',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Redes Sociais',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: sc.socialModel.length,
                  itemBuilder: (context, idx) {
                    final SocialMediaEntity social = sc.socialModel[idx];

                    return SocialCard(
                        link: social.link,
                        image: social.image,
                        description: social.name);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
