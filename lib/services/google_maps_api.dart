import 'package:flutter_dotenv/flutter_dotenv.dart';

final apiKey = dotenv.env['GOOGLE_API'];

String getLocationImage(
  double lat,
  double lng,
) {
  return 'https://maps.googleapis.com/maps/api/staticmap?center=$lat,$lng&zoom=17&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$lat,$lng&key=$apiKey';
}

Uri getGeocodeUrl(
  double lat,
  double lng,
) {
  return Uri.parse(
      'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$apiKey');
}
