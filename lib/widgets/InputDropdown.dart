import 'package:flutter/material.dart';
import 'package:triploger/widgets/search_button.dart';

import '../utils/theme.dart';

class InputDropdown extends StatelessWidget {
  const InputDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(64, 40, 64, 0),
      // padding: EdgeInsetsDirectional.fromSTEB(start, top, end, bottom),

      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          InputField(
              label: 'l',
              width: 400,
              icon: Icons.flight_takeoff,
              buttonaction: () {}),
          InputField(
              label: 'checkin',
              width: 252,
              icon: Icons.calendar_today_sharp,
              buttonaction: () {}),
          InputField(
              label: 'Checkout',
              width: 252,
              icon: Icons.calendar_today_rounded,
              buttonaction: () {}),
          InputField(
              label: '1 adult',
              width: 171,
              icon: Icons.person,
              buttonaction: () {}),
          InputField(
              label: '1 child',
              width: 171,
              icon: Icons.person,
              buttonaction: () {}),
          SearchButton(
            buttonaction: () {},
          ),
        ],
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String label;
  final double width;
  final VoidCallback buttonaction;
  final IconData icon;
  const InputField(
      {super.key,
      required this.label,
      required this.width,
      required this.buttonaction,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 48,
      child: ElevatedButton(
        onPressed: buttonaction,
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            elevation: 3,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(4))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 15,
            ),
            const SizedBox(width: 10),
            Text(
              label,
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Sora',
                    color: const Color(0xFFBBAACC),
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
