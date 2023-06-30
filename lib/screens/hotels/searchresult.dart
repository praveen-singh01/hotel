import 'package:flutter/material.dart';
import 'package:triploger/screens/hotels/widgets/houserulebox.dart.dart';
import 'package:triploger/screens/hotels/widgets/guestreview.dart';

import 'package:triploger/widgets/desktop_appbar.dart';
import 'package:triploger/widgets/desktop_footer.dart';

class Suggestedplaces extends StatelessWidget {
  const Suggestedplaces({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      'Single Room',
      'Double Room',
      'Deluxe Room',
      'Suite Room',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const DesktopAppBar(),
          const SizedBox(
            height: 40,
          ),
          Padding(
            // padding: EdgeInsets.all(76.0),
            padding: const EdgeInsetsDirectional.fromSTEB(90, 0, 70, 0),
            child: Container(
              height: 96,
              width: 1440,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 48,
                    width: 177,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // print('Button pressed ...');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: const Color(0xFF605DEC),
                          elevation: 3,
                        ),
                        child: const Text(
                          '1 Hotel selected',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  SizedBox(
                    height: 48,
                    width: 172,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // print('Button pressed ...');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 231, 208, 6),
                          elevation: 3,
                        ),
                        child: const Text(
                          '2 Select room',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  SizedBox(
                    height: 48,
                    width: 389,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // print('Button pressed ...');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 231, 208, 6),
                          elevation: 3,
                        ),
                        child: const Text(
                          '3 Select flight and fill passenger information',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  SizedBox(
                    height: 48,
                    width: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // print('Button pressed ...');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 231, 208, 6),
                          elevation: 3,
                        ),
                        child: const Text(
                          '4 payment',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(90, 20, 0, 0),
            child: Row(children: [
              Text(
                "Home",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
              SizedBox(
                width: 20,
              ),
              Text(">",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue)),
              SizedBox(
                width: 20,
              ),
              Text("Search result",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue)),
              SizedBox(
                width: 20,
              ),
              Text(">",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue)),
              SizedBox(
                width: 20,
              ),
              Text("Search result detailed page",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(33, 150, 243, 1)))
            ]),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(90, 10, 0, 0),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.black,
                        width: 890,
                        height: 650,
                        child: Image.asset(
                          'assets/images/hotel1.PNG',
                          fit: BoxFit.cover,
                        ), // Replace with your hotel image asset
                      ),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'splendid shubham serviced apartment',
                                    style: TextStyle(
                                        fontSize: 46,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.blueAccent),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'No 57, SHUBHAM ENCLAVE, 4th Cross Rd, Panduranga Nagar, Bengaluru, Karnataka 560076',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blueAccent),
                                  ),
                                  const SizedBox(height: 10),
                                  const Row(
                                    children: [
                                      Text('4.3',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 163, 149, 25))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('(4,876)',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 163, 149, 25))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('Excellent Location ',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 163, 149, 25))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  const Text(
                                    "You're eligible for a Genius discount at SPLENDID SHUBHAM SERVICED APARTMENTS! To save at this property, all you have to do is sign in.Situated in Bangalore in the Karnataka region, SPLENDID SHUBHAM SERVICED APARTMENTS features accommodation with free WiFi and free private parking.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(height: 20),
                                  const Text(
                                    'Learn More >',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18,
                                        color: Colors.blue),
                                  ),
                                  const SizedBox(height: 40),
                                  SizedBox(
                                    height: 48,
                                    width: 462,
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              60, 0, 40, 0),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // print('Button pressed ...');
                                        },
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          backgroundColor: const Color.fromARGB(
                                              255, 54, 100, 170),
                                          elevation: 3,
                                        ),
                                        child: const Text(
                                          'Book Now',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ))),
                    ]),
                const SizedBox(
                  height: 50,
                ),

                // listviewbuilder

                SizedBox(
                  height: 500,
                  child: ListView.separated(
                    itemCount: list.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 40,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(22),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: const Color(0xFFE2E2EB),
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/room.PNG',
                              fit: BoxFit.cover,
                              height: 152,
                              width: 263,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              list.elementAt(index),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Benifits",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    Icon(Icons.add)
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "sleep",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    Icon(Icons.add)
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Bad preference",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    Icon(Icons.add)
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Room facilities",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    Icon(Icons.add)
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              // width: 200,
                              // color: Colors.amber,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Text("data"),
                                  SizedBox(
                                    width: 200,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        backgroundColor: const Color.fromARGB(
                                            255, 54, 100, 170),
                                        elevation: 3,
                                      ),
                                      child: const Text(
                                        "Reserve(price per night)",
                                        style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.zero,

                  // color: Colors.black,
                  child: Image.asset(
                    "assets/images/map2.PNG",
                    fit: BoxFit.cover,
                    height: 650,
                    width: 1312,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Container(
                    height: 1182,
                    width: 1312,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Container(
                              //   // color: Colors.black,
                              //   width: 890,
                              //   height: 650,
                              //   child: Image.asset(
                              //     'assets/images/hotel1.PNG',
                              //     fit: BoxFit.cover,
                              //   ), // Replace with your hotel image asset
                              // ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'Facilities of SPLENDID SHUBHAM SERVICED APARTMENT ',
                                            style: TextStyle(
                                                fontSize: 32,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.blueAccent),
                                          ),
                                          const SizedBox(
                                            width: 140,
                                          ),
                                          SizedBox(
                                            height: 27,
                                            width: 250,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(60, 0, 40, 0),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  // print('Button pressed ...');
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  padding: EdgeInsets.zero,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0),
                                                  ),
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 54, 100, 170),
                                                  elevation: 3,
                                                ),
                                                child: const Text(
                                                  'See Availability',
                                                  style: TextStyle(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        'Great Facilities ! Review Score, 9.1',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blueAccent),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        'Most popular facilities',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blueAccent),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 30,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                              children: const [
                                                WidgetSpan(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.0),
                                                    child: Icon(
                                                        Icons.wifi_2_bar_sharp),
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: 'Free wifi',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255,
                                                            163,
                                                            149,
                                                            25))),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 35,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                              children: const [
                                                WidgetSpan(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.0),
                                                    child: Icon(Icons
                                                        .airport_shuttle_outlined),
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: 'Airport Shuttle',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255,
                                                            163,
                                                            149,
                                                            25))),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 35,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                              children: const [
                                                WidgetSpan(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.0),
                                                    child: Icon(
                                                        Icons.smoking_rooms),
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: 'Non-smoking rooms',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255,
                                                            163,
                                                            149,
                                                            25))),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 35,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                              children: const [
                                                WidgetSpan(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.0),
                                                    child: Icon(
                                                        Icons.family_restroom),
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: 'Family room',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255,
                                                            163,
                                                            149,
                                                            25))),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 35,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                              children: const [
                                                WidgetSpan(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.0),
                                                    child: Icon(Icons
                                                        .local_parking_outlined),
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: 'Free parking',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255,
                                                            163,
                                                            149,
                                                            25))),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 35,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                              children: const [
                                                WidgetSpan(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.0),
                                                    child: Icon(
                                                        Icons.help_rounded),
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: '24-hour front desk',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255,
                                                            163,
                                                            149,
                                                            25))),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 35,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                              children: const [
                                                WidgetSpan(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.0),
                                                    child: Icon(
                                                        Icons.launch_outlined),
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: 'Laundary',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255,
                                                            163,
                                                            149,
                                                            25))),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 30,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                              children: const [
                                                WidgetSpan(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.0),
                                                    child: Icon(
                                                        Icons.free_breakfast),
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: 'breakfast',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Color.fromARGB(
                                                            255,
                                                            163,
                                                            149,
                                                            25))),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      Container(
                                          height: 944,
                                          width: 1258,
                                          color: Colors.white,
                                          child: const Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(40, 0, 50, 0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(Icons
                                                            .local_parking_outlined),
                                                        Text('Parking ',
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Text(
                                                        'Free private parking is possible on site .',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black)),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(Icons
                                                            .wifi_2_bar_outlined),
                                                        Text('Internet',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Text(
                                                        'WiFi is available in the rooms and is free of charge.',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black)),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(Icons.kitchen),
                                                        Text('Kitchen',
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Stovetop',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Oven',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Microwave',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Electric kettle',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('KItchen',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Washing MAchine',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Kitchenware',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Refrigerator',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Kitchenete',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(Icons
                                                            .bedroom_parent),
                                                        Text('Bedroom ',
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text(
                                                            'Wardrobe or closet',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(Icons
                                                            .bathroom_outlined),
                                                        Text('Bathroom ',
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Toilet paper',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Towel',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Sheet',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Bath or shower',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Private Bathroom',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Toilet',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Free toiletries',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Shower',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(Icons
                                                            .check_circle_rounded),
                                                        Text('Living Area ',
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('dining area',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Sofa',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Seating area',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                            Icons
                                                                .check_circle_rounded,
                                                            size: 20.0,
                                                            color: Colors
                                                                .blueAccent),
                                                        Text('Desk',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black)),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 100,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          // Icon(Icons.me),
                                                          Text(
                                                              'Media and Technology',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text(
                                                              'Streaming service',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('Flat-Screen TV',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('Cable Channels',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text(
                                                              'Sattelite Channels',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('Radio',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('Tv',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(Icons
                                                              .wifi_2_bar_outlined),
                                                          Text('Room Aminities',
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text(
                                                              'Socket near the bed',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text(
                                                              'Drying rack for clothing',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('Clothes Rack',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('Soundproofing',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('Heating',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('Fan',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text(
                                                              'Ironing Facilities',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('Iron',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.kitchen),
                                                          Text('Accessibility',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text(
                                                              'Entire unit wheelchair accessible',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text(
                                                              'Upper floors accessible by elevator',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(Icons
                                                              .bedroom_parent),
                                                          Text('Outdoors ',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('Balcony',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('Terrace',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(Icons
                                                              .bathroom_outlined),
                                                          Text(
                                                              'Outdoor & View ',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('City view',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('Viewl',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(Icons
                                                              .check_circle_rounded),
                                                          Text(
                                                              'Building Characteristics',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .check_circle_rounded,
                                                              size: 20.0,
                                                              color: Colors
                                                                  .blueAccent),
                                                          Text('Detached',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black)),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 100,
                                              ),
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                // Icon(Icons.me),
                                                                Text(
                                                                    'Transport',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'Shuttle service',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text('Car hire',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'Airport shuttle',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(Icons
                                                                    .wifi_2_bar_outlined),
                                                                Text(
                                                                    'Reception Services',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'Invoice provided',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'Currency exchange',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    '24-hour frint-desk',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(Icons
                                                                    .kitchen),
                                                                Text(
                                                                    'Cleaning Services',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'Daily housekeeping',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'Trouser-press',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'Ironing service',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'Dry Cleaning',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text('Laundry',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(Icons
                                                                    .bedroom_parent),
                                                                Text(
                                                                    'Miscellaneous ',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'Air Conditioning',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'Soundproof rooms',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text('lift',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'Family rooms',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'Non-smoking rooms',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(Icons
                                                                    .bathroom_outlined),
                                                                Text(
                                                                    'Safety and Security ',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'CCTV outside property',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'CCTV in common area',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    '24-hour Security',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text(
                                                                    'Safety deposit box',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(Icons
                                                                    .check_circle_rounded),
                                                                Text(
                                                                    'Language Spoken',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text('Hindi',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text('English',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text('Kannada',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text('Malyalam',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text('Tamil',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                    Icons
                                                                        .check_circle_rounded,
                                                                    size: 20.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                                Text('Telgu',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black)),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ]),
                                            ],
                                          ))
                                    ]),
                              ))
                            ]),
                      ],
                    )),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 800,
              width: 1312,
              color: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Guest Reviews',
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 27,
                                width: 250,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      60, 0, 40, 0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // print('Button pressed ...');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      backgroundColor: const Color.fromARGB(
                                          255, 54, 100, 170),
                                      elevation: 3,
                                    ),
                                    child: const Text(
                                      'See Availability',
                                      style: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                color: Colors.deepPurple,
                                child: const Center(
                                  child: Text(
                                    '9.0',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                'Superb',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 73, 37, 135),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                '49 reviews',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                'Read All reviews',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                  'Categories',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    category(context, 'Staff', '8.9'),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    category(context, 'Facilities', '9.1'),
                                    // category(context, 'Cleanliness', '9.3')
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    category(context, 'Comfort', '9.5'),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    category(context, 'Value For Money', '8.7'),
                                    // category(context, 'Location', '9.1')
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    'Select Topics to read reviews',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      topicbutton('Clean'),
                                      const SizedBox(
                                        width: 35,
                                      ),
                                      topicbutton('Location'),
                                      const SizedBox(
                                        width: 35,
                                      ),
                                      topicbutton('Bed'),
                                      const SizedBox(
                                        width: 25,
                                      ),
                                      topicbutton('Kitchen'),
                                      const SizedBox(
                                        width: 35,
                                      ),
                                      topicbutton('Bathroom'),
                                      const SizedBox(
                                        width: 35,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                  'See What guests loved the most',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    review('Sahil',
                                        'The places is centrally located. Good parking spaces, the rooms with ac'),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    review('Ashish',
                                        'Size of the apertment, all facilities for long term stay including washing machine'),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    review('Sridhar',
                                        'Stay was overall excellent. very neet apartment with good facilities like AC,TV'),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 40,
                                  width: 120,
                                  color: Colors.deepPurple,
                                  child: const Center(
                                    child: Text(
                                      'Read all Reviews',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  )),
            ),
          ),
          const SizedBox(height: 30),
          // MyHomePage(),
          const Extra(),

          // SizedBox(height: 30),
          // MyHomePage(),
          const DesktopFooter(),
        ]),
      ),
    );
  }
}
