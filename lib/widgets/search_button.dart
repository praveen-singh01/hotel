import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final VoidCallback buttonaction;
  const SearchButton({Key? key, required this.buttonaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 104,
      height: 48,
      child: ElevatedButton(
        autofocus: true,
        onPressed: buttonaction,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: const Color(0xFF605DEC),
          disabledBackgroundColor: const Color(0xFF605DEC),
          elevation: 3,
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(4)),
        ),
        child: const Text(
          'Search',
          style: TextStyle(
            fontFamily: 'Sora',
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
