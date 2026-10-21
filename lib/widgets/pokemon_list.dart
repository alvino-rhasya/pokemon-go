import 'package:flutter/material.dart';
import 'package:flutter_apps/models/pokemon.dart';
import 'package:flutter_apps/pages/detail_page.dart';
import 'package:flutter_apps/widgets/type_chip.dart';

class PokemonList extends StatelessWidget {
  final Pokemon pokemon;
  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;
  const PokemonList({
    super.key,
    required this.pokemon,
    required this.isFavorite,
    required this.onTap,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(999),
              child: Hero(
                tag: pokemon.name,
                child: Image.asset(
                  pokemon.image,
                  width: 56,
                  height: 56,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(pokemon.name),
                  ],
                ),
              ),
            ),
            Icon(Icons.favorite_border_rounded),
          ],
        ),
      ),
    );
  }
}
