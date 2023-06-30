// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Hotels with ChangeNotifier {
  List<String> hotels = [];
  List<String> cities = [];
  List<dynamic> hotellist = [];

  dynamic accessToken = '';
  List listOfhotel = [];
  List<dynamic> searchresult = [];
  int resultcount = 0;
  bool searchloading = false;
  bool searchdata = false;
  late final String category;
  late final String cityid;
  late final String hotelid;
  late final String name;
  late final String giataid;
  // final String state = 'state';
  Hotels(
    this.category,
    this.cityid,
    this.hotelid,
    this.name,
    this.giataid,
  );
  List<String> get airportsz {
    return [...hotels];
  }

  hotelSearch() async {
    final url = Uri.parse(
        'https://hotelsystem-fd8ec-default-rtdb.firebaseio.com/cities.json');
    final responce = await http.get(url);
    final responcedata = await jsonDecode(responce.body);
    // print(responce.body);
    final citylist = responcedata["-NZAQeMM51LkZuIKfXh3"]['data']['cities'];

    // print(citylist);
    // print("1111111");
    List<String> listOfcity = [];
    for (Map<String, dynamic> city in citylist) {
      // String hotelName = hotel['name'];
      String cityName = city['name'];
      hotels.add(cityName);
    }

    print('List of airports$listOfcity');
  }
// hotelstaticapi..............................................................................

  // hotelSearch() async {
  //   final url = Uri.parse(
  //       'https://hotelsystem-fd8ec-default-rtdb.firebaseio.com/hotelstaticdetails.json');
  //   final responce = await http.get(url);
  //   final responcedata = await jsonDecode(responce.body);
  //   // print(responce.body);
  //   final hotellist =
  //       responcedata["-NZ5JJHFiu8IwX9W3bMZ"]['data']['Hotels']['properties'];

  //   print(hotellist);
  //   print("1111111");
  //   List<String> listOfhotel = [];
  //   for (Map<String, dynamic> hotel in hotellist) {
  //     // String hotelName = hotel['name'];
  //     String cityName = hotel['location']['cityName'];
  //     hotels.add(cityName);
  //   }
  // for (Map<String, dynamic> hotel in hotellist) {

  //   // hotels.add(map['properties']["name"]);
  // }

  //   print('List of airports$listOfhotel');
  // }

  List<String> search(String searchText) {
    List<String> results = [];
    for (String cityName in hotels) {
      if (cityName.toLowerCase().startsWith(searchText.toLowerCase())) {
        results.add(cityName);
      }
    }
    return results;
  }
// hotelnamee..................................................................
  // hotelSearch() async {
  //   final url = Uri.parse(
  //       'https://hotelsystem-fd8ec-default-rtdb.firebaseio.com/hotelname.json');
  //   final responce = await http.get(url);
  //   final responcedata = await jsonDecode(responce.body);
  //   List<dynamic> hotellist = responcedata['-NYS6hnoQHyutb15hR4X']['hotels'];

  //   List<String> listOfhotel = [];
  //   for (Map<String, dynamic> map in hotellist) {
  //     hotels.add(map["name"]);
  //   }

  //   print('List of airports$listOfhotel');
  // }

  // List<String> search(String searchText) {
  //   List<String> results = [];
  //   for (String string in hotels) {
  //     if (string.toLowerCase().startsWith(searchText.toLowerCase())) {
  //       results.add(string);
  //     }
  //   }
  //   return results;
  // }

  Future<List> Hotellist() async {
    listOfhotel = searchresult;
    notifyListeners();
    return listOfhotel;
  }

  Future<List> searchhotelLive(String checkindate, String checkoutdate,
      String cityid, String text) async {
    searchdata = false;
    searchloading = true;
    notifyListeners();
    String username = 'mrizwan@technofly.org';
    String password = '123@Technofly';
    String basicAuth =
        'Basic ${base64.encode(utf8.encode('$username:$password'))}';
    final Uri url = Uri.parse('http://api2-test.multireisen.com/gettoken');
    Response responce = await get(
      url,
      headers: {
        'authorization': basicAuth,
        "Content-Type": "text/plain",
        "Accept-Encoding": "gzip, deflate, br",
        "Accept": "application/json",
      },
    );
    final r = jsonDecode(responce.body);
    accessToken = r['accessToken'];
    print(accessToken);
    final xx = await hotelSearchPostRequest(checkindate, checkoutdate, cityid);
    searchloading = false;
    notifyListeners();
    return xx;
  }

  Future<List<dynamic>> hotelSearchPostRequest(
    String cityid,
    String checkindate,
    String checkoutdate,
  ) async {
    String username = 'mrizwan@technofly.org';
    String password = '123@Technofly';
    String basicAuth =
        'Basic ${base64.encode(utf8.encode('$username:$password'))}';
    // print("22222222");
    final url = Uri.parse(
        'http://api2-test.multireisen.com/hotels/search?mapmarkers=0');

    Response responce = await post(url,
        headers: {
          'authorization': basicAuth,
          "AccessToken": accessToken,
          "Version": "v1",
          "Content-Type": "application/json",
          "Accept-Encoding": "gzip, deflate, br",
          "Accept": "application/json",
        },
        body: jsonEncode({
          "cityId": "103078",
          "checkIn": "2023-08-05",
          "checkOut": "2023-08-10",
          "rooms": [
            {
              "roomType": "double",
              "children": ["8", "1"]
            }
          ],
          "category": "0",
          "nationality": "DE",
          "searchTimeout": "60"
        }));
    // print("3333333333");

    final result = jsonDecode(responce.body);
    // print("444");
    // print(result);
    int resultcount = result["data"]["properties"]["totalcount"];
    searchresult = result["data"]["entities"];
    // print("object");
    // print(resultcount);
    // print(searchresult);
    await getdata();
    await getSearchlength();
    // print(result);
    searchdata = true;
    notifyListeners();

    return searchresult;
  }

  Future<List> getdata() async {
    return await searchresult;
  }

  int getSearchlength() {
    Future.delayed(Duration(seconds: 2));
    return resultcount;
  }
}

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';

// class Airports with ChangeNotifier {
//   List<String> airports = [];
//   dynamic accessToken = '';
//   // List<String> _airportsname = [];
//   final String code;
//   final String country;
//   final String iata;
//   final String name;
//   final String state = 'state';
//   Airports(
//     this.code,
//     this.country,
//     this.iata,
//     this.name,
//   );
//   List<String> get airportsz {
//     return [...airports];
//   }

//   Future<List<String>> airportSearch() async {
//     final url = Uri.parse(
//         'https://postmanapidata-default-rtdb.firebaseio.com/airports.json');
//     final responce = await http.get(url);
//     final responcedata = await jsonDecode(responce.body);
//     List<dynamic> airportlist =
//         responcedata['-NXuSQn-SCh2E83KgWmC']['airports'];
//     // print(airportlist);
//     List<String> listOfairport = [];
//     for (Map<String, dynamic> map in airportlist) {
//       airports.add(map["name"]);
//     }

//     // print(airports);
//     return listOfairport;
//   }

//   List<String> search(String searchText) {
//     List<String> results = [];
//     for (String string in airports) {
//       if (string.toLowerCase().startsWith(searchText.toLowerCase())) {
//         results.add(string);
//       }
//     }
//     return results;
//   }

//   searchFlightLive() async {
//     try {
//       String username = 'mrizwan@technofly.org';
//       String password = '123@Technofly';
//       String basicAuth =
//           'Basic ${base64.encode(utf8.encode('$username:$password'))}';
//       final Uri url = Uri.parse('http://api2-test.multireisen.com/gettoken');
//       Response responce = await get(
//         url,
//         headers: {
//           'authorization': basicAuth,
//           "Content-Type": "text/plain",
//           "Accept-Encoding": "gzip, deflate, br",
//           "Accept": "application/json",
//         },
//       );
//       final r = jsonDecode(responce.body);
//       accessToken = r['accessToken'];
//       notifyListeners();
//       print('Response body: $accessToken');
//       flightSearchPostRequest();
//     } catch (err) {
//       print(err.toString());
//     }
//   }

//   flightSearchPostRequest() async {
//     String username = 'mrizwan@technofly.org';
//     String password = '123@Technofly';
//     String basicAuth =
//         'Basic ${base64.encode(utf8.encode('$username:$password'))}';

//     final url =
//         Uri.parse('http://api2-test.multireisen.com/flights/onestepsearch');

//     Response responce = await post(url,
//         headers: {
//           'authorization': basicAuth,
//           "AccessToken": accessToken,
//           "Version": "v1",
//           "Content-Type": "application/json",
//           "Accept-Encoding": "gzip, deflate, br",
//           "Accept": "application/json",
//         },
//         body: jsonEncode({
//           "adults": "2",
//           "children": ["8", "1"],
//           "segments": [
//             {
//               "originCode": "BER",
//               "destinationCode": "PAR",
//               "departureDate": "2023-08-12",
//               "departureTime": "0"
//             },
//             {
//               "originCode": "PAR",
//               "destinationCode": "BER",
//               "departureDate": "2023-08-22",
//               "departureTime": "0"
//             }
//           ],
//           "flexSearch": "0",
//           "stops": "-1",
//           "class": "0"
//         }));
//     print(responce.body);
//   }
// }

