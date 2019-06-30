import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PolicyDetailScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  PolicyDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(228, 228, 228, 1),
      appBar: AppBar(
        elevation: 0,
        key: _scaffoldKey,
        iconTheme: IconThemeData(
          color: Color.fromRGBO(0, 57, 70, 1),
        ),
        title: Text(
          'Policy Details',
          style: TextStyle(
            color: Color.fromRGBO(0, 57, 70, 1),
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                height: 48,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: TabBar(
                    indicatorColor: Color.fromRGBO(234, 171, 0, 1),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 3.0,
                    // labelPadding: EdgeInsets.zero,
                    labelColor: Color.fromRGBO(0, 57, 70, 1),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    tabs: [
                      Tab(
                        text: 'Info & Billing',
                      ),
                      Tab(
                        text: 'Coverage',
                      ),
                      Tab(
                        text: 'Investment-Linked',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Stack(
                                fit: StackFit.passthrough,
                                children: <Widget>[
                                  Container(
                                    height: 110,
                                    width: double.infinity,
                                    child: Image.asset(
                                      'assets/life_banner.jpg',
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      'Sun Architect',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Color.fromRGBO(0, 57, 70, 1),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        'Policy No: 201491780',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(117, 117, 117, 1),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                               decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.2), offset: Offset(0, 2), blurRadius: 4, spreadRadius: 0),
                                ],
                              ),
                              height: 80,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () => print('contact pressed'),
                                        child: Container(
                                          width: 80,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Transform.rotate(
                                                angle: 3.14 / 2, // 180 degrees
                                                child: Icon(
                                                  FontAwesomeIcons.phone,
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  size: 19,
                                                  color: Color.fromRGBO(
                                                      0, 57, 70, 1),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Contact Advisor',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(
                                                        0, 57, 70, 1),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    VerticalDivider(),
                                    Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () =>
                                            print('switch funds pressed'),
                                        child: Container(
                                          width: 80,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(
                                                FontAwesomeIcons.exchangeAlt,
                                                textDirection:
                                                    TextDirection.rtl,
                                                size: 19,
                                                color: Color.fromRGBO(
                                                    0, 57, 70, 1),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Switch Funds',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(
                                                        0, 57, 70, 1),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    VerticalDivider(),
                                    Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () =>
                                            print('allocation pressed'),
                                        child: Container(
                                          width: 80,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(
                                                FontAwesomeIcons.chartPie,
                                                textDirection:
                                                    TextDirection.rtl,
                                                size: 19,
                                                color: Color.fromRGBO(
                                                    0, 57, 70, 1),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Edit Future Allocation',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color.fromRGBO(
                                                        0, 57, 70, 1),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    VerticalDivider(),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                               decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.2), offset: Offset(0, 2), blurRadius: 4, spreadRadius: 0),
                                ],
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    color: Color.fromRGBO(117, 137, 87, 1),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Billing',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: <Widget>[
                                        buildRow(
                                            'Premium Due Date', '1 Jan 2018'),
                                        SizedBox(height: 15),
                                        buildRow(
                                            'Modal Premium and Regular Contribution',
                                            'HKD 2,000'),
                                        SizedBox(height: 15),
                                        buildRow('Payment Mode', 'Annually'),
                                        SizedBox(height: 15),
                                        buildRow('Payment Method', 'Autopay'),
                                        SizedBox(height: 15),
                                        buildRow('Bank Account', '253 ****'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.2), offset: Offset(0, 2), blurRadius: 4, spreadRadius: 0),
                                ],
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    color: Color.fromRGBO(117, 137, 87, 1),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          'Information',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: <Widget>[
                                        buildRow(
                                            'Dividend Option', 'Taken as Cash'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Center(child: Text('Coverage')),
                    Center(child: Text('Investment'))
                  ],
                  // controller: _controller,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Row buildRow(String key, String value) {
  if (value == null) {
    return Row();
  } else {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          key,
          style: TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(117, 117, 117, 1),
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(117, 117, 117, 1),
          ),
        ),
      ],
    );
  }
}
