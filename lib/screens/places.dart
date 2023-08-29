import 'package:favorite_places/models/place.dart';
import 'package:flutter/material.dart';

class Places extends StatefulWidget {
  const Places({super.key});

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  final List<Place> _places = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your places'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            )
          ],
        ),
        body: _places.isEmpty
            ? const Center(child: Text('No placed added yet.'))
            : ListView.builder(
                itemCount: _places.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    // leading: ,
                    // trailing: ,
                    title: Text(_places[index].title),
                  );
                },
              ));
  }
}
