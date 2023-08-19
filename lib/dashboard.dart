import 'package:ezpos/user_list.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import 'sales_list.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.02),
              Text(
                'Overview',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.02),
              Container(
                height: height * 0.2,
                child: Row(
                  children: [
                    Container(
                      width: width * 0.43,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UserList(),
                          ));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            primary: Colors.blueAccent),
                        child: Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person,
                                    color: Colors.white, size: 40),
                                SizedBox(height: 10),
                                Text(
                                  'Users',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: width * 0.43,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SalesList(),
                          ));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            primary: Colors.redAccent),
                        child: Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart,
                                    color: Colors.white, size: 40),
                                SizedBox(height: 10),
                                Text(
                                  'Sales',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                height: height * 0.2,
                child: Row(
                  children: [
                    Container(
                      width: width * 0.43,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            primary: Colors.greenAccent),
                        child: Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.chat_bubble,
                                    color: Colors.white, size: 40),
                                SizedBox(height: 10),
                                Text(
                                  'Messages',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: width * 0.43,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            primary: Colors.orangeAccent),
                        child: Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.settings,
                                    color: Colors.white, size: 40),
                                SizedBox(height: 10),
                                Text(
                                  'Settings',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: height * 0.60,
                child: BarChart(BarChartData(
                    borderData: FlBorderData(
                        border: Border(
                      top: BorderSide.none,
                      right: BorderSide.none,
                      left: BorderSide(width: 1),
                      bottom: BorderSide(width: 1),
                    )),
                    groupsSpace: 10,
                    barGroups: [
                      BarChartGroupData(x: 1, barRods: [
                        BarChartRodData(
                            toY: 10, width: 15, color: Colors.amber),
                      ]),
                      BarChartGroupData(x: 2, barRods: [
                        BarChartRodData(toY: 9, width: 15, color: Colors.amber),
                      ]),
                      BarChartGroupData(x: 3, barRods: [
                        BarChartRodData(toY: 8, width: 15, color: Colors.amber),
                      ]),
                      BarChartGroupData(x: 4, barRods: [
                        BarChartRodData(toY: 5, width: 15, color: Colors.amber),
                      ]),
                      BarChartGroupData(x: 5, barRods: [
                        BarChartRodData(
                            toY: 12, width: 15, color: Colors.amber),
                      ]),
                      BarChartGroupData(x: 6, barRods: [
                        BarChartRodData(
                            toY: 08, width: 15, color: Colors.amber),
                      ]),
                      BarChartGroupData(x: 7, barRods: [
                        BarChartRodData(
                            toY: 25, width: 15, color: Colors.amber),
                      ]),
                      BarChartGroupData(x: 8, barRods: [
                        BarChartRodData(
                            toY: 21, width: 15, color: Colors.amber),
                      ]),
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
