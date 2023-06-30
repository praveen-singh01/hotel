import 'package:flutter/material.dart';

class DropdownRow extends StatelessWidget {
  const DropdownRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsetsDirectional.fromSTEB(64, 40, 64, 0),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          DropdownItem(
            initialvalue: "Max Price",
            width: 139,
            dropdownitem: [
              DropdownMenuItem(
                value: 'Max Price',
                child: Text(
                  'Max Price',
                ),
              ),
              DropdownMenuItem(
                value: 'Low Price',
                child: Text(
                  'Low Price',
                ),
              ),
            ],
          ),
          DropdownItem(
            initialvalue: "Shops",
            width: 102,
            dropdownitem: [
              DropdownMenuItem(
                value: 'Shops',
                child: Text(
                  'Shops',
                ),
              ),
              DropdownMenuItem(
                value: 'second',
                child: Text(
                  'second',
                ),
              ),
            ],
          ),
          DropdownItem(
            initialvalue: "Times",
            width: 98,
            dropdownitem: [
              DropdownMenuItem(
                value: 'Times',
                child: Text(
                  'Times',
                ),
              ),
              DropdownMenuItem(
                value: 'second',
                child: Text(
                  'Times',
                ),
              ),
            ],
          ),
          DropdownItem(
            initialvalue: "Airlines",
            width: 112,
            dropdownitem: [
              DropdownMenuItem(
                value: 'Airlines',
                child: Text(
                  'Airlines',
                ),
              ),
              DropdownMenuItem(
                value: 'second',
                child: Text(
                  'second',
                ),
              ),
            ],
          ),
          DropdownItem(
            initialvalue: "Seat class",
            width: 132,
            dropdownitem: [
              DropdownMenuItem(
                value: 'Seat class',
                child: Text(
                  'Seat class',
                ),
              ),
              DropdownMenuItem(
                value: 'second',
                child: Text(
                  'second',
                ),
              ),
            ],
          ),
          DropdownItem(
            initialvalue: "More",
            width: 92,
            dropdownitem: [
              DropdownMenuItem(
                value: 'More',
                child: Text(
                  'More',
                ),
              ),
              DropdownMenuItem(
                value: 'second',
                child: Text(
                  'second',
                ),
              ),
            ],
          )
        ]));
  }
}

class DropdownItem extends StatelessWidget {
  final double width;
  final double height;
  final String initialvalue;
  final List<DropdownMenuItem<String>> dropdownitem;

  const DropdownItem(
      {Key? key,
      required this.width,
      required this.initialvalue,
      required this.dropdownitem,
      this.height = 36})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: const Color(0xFFBBAACC), width: 2)),
        child: Center(
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              elevation: 0,
              value: initialvalue,
              style: const TextStyle(color: Color(0xFFBBAACC), fontSize: 16),
              onChanged: (String? val) {},
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Color(0xFFBBAACC),
                size: 24,
              ),
              items: dropdownitem,
            ),
          ),
        ),
      ),
    );
  }
}
