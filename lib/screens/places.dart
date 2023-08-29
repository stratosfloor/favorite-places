import 'package:favorite_places/models/place.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  final List<Place> _places = [];


  void _addPlace () {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ))
  }

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
