import 'dart:convert';
import 'package:b1simpflemobilewarehousing/b1simpflemobilewarehousing.dart';
class City extends EntityBase {
  static const ID = "id";
  static const NAME = "name";
  static const COORD = "coord";
  static List<City> fromCitiesInCycleResponse(String jsonString) {
    Map<String,dynamic> jsonMap = json.decode(jsonString);
    return List<City>.from(jsonMap["list"].map((x) => City.fromMap(x)));
  }
  City.fromMap(Map<String,dynamic> jsonMap) : super.fromMap(jsonMap);
  int get id {return this[ID];}
  set id(int v) {this[ID] = v;}
  DateTime get dt => DateTime.fromMillisecondsSinceEpoch(this["dt"]);
  set dt(DateTime d) {this["dt"] = d.millisecondsSinceEpoch;}
  String get name => this[NAME];
  set name(String s) {this[NAME] = s;}
  Coord get coord => Coord.fromMap(this[COORD]);
  set coord(Coord v) {this[COORD] = v;}
  Main get main => Main.fromMap(this["main"]);
}
class Coord extends EntityBase {
  static const LAT = "lat";
  static const LON = "lon";
  double get lat => this[LAT]; 
  double get lon => this[LON]; 
  set lat(double v) {this[LAT] = v;}
  set lon(double v) {this[LON] = v;}
  Coord.fromMap(Map<String,dynamic> jsonMap) : super.fromMap(jsonMap);
  Coord({double lat,double lon}) {
    this.lat = lat;
    this.lon = lon;
  }
}
class Main extends EntityBase {
  double get temp => this["temp"];
  int get pressure => this["pressure"];
  int get humidity => this["humidity"];
  double get tempMin => this["temp_min"];
  double get tempMax => this["temp_max"];
  Main.fromMap(Map<String,dynamic> jsonMap) : super.fromMap(jsonMap);
}

/*
            "dt": 1521204600,
            "wind": {
                "speed": 9.3,
                "deg": 120,
                "gust": 18
            },
            "sys": {
                "country": ""
            },
            "rain": null,
            "snow": null,
            "clouds": {
                "all": 75
            },
            "weather": [
                {
                    "id": 311,
                    "main": "Drizzle",
                    "description": "rain and drizzle",
                    "icon": "09d"
                }
            ]
        },
        {
*/

