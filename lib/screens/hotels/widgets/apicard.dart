//

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:triploger/screens/hotels/models/search_hotel.dart';

class HotelBuilder extends StatelessWidget {
  const HotelBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Hotels('', '', '', '', ''),
        )
      ],
      child: Container(
        width: 620,
        height: 1134,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: const Color.fromARGB(98, 167, 167, 167), width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        // child: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
              future: Provider.of<Hotels>(context, listen: true).Hotellist(),
              builder: (context, snapshot) => SizedBox(
                width: 618,
                height: 1132,
                child: ListView.separated(
                  itemCount: snapshot.hasData ? snapshot.data!.length : 0,
                  itemBuilder: (context, index) {
                    print("xxxxxxxvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv" +
                        snapshot.data![0]["properties"]["images"].toString());
                    if (snapshot.hasData) {
                      return SizedBox(
                          width: 618,
                          height: 283,
                          child: HotelDataCard1(
                              hotelname: snapshot.data![index]['properties']
                                  ['name'],
                              address: snapshot.data![index]['properties']
                                  ['address'],
                              price: snapshot.data![index]['rooms'][0]['price']
                                      ['basePrice']
                                  .toString(),

                              // price: 'price',
                              rating: 'Rating',
                              // images: "images",
                              images: (snapshot.data![0]["properties"]["images"]
                                      .toString()
                                      .isNotEmpty)
                                  ? snapshot.data![1]["properties"]["images"][0]
                                          ['url']
                                      .toString()
                                  : Image.asset("assets/images/hotels.jpg")
                                      .toString()));
                    } else {
                      return Container(
                        height: 1130,
                        width: 620,
                        color: Colors.amberAccent,
                        child: const Center(
                          child: Column(
                            children: [
                              CircularProgressIndicator(),
                              Text('No Flight fount')
                            ],
                          ),
                        ),
                      );
                    }
                  },
                  separatorBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(),
                  ),
                ),
              ),
            )
          ],
        ),
        // )
      ),
    );
  }
}

class HotelDataCard1 extends StatelessWidget {
  final String hotelname;
  final String address;
  final String price;
  final String rating;
  final String images;
  const HotelDataCard1(
      {super.key,
      required this.hotelname,
      required this.address,
      required this.price,
      required this.images,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    // print(images);
    // print(price);

    return Scaffold(
      body: Container(
        // color: Colors.white,

        width: 618,
        height: 283,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              color: Colors.white,
              // color: const Color.fromARGB(99, 27, 27, 80),
              width: 618,
              height: 283,
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Container(
                            //   color: Colors.red,
                            //   width: 80,
                            // ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          color: Colors.black,
                                          child: Image.network(images,
                                              fit: BoxFit.cover),

                                          width: 152,
                                          height: 206,
                                          // child:  // Replace with your hotel image asset
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        hotelname,
                                                        style: const TextStyle(
                                                          color:
                                                              Colors.deepPurple,
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 50,
                                                    ),
                                                    Text(
                                                      price,
                                                      // price as String,
                                                      // style: TextStyle(
                                                      //     fontSize: 32,
                                                      //     fontWeight:
                                                      //         FontWeight.w800,
                                                      //     color: Color.fromARGB(
                                                      //         255,
                                                      //         14,
                                                      //         77,
                                                      //         129)),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(height: 4),
                                                const Row(
                                                  children: [
                                                    Text(
                                                      '4.3',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(
                                                      "(4,875)",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color.fromARGB(
                                                              255,
                                                              163,
                                                              149,
                                                              25)),
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text("Excellent location",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    163,
                                                                    149,
                                                                    25))),
                                                    SizedBox(
                                                      width: 50,
                                                    ),
                                                    Text("flight+hotel",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    163,
                                                                    149,
                                                                    25))),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        address,
                                                        // 'J. P. Nagar, Bengaluru, Karnataka 560078',
                                                        style: const TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    6,
                                                                    69,
                                                                    121)),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 50,
                                                    ),
                                                    const Text(
                                                      'per person|night',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color.fromARGB(
                                                              255, 6, 69, 121)),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 17),
                                                Row(
                                                  children: [
                                                    const Column(
                                                      children: [
                                                        SizedBox(
                                                          width: 50,
                                                        ),
                                                        Text(
                                                          'free breakfast',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      25,
                                                                      80,
                                                                      126)),
                                                        ),
                                                        Text(
                                                          "pool         ",
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      25,
                                                                      80,
                                                                      126)),
                                                        ),
                                                        Text(
                                                          'parking       ',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      25,
                                                                      80,
                                                                      126)),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Column(
                                                      children: [
                                                        Text(
                                                          "free wifi",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      25,
                                                                      80,
                                                                      126)),
                                                        ),
                                                        Text(
                                                          "Air condition",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      25,
                                                                      80,
                                                                      126)),
                                                        ),
                                                        Text(
                                                          "Restaurant",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      25,
                                                                      80,
                                                                      126)),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      width: 90,
                                                      height: 40,
                                                    ),
                                                    SizedBox(
                                                      height: 48,
                                                      width: 124,
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          // print('Button pressed ...');
                                                        },
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          backgroundColor:
                                                              const Color(
                                                                  0xFF605DEC),
                                                          elevation: 3,
                                                        ),
                                                        child: const Text(
                                                          'Select room',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: Colors.white,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
