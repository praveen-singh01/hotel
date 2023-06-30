import 'package:flutter/material.dart';

import '../utils/theme.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 558,
          padding: const EdgeInsets.fromLTRB(317, 00, 90, 61),
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 96, 0, 0),
                    child: Text(
                      'About',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Sora',
                            color: const Color(0xFFBBAACC),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Textbutton(title: 'About Tripma', buttonaction: () {}),
                  Textbutton(title: 'How it works', buttonaction: () {}),
                  Textbutton(title: 'Careers', buttonaction: () {}),
                  Textbutton(title: 'Press', buttonaction: () {}),
                  Textbutton(title: 'Blog', buttonaction: () {}),
                  Textbutton(title: 'Forum', buttonaction: () {}),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 96, 0, 0),
                    child: Text(
                      'Partner with us',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Sora',
                            color: const Color(0xFFBBAACC),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Textbutton(
                      title: 'Partnership programs', buttonaction: () {}),
                  Textbutton(title: 'Affiliate program', buttonaction: () {}),
                  Textbutton(
                      title: 'Connectivity partners', buttonaction: () {}),
                  Textbutton(
                      title: 'Promotions and events', buttonaction: () {}),
                  Textbutton(title: 'Integrations', buttonaction: () {}),
                  Textbutton(title: 'Community', buttonaction: () {}),
                  Textbutton(title: 'Loyalty program', buttonaction: () {}),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Text(
                      '',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Sora',
                            color: const Color(0xFFBBAACC),
                            fontSize: 16,
                          ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 96, 0, 0),
                    child: Text(
                      'Support',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Sora',
                            color: const Color(0xFFBBAACC),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Textbutton(title: 'Help Center', buttonaction: () {}),
                  Textbutton(title: 'Contact us', buttonaction: () {}),
                  Textbutton(title: 'Privacy policy', buttonaction: () {}),
                  Textbutton(title: 'Terms of service', buttonaction: () {}),
                  Textbutton(title: 'Trust and safety', buttonaction: () {}),
                  Textbutton(title: 'Accessibility', buttonaction: () {}),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(12, 96, 0, 0),
                    child: Text(
                      'Get the app',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Sora',
                            color: const Color(0xFFBBAACC),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Textbutton(title: 'Tripma for Android', buttonaction: () {}),
                  Textbutton(title: 'Tripma for iOS', buttonaction: () {}),
                  Textbutton(title: 'Mobile site', buttonaction: () {}),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(130, 0, 120, 39),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/pathtwitter.png',
                      height: 20,
                      width: 20,
                    )),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/Unioninstagram.png',
                      height: 20,
                      width: 20,
                    )),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/icon.png',
                      height: 20,
                      width: 20,
                    )),
              ]),
              const Text(
                '@2023 Triploger incorporated',
                style: TextStyle(
                  color: Color(0xFFBBAACC),
                  fontSize: 16,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Textbutton extends StatelessWidget {
  final String title;
  final VoidCallback buttonaction;
  const Textbutton(
      {super.key, required this.title, required this.buttonaction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
      child: TextButton(
        onPressed: buttonaction,
        child: Text(
          title,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Sora',
                color: const Color(0xFFBBAACC),
                fontSize: 16,
              ),
        ),
      ),
    );
  }
}
