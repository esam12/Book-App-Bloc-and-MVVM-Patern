import 'package:bookly_app_bloc/core/utils/assets.dart';
import 'package:bookly_app_bloc/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 16,
            width: 75,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.searchview);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              ))
        ],
      ),
    );
  }
}
