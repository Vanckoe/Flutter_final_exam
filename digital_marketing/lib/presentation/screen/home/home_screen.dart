import 'package:digital_marketing/presentation/screen/news/news_screen.dart';
import 'package:digital_marketing/presentation/screen/profile/profile_screen.dart';
import 'package:digital_marketing/presentation/screen/qr/qr_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, int>(
        builder: (context, state) {
          return Scaffold(
            body: IndexedStack(
              index: state,
              children: [
                NewsScreen(),
                QrScreen(),
                ProfileScreen(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state,
              onTap: context.read<HomeCubit>().onBottomNavigationItemTapped,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: 'Новости',
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.qr_code),
                  label: 'QR',
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label: 'Профиль',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
