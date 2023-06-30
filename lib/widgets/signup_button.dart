import 'package:flutter/material.dart';

class SignupButton extends StatefulWidget {
  const SignupButton({super.key});

  @override
  State<SignupButton> createState() => _SignupButtonState();
}

class _SignupButtonState extends State<SignupButton> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 102,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),

                  // backgroundColor: Color.fromRGBO(250, 250, 250, 50),
                  content: Form(
                      child: Column(
                    children: [
                      const Text("Sign up for Trip Logger"),
                      const SizedBox(
                        height: 55,
                      ),
                      TextFormField(
                        // / controller: _emailcontroller,
                        decoration: const InputDecoration(
                            hintText: "Email or phone number"),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      // / controller: _passcontroller,
                      TextFormField(
                        decoration: const InputDecoration(hintText: "Password"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CheckboxListTile(
                        title: const Text('I agree the terms and condition'),
                        value: this.value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: const Text('Send me the latest deal alerts'),
                        value: this.value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          primary: const Color.fromARGB(255, 15, 107, 182),
                          minimumSize: const Size.fromHeight(60), // NEW
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Create Account',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          // primary: const Color.fromARGB(255, 15, 107, 182),
                          minimumSize: const Size.fromHeight(40), // NEW
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Signup with google',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 15, 107, 182)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          // primary: const Color.fromARGB(255, 15, 107, 182),
                          minimumSize: const Size.fromHeight(40), // NEW
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Signup with facebook',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 15, 107, 182)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          // primary: const Color.fromARGB(255, 15, 107, 182),
                          minimumSize: const Size.fromHeight(40), // NEW
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Signup with Apple',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 15, 107, 182)),
                        ),
                      ),
                    ],
                  )),
                );
              });
        },
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: const Color(0xFF605DEC),
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
        child: const Text(
          'Sign up',
          style: TextStyle(fontFamily: 'Sora', color: Colors.white),
        ),
      ),

      // child: ElevatedButton(
      //   onPressed: () {

      //   },
      //   style: ElevatedButton.styleFrom(
      //       padding: EdgeInsets.zero,
      //       backgroundColor: const Color(0xFF605DEC),
      //       elevation: 3,
      //       shape:
      //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
      //   child: const Text(
      //     'Sign up',
      //     style: TextStyle(fontFamily: 'Sora', color: Colors.white),
      //   ),
      // ),
    );
  }
}
