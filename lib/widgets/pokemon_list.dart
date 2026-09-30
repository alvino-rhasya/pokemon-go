import 'package:flutter/material.dart';
import 'package:flutter_apps/widgets/type_chip.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: ClipRRect(
        borderRadius:BorderRadiusGeometry.circular(999) ,
        child: Hero(
          tag: 'pokemon-image',
          child: Image.asset(
            'assets/bulbasaur.jpg', 
            width: 56,
            height: 56,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text('Bulbasaur'),
      subtitle: TypeChip(),
      trailing: Icon(Icons.favorite_border_outlined),
    );
  }
}
