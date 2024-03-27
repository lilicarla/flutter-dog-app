import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_my_app/app/modules/home/domain/domain.dart';
import '../stores/stores.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.only(top: 20),
          child: Observer(
            builder: (_) {
              var store = Modular.get<HomeStore>();
              if (store.state is HomeError) {
                return const Center(
                  child: Text('Something went wrong!'),
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeCard(
                      imageUri: store.state is HomeSuccess
                          ? (store.state as HomeSuccess).dog.photoUrl
                          : '',
                      isLoading: store.state is HomeLoading,
                    ),
                    const SizedBox(height: 40),
                    HomeButton(
                      onTap: () => store.state is HomeLoading
                          ? null
                          : store.getRandomDogImage(),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
