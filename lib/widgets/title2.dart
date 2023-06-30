import 'package:flutter/material.dart';

import '../utils/theme.dart';

// find place  widget
class Title2 extends StatelessWidget {
  final String title;
  const Title2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 26, 0, 26),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: const AlignmentDirectional(-1, -1),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(64, 20, 0, 0),
              child: Text(
                title,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Sora',
                      color: const Color(0xFFBBAACC),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'All',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: const Color(0xFFBBAACC),
                      fontSize: 24,
                    ),
              ),
              IconButton(
                color: FlutterFlowTheme.of(context).primaryBackground,
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                  color: Color(0xFFBBAACC),
                  size: 24,
                ),
                onPressed: () {
                  // print('IconButton pressed ...');
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
