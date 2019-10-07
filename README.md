# weatheRX

An updated remake of [Tensor Programming's Weather App Series](https://www.youtube.com/watch?v=NnY4B7VK6e4&list=PLeLsYxj1gjvFjdKQOeGVNlXRVdDfotSym&index=1) for RX Command and RX Widgets. Hence the name of the project weatheRX.

## Getting Started

The initial dependencies were for Dart 2.4
-  cupertino_icons: ^0.1.2
-  rx_command: ^4.3.2+1
-  rx_widgets: ^2.2.0+1
-  geolocator: ^5.1.3
-  rxdart: ^0.22.2

The [5th video in the original series](https://www.youtube.com/watch?v=i4_VOKPnmLk&list=PLeLsYxj1gjvFjdKQOeGVNlXRVdDfotSym&index=5) explained the need for geolocator.

## Open Weather Map
The [API documentation for Cities in Cycle](https://openweathermap.org/current#cycle)

## Part 1 - Dart Classes for Json Responses
Instead of code generator, I simply use wrapper classes on top of Map<String,dynamic>, which I experiemented with in my b1simpflemobilewarehousing package.
b1simpflemobilewarehousing has an Entity Base class, which behaves as if were a map, and actually it extends MapBase, so it behaves exactly as a map. Behind the scene it has an internal member, which holds all the fields.
When creating a class
- Add a **T.fromMap(Map<String,dynamic> jsonMap) : super.fromMap(jsonMap);** named constructor where T is the name of the class. This is the only mandatory element.
- Then add optionally getters and setters for the fields; actually this is the main reason we are creating named classes to make Json string handling a lot easier.
- Then add optionally constructors at will.

This approach is not more verbose than using code generator. It has a lot more flexibilty than statically generated code: mapping integer to date, eliminating empty fields, checking dirtyness, for example. 
All these classes are defined in the citiesincycle_respose.dart and the citiesincycle_test.dart was used to experiment and test with a json file citiesincycle.json.
