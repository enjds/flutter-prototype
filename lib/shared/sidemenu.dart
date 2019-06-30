import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideMenuWidget extends StatefulWidget {
  SideMenuWidget({Key key}) : super(key: key);

  _SideMenuWidgetState createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(0, 57, 70, 1),
        child: SafeArea(
          top: true,
          bottom: true,
          child: ListView(
            padding: EdgeInsets.all(15),
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
                        FontAwesomeIcons.times,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/');
                      },
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(color: Colors.white)),
                            height: 45,
                            width: 45,
                            child: Icon(
                              FontAwesomeIcons.solidUser,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                leading: Icon(
                  FontAwesomeIcons.home,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w200),
                ),
                onTap: () => Navigator.pushReplacementNamed(context, '/dashboard'),
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                leading: Icon(
                  FontAwesomeIcons.copy,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'My Policies',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w200),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/policy-list');
                },
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                leading: Icon(
                  FontAwesomeIcons.chartLine,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'Investment-Linked Fund Prices',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w200),
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                leading: Icon(
                  FontAwesomeIcons.random,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'Exchange Rates',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w200),
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                leading: Icon(
                  FontAwesomeIcons.fileAlt,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'Policy Documents',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w200),
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                leading: Icon(
                  FontAwesomeIcons.book,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'Financial Glossary',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w200),
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                leading: Icon(
                  FontAwesomeIcons.phoneSquare,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'Contact/Find Us',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w200),
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                leading: Icon(
                  FontAwesomeIcons.cog,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w200),
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                dense: true,
                contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                leading: Icon(
                  FontAwesomeIcons.solidComment,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  'Feedback',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w200),
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                dense: true,
                title: Text(
                  'SIGN OUT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/', (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
