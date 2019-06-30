import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hkclientapp/shared/shared.dart';
import 'package:hkclientapp/mocks/mocks.dart';

class PolicyListScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  PolicyListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(228, 228, 228, 1),
      drawer: new SideMenuWidget(),
      appBar: AppBar(
        key: _scaffoldKey,
        iconTheme: IconThemeData(
          color: Color.fromRGBO(0, 57, 70, 1),
        ),
        title: Text(
          'Policy List',
          style: TextStyle(
            color: Color.fromRGBO(0, 57, 70, 1),
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: ListView.builder(
          itemCount: policies.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  print('card tapped --> $index');
                  Navigator.pushNamed(context, '/policy-detail');
                },
                child: buildCard(index));
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Text(
          '*excluding pending fund transactions',
          style: TextStyle(
            color: Color.fromRGBO(117, 117, 117, 1),
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Padding buildCard(int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(3)),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.2),
                offset: Offset(0, 2),
                blurRadius: 4,
                spreadRadius: 0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        policies[index].policyName,
                        style: TextStyle(
                            color: Color.fromRGBO(74, 114, 149, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        'Policy No.: ' + policies[index].policyNo,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(0, 57, 70, 1),
                        ),
                      ),
                      Text(
                        'Status: ' + policies[index].policyStatus,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(0, 57, 70, 1),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.chevronRight,
                        color: Color.fromRGBO(228, 228, 228, 1),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              buildRow(
                  'Contribution Amount', policies[index].contributionAmount),
              buildRow('Surrender Value*', policies[index].surrenderValue),
              buildRow('Sum Assured', policies[index].sumAssured),
              buildRow('Fund Balance*', policies[index].fundBalance),
              buildRow('Premium Due Date', policies[index].premiumDueDate),
            ],
          ),
        ),
      ),
    );
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
}
