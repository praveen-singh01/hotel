import 'package:flutter/material.dart';
import 'package:triploger/screens/hotels/widgets/Houserule.dart';

class Extra extends StatelessWidget {
  const Extra({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1100,
      width: 1318,
      color: Colors.white,
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'House Rules',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              ),
              button()
            ],
          ),
          const Text(
            'SPLENDID SHUBHAM SERVICE APARTMENTS TAKES SPECIAL REQUEST - ADD IN NEXT STEP',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Column(
                children: [
                  houseRow(const Icon(Icons.login), 'Check-in',
                      'Available 24 hrs', 50),
                  const SizedBox(
                    height: 20,
                  ),
                  houseRow(const Icon(Icons.logout_sharp), 'Check-out',
                      'until 12:00', 50),
                  const SizedBox(
                    height: 20,
                  ),
                  houseRow(
                      const Icon(Icons.info),
                      'Cancellation/\nprepayment',
                      'Cancellation and prepayment policies vary accordingly',
                      80),
                  const SizedBox(
                    height: 0,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.people),
                              Text(
                                'Children and beds',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 265,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Child Policies',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                  'Child of any age are welcome. \n children aged 18 years and  above are considered  adult at this property'),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Cost and Extra Bed Policies',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.bed_outlined),
                                      Text(
                                        'Extra Bed upon request  Rs 1,000 per person',
                                        style: TextStyle(fontSize: 11),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                  'Prices of extra bed are not  included in the total price'),
                              const Text(
                                  'The amount of total beds you  choose depend upon option you choose'),
                              const Text(
                                  'All extra beds are subjected  to availability')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  houseRow(const Icon(Icons.man), 'No-Age restrictions',
                      'Their is no age requirement for checkin', 60),
                  houseRow(
                      const Icon(Icons.attach_money_sharp),
                      'Accepted payment \n methods',
                      'Splendid shubham serviced apartments accepts these card and reserves the right to  to temporarily hold an  an amount',
                      150),
                  houseRow(const Icon(Icons.celebration_outlined), 'Parties',
                      'Parties/events are not allowed', 90),
                  houseRow(const Icon(Icons.pets_outlined), 'Pets',
                      'Pets are not allowed', 90),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
