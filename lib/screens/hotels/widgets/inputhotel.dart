// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:triploger/screens/hotels/models/search_hotel.dart';

import 'package:triploger/utils/theme.dart';
import 'package:triploger/widgets/search_button.dart';

class InputDropdownhotel extends StatefulWidget {
  const InputDropdownhotel({super.key});

  @override
  State<InputDropdownhotel> createState() => _InputDropdownhotelState();
}

// String date = 'Depart - Retur';
// final sfocontroller = TextEditingController();
// final nrtcontroller = TextEditingController();
// final departcontroller = TextEditingController();
final checkincontroller = TextEditingController();
final checkoutcontroller = TextEditingController();
final hotelnamecontroller = TextEditingController();

final adultcontroller = TextEditingController();
final childcontroller = TextEditingController();

class _InputDropdownhotelState extends State<InputDropdownhotel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsetsDirectional.fromSTEB(64, 40, 64, 0),
      padding: const EdgeInsetsDirectional.fromSTEB(64, 40, 20, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          InputField(
            label: '',
            width: 450,
            icon: Icons.flight_takeoff,
            controller: hotelnamecontroller,
            keybordtype: TextInputType.name,
            borderradious: 4,
            onchanged: (searchterm) async {},
          ),
          // InputField(
          //   label: 'NRT',
          //   width: 171,
          //   icon: Icons.flight_land_rounded,
          //   controller: nrtcontroller,
          //   keybordtype: TextInputType.name,
          // ),
          InputField2(
            label: 'Check in',
            width: 252,
            icon: Icons.calendar_today_rounded,
            controller: checkincontroller,
            keybordtype: TextInputType.name,
            borderradious: 0,
            ontap: () async {
              final DateTime? picked;
              FocusScope.of(context).requestFocus(new FocusNode());
              picked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2023, 12),
              );
              String selectedDate = DateFormat('yyyy/MM/dd').format(picked!);
              setState(() {
                checkincontroller.text = selectedDate;
              });

              print(selectedDate);
            },
          ),
          InputField2(
            label: 'Check out',
            width: 252,
            icon: Icons.calendar_today_rounded,
            controller: checkoutcontroller,
            keybordtype: TextInputType.name,
            borderradious: 0,
            ontap: () async {
              final DateTime? picked;
              FocusScope.of(context).requestFocus(new FocusNode());
              picked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2023, 12),
              );
              String selectedDate = DateFormat('yyyy/MM/dd').format(picked!);
              setState(() {
                checkoutcontroller.text = selectedDate;
              });

              print(selectedDate);
            },
          ),
          InputField2(
            label: '1 adult',
            width: 171,
            icon: Icons.person,
            controller: adultcontroller,
            keybordtype: TextInputType.number,
            borderradious: 0,
          ),
          InputField2(
            label: '1 Child',
            width: 171,
            icon: Icons.person,
            controller: childcontroller,
            keybordtype: TextInputType.number,
            borderradious: 0,
          ),
          SearchButton(
            buttonaction: () async {
              print("11111");
              await Provider.of<Hotels>(context, listen: false).searchhotelLive(
                  // adultcontroller.text,
                  childcontroller.text,
                  checkincontroller.text,
                  checkoutcontroller.text,
                  hotelnamecontroller.text);

              // String adults,String originCode,String destinationCode,String departureDate
            },
          ),
        ],
      ),
    );
  }

  Future<dynamic> searchhotelPostReq() async {}
}

// inputfield is ued to enter from and to part of search screen with auto prediction text.
class InputField extends StatefulWidget {
  final String label;
  final double width;
  final TextEditingController controller;
  final TextInputType keybordtype;
  final IconData icon;
  final double borderradious;
  final Function(String)? onchanged;
  final Function()? ontap;
  final int itemcount;
  final String result;

  InputField({
    super.key,
    required this.label,
    required this.width,
    required this.icon,
    required this.controller,
    required this.keybordtype,
    this.borderradious = 0,
    this.onchanged,
    this.ontap,
    this.itemcount = 0,
    this.result = '',
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  List<String> data = [];

  final searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Hotels('', '', '', '', ''),
          )
        ],
        child: Column(children: [
          Container(
              width: widget.width,
              height: 48,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 231, 231, 231),
                borderRadius: BorderRadius.circular(widget.borderradious),
              ),
              child: TypeAheadField(
                textFieldConfiguration: TextFieldConfiguration(
                  controller: searchcontroller,
                  autofocus: true,
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Sora',
                        color: const Color(0xFFBBAACC),
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Icon(
                        widget.icon,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    hintText: widget.label,
                    hintStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Sora',
                          color: const Color(0xFFBBAACC),
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 1, color: Colors.grey.shade300),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(widget.borderradious),
                            bottomLeft: Radius.circular(widget.borderradious))),
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                  ),
                ),
                suggestionsCallback: (pattern) async {
                  print(await Provider.of<Hotels>(context, listen: false)
                      .hotelSearch());
                  return Provider.of<Hotels>(context, listen: false)
                      .search(pattern);
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    leading: Icon(widget.icon),
                    title: Text(suggestion),
                  );
                },
                onSuggestionSelected: (suggestion) {
                  setState(() {
                    searchcontroller.text = suggestion;
                  });
                },
              )),
        ]));
  }
}

// textfield 2 is used to get the data in date selection and  the number of adults
class InputField2 extends StatelessWidget {
  final String label;
  final double width;
  final TextEditingController controller;
  final TextInputType keybordtype;
  final IconData icon;
  final double borderradious;
  final Function(String)? onchanged;
  final Function()? ontap;
  bool search;
  InputField2(
      {super.key,
      required this.label,
      required this.width,
      required this.icon,
      required this.controller,
      required this.keybordtype,
      this.borderradious = 0,
      this.onchanged,
      this.ontap,
      this.search = false});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: width,
        height: 48,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 231, 231, 231),
          borderRadius: BorderRadius.circular(0),
        ),
        child: TextField(
          autofocus: true,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Icon(
                icon,
                color: Colors.grey.shade600,
              ),
            ),
            hintText: label,
            hintStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Sora',
                  color: const Color(0xFFBBAACC),
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderradious),
                    bottomLeft: Radius.circular(borderradious))),
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
          ),
          controller: controller,
          onChanged: onchanged,
          onTap: ontap,
          style: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Sora',
                color: const Color(0xFFBBAACC),
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
          keyboardType: keybordtype,
          strutStyle: const StrutStyle(
            fontFamily: 'Sora',
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    ]);
  }
}
