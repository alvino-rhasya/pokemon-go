import 'package:flutter/material.dart';
import 'package:flutter_apps/models/pokemon.dart';
import 'package:flutter_apps/pages/detail_page.dart';
import 'package:flutter_apps/widgets/type_chip.dart';

class PokemonList extends StatelessWidget {
  final Pokemon pokemon;
  final String type;
  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;
  const PokemonList({
    super.key,
    required this.pokemon,
    required this.isFavorite,
    required this.onTap,
    required this.onFavoriteTap,
    required this.type,
  });

  Color _typeColor() {
    if (type.contains('Water')) return Colors.blue;
    if (type.contains('Poison')) return Colors.purple;
    if (type.contains('Grass')) return Colors.green;
    if (type.contains('Electric')) return Colors.amber;
    if (type.contains('Dragon')) return Colors.indigo;
    if (type.contains('Fire')) return Colors.red;
    if (type.contains('Ice')) return Colors.teal;
    if (type.contains('Normal')) return Colors.grey;
    if (type.contains('Fighting')) return Colors.orange;
    return Colors.amber;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(15),
        side: BorderSide(color: _typeColor(), width: 1),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Hero(
          tag: pokemon.name,
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(15),
            child: Image.asset(
              pokemon.image,
              width: 67,
              height: 67,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          pokemon.name,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        subtitle: TypeChip(type: pokemon.type),
        trailing: IconButton(
          onPressed: onFavoriteTap,
          icon: isFavorite 
          ? Icon(Icons.favorite) 
          : Icon(Icons.favorite_border),
          color: isFavorite 
          ? Colors.pink 
          : Colors.grey,
        ),
      ),
    );
  }
}
