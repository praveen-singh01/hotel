import 'package:flutter/material.dart';
import 'package:triploger/widgets/signup_button.dart';

import '../utils/theme.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Appbar buttons
          AppbarButtons(label: 'Flight'),
          AppbarButtons(label: 'Hotels'),
          AppbarButtons(label: 'Packages'),
          AppbarButtons(label: 'Car Rentals'),
          AppbarButtons(label: 'Flight'),
          Padding(
              padding: EdgeInsetsDirectional.fromSTEB(36, 0, 0, 0),
              child: SignupButton()),
        ],
      ),
    );
  }
}

class AppbarButtons extends StatelessWidget {
  final String label;
  const AppbarButtons({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(36, 0, 0, 0),
        child: Text(
          'Hotels',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Sora',
                color: const Color(0xFFBBAACC),
                fontSize: 16,
              ),
        ));
  }
}
