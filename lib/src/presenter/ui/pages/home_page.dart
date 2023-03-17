import 'package:flutter/material.dart';
import 'package:portifolio/src/presenter/ui/widgets/social_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          const SizedBox(height: 50),
          
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650'),
                ),
                const SizedBox(height: 10),
                Text('Olá, eu sou Cledson',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.white)),
                Text("Mobile Development",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(color: Colors.orange)),
                SizedBox(
                  width: 400,
                  child: Text(
                      'Sou um descenvolvedor mobile flutter e estou atualmente\ntentando ingressar no mercado agora',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.center),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SocialCard(
                      image:
                          'https://cdn.afterdawn.fi/v3/news/original/github-logo.png',
                      link: 'https://github.com/cledsonv',
                    ),
                    SocialCard(
                      image:
                          'https://www.nicepng.com/png/full/23-230042_instagram-logo-black-borders-png-transparent-background-instagram.png',
                      link: 'https://github.com/cledsonv',
                    ),
                    SocialCard(
                      image:
                          'https://th.bing.com/th/id/R.42f8397a5e20e9f401d149a24b8c1bf3?rik=2pNi%2b7F0mZdw2A&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2009%2f01%2flinkedin-logo-black_246853.png&ehk=De9VSr%2bjMZ6qN9vHONHTHFl2JBP67%2fAryWto8WP2Iq4%3d&risl=&pid=ImgRaw&r=0',
                      link: 'https://github.com/cledsonv',
                    ),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
