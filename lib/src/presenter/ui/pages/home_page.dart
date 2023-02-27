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
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Hello welcome to my portifolio\n',
                                style: Theme.of(context).textTheme.titleLarge),
                            TextSpan(
                                text: "I'm Cledson,\n",
                                style:
                                    Theme.of(context).textTheme.displayMedium),
                            TextSpan(
                                text: 'A Mobile Aplication Developper\n',
                                style:
                                    Theme.of(context).textTheme.displaySmall),
                            TextSpan(
                                text:
                                    "I'm starting my career now as a Mobile Progamator",
                                style: Theme.of(context).textTheme.titleLarge),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 170,
                    backgroundImage: NetworkImage(
                        'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650'),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text('Technologies',
                      style: Theme.of(context).textTheme.displaySmall),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
