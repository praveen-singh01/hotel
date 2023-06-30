import 'package:flutter/material.dart';

import '../../../../utils/theme.dart';

class hotelListTable extends StatelessWidget {
  const hotelListTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 840,
        height: 1150,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => const DataCard(),
        ));
  }
}

class DataCard extends StatelessWidget {
  const DataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            color: const Color.fromARGB(100, 246, 246, 254),
            width: 840,
            height: 300,
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              90, 11, 0, 0),
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
                ])),
      ],
    );
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
