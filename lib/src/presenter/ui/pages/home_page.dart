import 'package:flutter/material.dart';
import 'package:portifolio/src/presenter/ui/molecules/tecnology_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                      Text('Hello welcome to my portifolio',
                          style: Theme.of(context).textTheme.titleLarge),
                      Text("I'm Cledson,",
                          style: Theme.of(context).textTheme.displayMedium),
                      Text('A Mobile Aplication Developper',
                          style: Theme.of(context).textTheme.displaySmall),
                      Text("I'm starting my career now as a Mobile Progamator",
                          style: Theme.of(context).textTheme.titleLarge),
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TecnologyCard(
                          logo:
                              'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
                          link:
                              'https://tecnoblog.net/responde/o-que-e-flutter-em-programacao/'),
                      TecnologyCard(
                          logo:
                              'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/dart/dart.png',
                          link:
                              ' https://www.hostgator.com.br/blog/o-que-e-dart-na-programacao/'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
