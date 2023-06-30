import 'package:flutter/material.dart';

import '../../../../utils/theme.dart';

class hotelListTable extends StatelessWidget {
  const hotelListTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 840,
        height: 1132,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => const hotelDataCard(),
        ));
  }
}

class hotelDataCard extends StatelessWidget {
  const hotelDataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          color: const Color.fromARGB(100, 246, 246, 254),
          width: 620,
          height: 580,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(90, 11, 0, 0),
                      child: Container(
                        width: 55,
                        height: 48,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: const Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    '4:15PM',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'Sora',
                                      color: Color(0xFF27273F),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'COK',
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  color: Color(0xFFBBAACC),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(367, 0, 0, 0),
                      child: Text(
                        'round trip',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFFBBAACC),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const FlightDetails(),
              const FlightDetails(),
              Padding(
                padding: const EdgeInsets.fromLTRB(469, 32, 0, 19),
                child: SizedBox(
                  width: 120,
                  child: SizedBox(
                      height: 48,
                      width: 124,
                      child: ElevatedButton(
                        onPressed: () {
                          // print('Button pressed ...');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: Colors.white,
                          elevation: 3,
                        ),
                        child: const Text(
                          'Show Details',
                          style: TextStyle(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFF605DEC),
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          // color: Colors.black,
                          width: 100,
                          child: Image.asset(
                              'assets/images/hotels.jpg'), // Replace with your hotel image asset
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Text(
                                      'The Woodrobe',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromARGB(255, 14, 77, 129)),
                                    ),
                                    SizedBox(
                                      width: 200,
                                    ),
                                    Text(
                                      "\$624",
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w800,
                                          color:
                                              Color.fromARGB(255, 14, 77, 129)),
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
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      "(4,875)",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(
                                              255, 163, 149, 25)),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text("Excellent location",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                                255, 163, 149, 25))),
                                    SizedBox(
                                      width: 130,
                                    ),
                                    Text("flight+hotel",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                                255, 163, 149, 25))),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'J. P. Nagar, Bengaluru, Karnataka 560078',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromARGB(255, 6, 69, 121)),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      'per person|night',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromARGB(255, 6, 69, 121)),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                Row(
                                  children: [
                                    const Column(
                                      children: [
                                        SizedBox(
                                          width: 130,
                                        ),
                                        Text(
                                          'free breakfast',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 25, 80, 126)),
                                        ),
                                        Text(
                                          "pool         ",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 25, 80, 126)),
                                        ),
                                        Text(
                                          'parking       ',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 25, 80, 126)),
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
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 25, 80, 126)),
                                        ),
                                        Text(
                                          "Air condition",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 25, 80, 126)),
                                        ),
                                        Text(
                                          "Restaurant",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 25, 80, 126)),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 109,
                                      height: 40,
                                    ),
                                    SizedBox(
                                      height: 48,
                                      width: 124,
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
                                          backgroundColor:
                                              const Color(0xFF605DEC),
                                          elevation: 3,
                                        ),
                                        child: const Text(
                                          'Select room',
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
    ]);
  }
}

class FlightDetails extends StatelessWidget {
  const FlightDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset(
                  'assets/images/image 25image25.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '7:00AM  - 4:15PM',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                Text(
                  'BLR',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '45m',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Sora',
                        color: const Color(0xFF27273F),
                        fontSize: 16,
                      ),
                ),
                Text(
                  'Direct',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFFBBAACC),
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
            child:
                Text('\$624', style: FlutterFlowTheme.of(context).bodyMedium),
          ),
        ],
      ),
    );
  }
}

class Table extends StatelessWidget {
  const Table({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center();
  }
}
