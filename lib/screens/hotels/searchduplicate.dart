import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:triploger/screens/hotels/widgets/apicard.dart';
import 'package:triploger/screens/hotels/widgets/hoteldetails.dart';

import 'package:triploger/screens/hotels/widgets/inputhotel.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:triploger/widgets/desktop_appbar.dart';
import 'package:triploger/widgets/dropdown_row.dart';

import '../../../widgets/desktop_footer.dart';

class Searchduplicate extends StatefulWidget {
  const Searchduplicate({super.key});

  @override
  State<Searchduplicate> createState() => _SearchduplicateState();
}

class _SearchduplicateState extends State<Searchduplicate> {
  List<dynamic> hotels = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            child: Column(children: [
          const DesktopAppBar(),

          const InputDropdownhotel(),
          // dropdown menu for sorting
          const DropdownRow(),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(76),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 620,
                  height: 2109,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Suggested destinations",
                          style: GoogleFonts.sora(
                            fontSize: 17,
                            color: const Color.fromARGB(255, 15, 107, 182),
                            fontWeight: FontWeight.w500,
                          )),
                      Text("Based on ypur recent searches and location",
                          style: GoogleFonts.sora(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 15, 107, 182),
                            fontWeight: FontWeight.w500,
                          )),
                      Container(
                        // color: Colors.black,
                        width: 800,
                        height: 250,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 200,
                              width: 200,
                              child: Image.asset("assets/images/hotels.jpg"),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Container(
                              // color: Colors.white,
                              width: 10,
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text("Search Result",
                          style: GoogleFonts.sora(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 15, 107, 182),
                            fontWeight: FontWeight.w500,
                          )),
                      Text("based on your seaches results are 122",
                          style: GoogleFonts.sora(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 15, 107, 182),
                            fontWeight: FontWeight.w500,
                          )),
                      HotelBuilder(),

                      SizedBox(
                        height: 20,
                      ),
                      // hotelDataCard(),

                      // const hotelDataCard()
                    ],
                  ),
                ),
                const SizedBox(width: 105),
                SizedBox(
                  height: 912,
                  child: Container(
                    width: 559,
                    height: 912,
                    color: Colors.black,
                    child: Image.asset(
                      "assets/images/map.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          DesktopFooter()

          // const Column(
          //   children: [SizedBox(height: 0), DesktopFooter()],
          // ),
        ])));
  }
}
