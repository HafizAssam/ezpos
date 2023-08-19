import 'package:ezpos/login1.dart';
import 'package:ezpos/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    var _value = '-1';

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(18),
          height: height,
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                          },
                          icon: Icon(Icons.arrow_back)),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.08,
                  ),

                  Container(
                      height: height * 0.08,
                      width: width * 0.08,
                      child: Image.asset('assets/EZPOS__logo.png')),
                  // Image(image: 'assets/EZPOS logo.jpg'),
                  SizedBox(
                    width: 04,
                  ),
                  Text(
                    'Welcome to EZPOS POS!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: height * 0.05),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'First name',
                  hintText: 'Enter your First Name',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 177, 23, 23)),
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
              ),
              SizedBox(height: height * 0.03),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  hintText: 'Enter your last name',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 177, 23, 23)),
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
              ),
              SizedBox(height: height * 0.03),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone',
                  hintText: 'Enter your phone number',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 177, 23, 23)),
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
              ),
              SizedBox(height: height * 0.03),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Shop Name',
                  hintText: 'Enter your shop name',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 177, 23, 23)),
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
              ),
              SizedBox(height: height * 0.03),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Shop Address ',
                  hintText: 'Enter your shop address',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 177, 23, 23)),
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
              ),
              SizedBox(height: height * 0.03),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'NTN ',
                  hintText: 'Enter your NTN number',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 177, 23, 23)),
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
              ),
              SizedBox(height: height * 0.03),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'CNIC',
                  hintText: 'Enter your CNIC',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 177, 23, 23)),
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
              ),
              SizedBox(height: height * 0.03),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'IRIS Password',
                  hintText: 'Enter your IRIS Password ',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 177, 23, 23)),
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
              ),
              SizedBox(height: height * 0.03),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 177, 23, 23)),
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
              ),
              SizedBox(height: height * 0.03),
              DropdownButtonFormField(
                decoration: InputDecoration(
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
                value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text('Refered By'),
                    value: '-1',
                  ),
                  DropdownMenuItem(
                    child: Text('Rahat'),
                    value: '1',
                  ),
                  DropdownMenuItem(
                    child: Text('Zubair'),
                    value: '2',
                  ),
                  DropdownMenuItem(
                    child: Text('Amma Tower Union'),
                    value: '3',
                  ),
                  DropdownMenuItem(
                    child: Text('Khalid'),
                    value: '4',
                  ),
                  DropdownMenuItem(
                    child: Text('LRB'),
                    value: '5',
                  ),
                  DropdownMenuItem(
                    child: Text('getEZPOS'),
                    value: '6',
                  ),
                  DropdownMenuItem(
                    child: Text('yahya'),
                    value: '7',
                  ),
                  DropdownMenuItem(
                    child: Text('Urwa'),
                    value: '8',
                  ),
                  DropdownMenuItem(
                    child: Text('M.HN'),
                    value: '9',
                  ),
                  DropdownMenuItem(
                    child: Text('Other'),
                    value: '10',
                  ),
                  DropdownMenuItem(
                    child: Text(''),
                    value: '11',
                  ),
                  DropdownMenuItem(
                    child: Text(''),
                    value: '12',
                  ),
                ],
                onChanged: (v) {},
              ),
              SizedBox(height: height * 0.03),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter username',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 177, 23, 23)),
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
              ),
              SizedBox(height: height * 0.03),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter user password',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 177, 23, 23)),
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
              ),
              SizedBox(height: height * 0.03),
              SizedBox(
                height: height * 0.07,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => dashboard(),
                    // ));
                  },
                  child: Text('Sign Up!', style: TextStyle(fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Colors.pinkAccent,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
