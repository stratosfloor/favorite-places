## favorite_places

A Flutter project built for mobile for favorite places.

##

The user can:

- set title
- take an picture with camera on device
- set location for place, either with using location on device or by markning on map

The data i stored locally on the phone with Sqflite.

#### Google maps

###### For using location and map you will need a Google Maps Api Key.

- Create .env file in root folder and add "GOOGLE_API=<YOUR KEY>"

###### and one of the following:

- If you start project from command line `flutter run --dart-define GOOGLE_API=<YOUR KEY>`
  **or**
- Add to configurations in launch.json
  `"toolArgs": [
	"--dart-define",
	"GOOGLE_API=<YOUR KEY>"
]`
