import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:triploger/screens/hotels/models/search_hotel.dart';

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
        child: Provider.of<Hotels>(context).searchloading
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : const Text(
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
