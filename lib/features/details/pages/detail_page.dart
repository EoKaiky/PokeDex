import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.name, required this.list});
  final String name;
  final List<Pokemon> list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: ListView(
                  children: list.map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(e.name),
                  )).toList(),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}