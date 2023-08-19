import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dashboard.dart';
import 'signup_page.dart';

class LoginPage extends StatelessWidget {
  var email = '';
  var person_id = '';
  Future<void> main(BuildContext context) async {
    var headers = {
      'Content-Type': 'application/json',
    };
    var request =
        http.Request('POST', Uri.parse('http://localhost:3000/login'));
    request.body =
        json.encode({"username": "$email", "person_id": "$person_id"});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Dashboard(),
      ));
      print(await response.stream.bytesToString());
      print("Login Successfully ");
    } else {
      print(response.reasonPhrase);
      print("failed");
    }
  }

  //  var email = '';
  // var person_id = '';
  // bool _obscuretext = true;

  // Future<void> _makeLoginRequest(BuildContext context) async {
  //   try {
  //     var headers = {
  //       'Content-Type': 'application/json',
  //     };

  //     var requestBody = {
  //       "username": email,
  //       "person_id": person_id,
  //     };

  //     var response = await http.post(
  //       Uri.parse('http://localhost:3000/login'),
  //       headers: headers,
  //       body: json.encode(requestBody),
  //     );

  //     if (response.statusCode == 200) {
  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => Dashboard(),
  //       ));
  //       print(await response.stream.bytesToString());
  //       print("Login Successfully");
  //     } else {
  //       print(response.reasonPhrase);
  //       print("Login failed");
  //     }
  //   } catch (error) {
  //     print("Error during API call: $error");
  //     // Handle error, show a snackbar, etc.
  //   }
  //  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    bool _obscuretext = true;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: height * 0.30,
                    child: Image.asset('assets/EZPOS__logo.png')),
                SizedBox(height: height * 0.05),
                Text(
                  'Welcome Back!',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height * 0.05),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 177, 23, 23)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  onChanged: (value) => {email = value},
                ),
                SizedBox(height: height * 0.03),
                TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        // setState(() => _obscuretext =! _obscuretext);
                      },
                      child: Icon(_obscuretext
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  onChanged: (value) => {email = value},
                  obscureText: _obscuretext,
                ),
                SizedBox(height: height * 0.05),
                SizedBox(
                  height: height * 0.07,
                  width: double.infinity,
                  child:
                      //     ElevatedButton(
                      //   onPressed: () async {
                      //     await _makeLoginRequest(context);
                      //   },
                      //   child: Text('LOGIN', style: TextStyle(fontSize: 18)),
                      //   style: ElevatedButton.styleFrom(
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(30),
                      //     ),
                      //     primary: Colors.blue,
                      //   ),
                      // ),

                      ElevatedButton(
                    onPressed: () async {
                      await main(context);
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => Dashboard(),
                      // ));
                    },
                    child: Text('LOGIN', style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ),
                SizedBox(height: height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignupPage(),
                        ));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
