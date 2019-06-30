import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hkclientapp/shared/shared.dart';

class DashboardScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      drawer: new SideMenuWidget(),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/dashboard_bg.png'),
                  fit: BoxFit.cover),
            ),
          ),
          SafeArea(
            top: true,
            bottom: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 60,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            iconSize: 20,
                            icon: Icon(
                              FontAwesomeIcons.bars,
                              color: Color.fromRGBO(0, 57, 70, 1),
                            ),
                            onPressed: () {
                              _scaffoldKey.currentState.openDrawer();
                            },
                          ),
                          Container(
                            height: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Good Afternoon',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(0, 57, 70, 1),
                                  ),
                                ),
                                Text(
                                  'Rebecca',
                                  style: TextStyle(
                                    fontSize: 20,
                                    height: 0.75,
                                    color: Color.fromRGBO(0, 57, 70, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            iconSize: 20,
                            icon: Icon(
                              FontAwesomeIcons.solidBell,
                              color: Color.fromRGBO(0, 57, 70, 1),
                            ),
                            onPressed: () {
                              // Navigator.pushReplacementNamed(context, '/');
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(58),
                        border: Border.all(
                          color: Color.fromRGBO(0, 57, 70, 1),
                        ),
                      ),
                      height: 58,
                      width: 58,
                      child: Icon(
                        FontAwesomeIcons.solidUser,
                        color: Color.fromRGBO(0, 57, 70, 1),
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.18),
                      ),
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () => print('manage funds pressed'),
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 19,
                                        width: 19,
                                        child: Image.asset(
                                          'assets/manage_funds.png',
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Managed Funds',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(0, 57, 70, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            VerticalDivider(
                              color: Color.fromRGBO(234, 171, 0, 0.40),
                            ),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () => print('claims pressed'),
                                child: Container(
                                  width: 80,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.paste,
                                        textDirection: TextDirection.rtl,
                                        size: 19,
                                        color: Color.fromRGBO(0, 57, 70, 1),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Claims',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(0, 57, 70, 1),
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Container(
                                        height: 22,
                                        width: 47,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(234, 120, 0, 1),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Text(
                                          'New',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            height: 1.20,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            VerticalDivider(
                              color: Color.fromRGBO(234, 171, 0, 0.40),
                            ),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () => print('all policies pressed'),
                                child: Container(
                                  width: 80,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.solidFileAlt,
                                        textDirection: TextDirection.rtl,
                                        size: 19,
                                        color: Color.fromRGBO(0, 57, 70, 1),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'All Policies',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(0, 57, 70, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      color: Color.fromRGBO(213, 117, 61, 1),
                      height: 36,
                      width: double.infinity,
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: Text(
                              'Total Coverage from 4 policies',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 47,
                            width: 47,
                            child: Image.asset(
                              'assets/sunlife_sun.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () => print('manage funds pressed'),
                                  child: Container(
                                    width: 143,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(41),
                                            border: Border.all(
                                              color:
                                                  Color.fromRGBO(0, 57, 70, 1),
                                            ),
                                          ),
                                          height: 41,
                                          width: 41,
                                          child: Icon(
                                            FontAwesomeIcons.heartbeat,
                                            color: Color.fromRGBO(0, 57, 70, 1),
                                            size: 22,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Life',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(0, 57, 70, 1),
                                          ),
                                        ),
                                        Text(
                                          'HKD 6,146,066',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(0, 57, 70, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () => print('manage funds pressed'),
                                  child: Container(
                                    width: 143,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(41),
                                            border: Border.all(
                                              color:
                                                  Color.fromRGBO(0, 57, 70, 1),
                                            ),
                                          ),
                                          height: 41,
                                          width: 41,
                                          child: Icon(
                                            FontAwesomeIcons.stethoscope,
                                            color: Color.fromRGBO(0, 57, 70, 1),
                                            size: 22,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Critical Illness',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(0, 57, 70, 1),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              'up to',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color.fromRGBO(
                                                    0, 57, 70, 1),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              'HKD 1,000,000*',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromRGBO(
                                                    0, 57, 70, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 31,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () => print('manage funds pressed'),
                                  child: Container(
                                    //  width: 143,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(41),
                                            border: Border.all(
                                              color:
                                                  Color.fromRGBO(0, 57, 70, 1),
                                            ),
                                          ),
                                          height: 41,
                                          width: 41,
                                          child: Icon(
                                            FontAwesomeIcons.hospital,
                                            color: Color.fromRGBO(0, 57, 70, 1),
                                            size: 22,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Medical & Hosp',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(0, 57, 70, 1),
                                          ),
                                        ),
                                        Wrap(
                                          direction: Axis.vertical,
                                          children: <Widget>[
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  'up to:',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color.fromRGBO(
                                                        0, 57, 70, 1),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Text(
                                                  'HKD 721,800/year',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(
                                                        0, 57, 70, 1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () => print('manage funds pressed'),
                                  child: Container(
                                    width: 143,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(41),
                                            border: Border.all(
                                              color:
                                                  Color.fromRGBO(0, 57, 70, 1),
                                            ),
                                          ),
                                          height: 41,
                                          width: 41,
                                          child: Icon(
                                            FontAwesomeIcons.stethoscope,
                                            color: Color.fromRGBO(0, 57, 70, 1),
                                            size: 22,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Critical Illness',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(0, 57, 70, 1),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              'up to',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color.fromRGBO(
                                                    0, 57, 70, 1),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              'HKD 1,000,000*',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromRGBO(
                                                    0, 57, 70, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '*additional coverages detailed in provision',
                        style: TextStyle(
                            fontSize: 12, color: Color.fromRGBO(0, 57, 70, 1)),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
                        color: Color.fromRGBO(74, 114, 149, 1),
                        height: 36,
                        width: double.infinity,
                        child: Stack(
                          children: <Widget>[
                            Center(
                              child: Text(
                                'Total Assets - HKD 255,039',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              child: Icon(
                                FontAwesomeIcons.dollarSign,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'HKD 10,539',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromRGBO(0, 57, 70, 1),
                                        ),
                                      ),
                                      Text(
                                        'Investment-inked',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(0, 57, 70, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                  Icon(
                                    FontAwesomeIcons.chevronRight,
                                    color: Color.fromRGBO(0, 57, 70, 1),
                                    size: 21,
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'HKD 161,688',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromRGBO(0, 57, 70, 1),
                                        ),
                                      ),
                                      Text(
                                        'Savings',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(0, 57, 70, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                  Icon(
                                    FontAwesomeIcons.chevronRight,
                                    color: Color.fromRGBO(0, 57, 70, 1),
                                    size: 21,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
