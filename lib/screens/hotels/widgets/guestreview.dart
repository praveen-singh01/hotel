import 'package:flutter/material.dart';

Widget category(BuildContext context, String title, String value) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.3,
    // color: Colors.red,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [Text(title), const Icon(Icons.arrow_upward_rounded)],
              ),
            ),
            Text(value)
          ],
        ),
        // SizedBox(
        //   width: 150,
        //   height: 10,
        //   child: LinearProgressIndicator(
        //     value: 0.7,
        //     backgroundColor: Colors.white,
        //     valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
        //   ),
        // )
        Container(
          height: 8,
          // width: 24,
          width: MediaQuery.of(context).size.width * 0.28,
          decoration: const BoxDecoration(color: Colors.deepPurple),
        )
      ],
    ),
  );
}

Widget topicbutton(String title) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.grey[700]!),
        ),
      ),
    ),
    onPressed: () {},
    child: Text(
      '+   ' + title,
      style: TextStyle(color: Colors.grey[800]),
    ),
  );
}

Widget review(String title, String desc) {
  return Card(
    elevation: 10,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Icon(Icons.account_circle_outlined),
                Text(title)
              ],
            ),
            Text(desc),
            const SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {},
                child: const Text('Read More >',
                    style: TextStyle(
                      color: Colors.deepPurple,
                    )))
          ],
        ),
      ),
    ),
  );
}
