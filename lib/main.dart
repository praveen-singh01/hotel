// ------------
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:triploger/screens/flights/home_screen/home.dart';

import 'package:triploger/screens/flights/search_screen/search.dart';
import 'package:triploger/screens/hotels/models/search_hotel.dart';
import 'package:triploger/screens/hotels/search_hotels.dart';
import 'package:triploger/screens/hotels/searchduplicate.dart';

import 'package:triploger/utils/scroll_controll.dart';

import 'screens/hotels/widgets/apicard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Hotels('', '', '', '', ''),
        ),
        // ChangeNotifierProvider(create: (context) => ,)
      ],
      child: MaterialApp(
          scrollBehavior: MyCustomScrollBehavior(),
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: Searchduplicate()),
    );
  }
}
