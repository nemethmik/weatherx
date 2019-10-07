// import 'dart:convert';
import 'dart:io';
import 'package:test/test.dart';
import 'package:weatherx/citiesincycle_response.dart';

void main() {
  test('Read JSON File', () async {
    final file = new File('test/citiesincycle.json');
    final List<City> cityList = City.fromCitiesInCycleResponse(await file.readAsString());
    expect(cityList.first.id, 2641549);
    expect(cityList.first.name, 'Newtonhill');
    print("Coord: Latitude ${cityList.first.coord.lat}");
    //Testing mutability of member structure
    Coord coord = Coord(lat:99.99,lon: 88.88);
    cityList.first.coord = coord;
    print("City: ${cityList.first}");
    print("Humidity: ${cityList.first.main.humidity}");
    print("Date: ${cityList.first.dt}");
    print("Last City Date: ${cityList.last.dt}");
  });
}