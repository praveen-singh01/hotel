import 'package:flutter/material.dart';

import '../utils/theme.dart';

class FindStayList extends StatelessWidget {
  const FindStayList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 65),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 565,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => const FindStayCard(),
        ),
      ),
    );
  }
}

class FindStayCard extends StatelessWidget {
  const FindStayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 400,
        height: 556,
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/imagehotel.png',
                width: 400,
                height: 397,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Text(
                'Hotel Kaneyamaen and Bessho SASA',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Sora',
                      color: const Color(0xFFBBAACC),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Text(
                'Located at the base of Mount Fuji, Hotel\nKaneyamaen is a traitional japanese ryokan\n with a modern twist. Enjoy a private onsen \nbath and a private multi-course kaiseki dinner.',
                textAlign: TextAlign.justify,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 16,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
