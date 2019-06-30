import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Contact/ Find Us',
            style: TextStyle(
              color: Color.fromRGBO(0, 57, 70, 1),
            ),
          ),
          actions: <Widget>[
            IconButton(
              iconSize: 20,
              icon: Icon(
                FontAwesomeIcons.times,
                color: Color.fromRGBO(0, 57, 70, 1),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            )
          ],
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          child: SingleChildScrollView(
            child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/financial_cafe_map.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'At Sun Life Financial, our client service staff and consultants are always ready to serve you.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(117, 117, 117, 1),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Financial Café',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromRGBO(0, 57, 70, 1),
                                ),
                              ),
                              Text(
                                '8/F Sun Life Tower',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(117, 117, 117, 1),
                                ),
                              ),
                              Text(
                                'The Gateway, 15 Canton Road',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(117, 117, 117, 1),
                                ),
                              ),
                              Text(
                                'Kowloon, Hong Kong',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(117, 117, 117, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Hours',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromRGBO(0, 57, 70, 1),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        'Monday-Friday:',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                        ),
                                      ),
                                      Text(
                                        'Saturday:',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                        ),
                                      ),
                                      Text(
                                        'Sunday & Holidays:',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        '9:00 am - 6:00 pm',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                        ),
                                      ),
                                      Text(
                                        '9:00 am - 1:00 pm',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                        ),
                                      ),
                                      Text(
                                        'Closed',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'MTR',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromRGBO(0, 57, 70, 1),
                                ),
                              ),
                              Text(
                                'Tsim Sha Tsui Station, Exit A1',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(117, 117, 117, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color.fromRGBO(117, 117, 117, 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Client Services Hotline',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromRGBO(0, 57, 70, 1),
                                ),
                              ),
                              Text(
                                '(852) 2103 8928',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(117, 117, 117, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Hours',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromRGBO(0, 57, 70, 1),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        'Monday-Friday:',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                        ),
                                      ),
                                      Text(
                                        'Saturday:',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                        ),
                                      ),
                                      Text(
                                        'Sunday & Holidays:',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        '9:00 am - 6:00 pm',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                        ),
                                      ),
                                      Text(
                                        '9:00 am - 1:00 pm',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                        ),
                                      ),
                                      Text(
                                        'Closed',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              OutlineButton(
                borderSide: BorderSide(
                  width: 1.0,
                  color: Color.fromRGBO(0, 57, 70, 1),
                ),
                child: Text(
                  'Call',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(0, 57, 70, 1),
                  ),
                ),
                onPressed: () {},
              ),
              OutlineButton(
                borderSide: BorderSide(
                  width: 1.0,
                  color: Color.fromRGBO(0, 57, 70, 1),
                ),
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(0, 57, 70, 1),
                  ),
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
