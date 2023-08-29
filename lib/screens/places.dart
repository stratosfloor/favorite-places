import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/screens/new_place.dart';
import 'package:favorite_places/widgets/places_list.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  // final List<Place> _places = [];

  // void _addPlace() async {
  //   final newPlace = await Navigator.of(context).push<Place>(
  //     MaterialPageRoute(
  //       builder: (ctx) => const NewPlaceScreen(),
  //     ),
  //   );
  // }
  //   if (newPlace == null) {
  //     return;
  //   }

  //   setState(() {
  //     _places.add(newPlace);
  //   });
  //   // print(newPlace.title.toString());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const NewPlaceScreen(),
                ),
              );
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: PlacesList(places: []),
    );
  }
}
