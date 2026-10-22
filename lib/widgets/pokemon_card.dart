import 'package:flutter/material.dart';
import 'package:flutter_apps/models/pokemon.dart';
import 'package:flutter_apps/pages/detail_page.dart';
import 'package:flutter_apps/widgets/type_chip.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonCard({
    super.key,
    required this.pokemon,
    required this.isFavorite,
    required this.onTap,
    required this.onFavoriteTap,
  });

  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;

  @override
  // function intent ke detail_page
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: pokemon.name,
                  child: Image.asset(
                    pokemon.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  onPressed: () {
                    onFavoriteTap();
                  },
                  child: isFavorite 
                  ? Icon(Icons.favorite, color: Colors.red,) 
                  : Icon(Icons.favorite_border, color: Colors.white,)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
