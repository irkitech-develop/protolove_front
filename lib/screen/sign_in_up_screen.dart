import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:protolove_front/screen/register_screen.dart';
import 'package:protolove_front/utils/colors.dart';
import 'package:protolove_front/widgets/atom/atom.dart';
import 'package:staggered_grid_view/flutter_staggered_grid_view.dart';

class SignInUpScreen extends StatelessWidget {
  const SignInUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: ColorFiltered(
                colorFilter: const ColorFilter.matrix([
                  0.85, 0, 0, 0, 0, // ↓ saturación
                  0, 0.85, 0, 0, 0,
                  0, 0, 0.85, 0, 0,
                  0, 0, 0, 1, 0,
                ]),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: AppColors().primaryGradient,
                  ),
                ),
              ),
            ),
          ),

          Positioned.fill(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: ColorFiltered(
                colorFilter: const ColorFilter.matrix([
                  0.85, 0, 0, 0, 0, // ↓ saturación
                  0, 0.85, 0, 0, 0,
                  0, 0, 0.85, 0, 0,
                  0, 0, 0, 1, 0,
                ]),
                child: StaggeredImages(),
              ),
            ),
          ),

          // Contenido
          Positioned(
            bottom: 40,
            left: 24,
            right: 24,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64),
                  child: Divider(thickness: 6, color: Colors.white),
                ),
                Text(
                  'PROTO\nLOVE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 64),
                  child: Divider(thickness: 6, color: Colors.white),
                ),
                const SizedBox(height: 24),
                PrimaryButton(
                  text: 'Iniciar sesión',
                  color: AppColors().buttonColor,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'o',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                PrimaryButton(
                  text: 'Registro',
                  textColor: Colors.white,
                  color: AppColors().buttonColor,
                  onPressed: () {
                    Navigator.pushNamed(context, 'register');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StaggeredImages extends StatelessWidget {
  StaggeredImages({super.key});

  final List<String> images = [
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
    'assets/persona.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4, // columnas
      itemCount: images.length,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ClipRRect(child: Image.asset(images[index], fit: BoxFit.cover));
      },
      staggeredTileBuilder: (index) {
        // Alturas diferentes para el efecto escalonado
        return StaggeredTile.count(1, index % 2 == 0 ? 1.8 : 1.4);
      },
    );
  }
}
