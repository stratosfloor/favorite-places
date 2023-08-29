import 'dart:io';

import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class PlaceLocation {
  const PlaceLocation({
    required this.latitude,
    required this.longitude,
    required this.adress,
  });
  final double latitude;
  final double longitude;
  final String adress;
}

class Place {
  Place({
    required this.title,
    required this.image,
    required this.location,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final File image;
  final PlaceLocation location;
}
