import 'package:cupertino_store/Model/List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartComponent extends StatefulWidget {
  const CartComponent({Key? key}) : super(key: key);

  @override
  State<CartComponent> createState() => _CartComponentState();
}

class _CartComponentState extends State<CartComponent> {
  DateTime CurrentDateTime = DateTime.now();
  TimeOfDay CurrentTime = TimeOfDay.now();

  List AllMonth = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'august',
    'September',
    'October',
    'November',
    'December'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Shopping Cart",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: CupertinoColors.black),
              ),
              SizedBox(
                height: 10,
              ),
              CupertinoTextField(
                prefix: Icon(
                  CupertinoIcons.person_fill,
                  color: CupertinoColors.black,
                ),
                prefixMode: OverlayVisibilityMode.always,
                placeholder: "Name",
                placeholderStyle: TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                style: TextStyle(color: CupertinoColors.black),
              ),
              SizedBox(
                height: 5,
              ),
              CupertinoTextField(
                prefix:
                    Icon(CupertinoIcons.mail_solid, color: CupertinoColors.black),
                prefixMode: OverlayVisibilityMode.always,
                placeholder: "Email",
                placeholderStyle: TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                style: TextStyle(color: CupertinoColors.black),
              ),
              SizedBox(
                height: 5,
              ),
              CupertinoTextField(
                prefix: Icon(CupertinoIcons.location_solid,
                    color: CupertinoColors.black),
                prefixMode: OverlayVisibilityMode.always,
                placeholder: "Location",
                placeholderStyle: TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                style: TextStyle(color: CupertinoColors.black),
              ),
              SizedBox(
                height: 5,
              ),
              CupertinoTextField(
                prefix: Icon(CupertinoIcons.location_solid,
                    color: CupertinoColors.black),
                prefixMode: OverlayVisibilityMode.always,
                placeholder: "Delivery time",
                suffix: Text(
                  "${AllMonth[CurrentDateTime.month - 1]} ${CurrentDateTime.day},  ${CurrentDateTime.year} ${CurrentTime.hour} : ${CurrentTime.minute} ${CurrentTime.period.name} "  ,
                  style: TextStyle(color: CupertinoColors.black),
                ),
                suffixMode: OverlayVisibilityMode.always,
                placeholderStyle: TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                style: TextStyle(color: CupertinoColors.black),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                child: CupertinoDatePicker(
                  backgroundColor: CupertinoColors.systemGrey6,
                  onDateTimeChanged: (DateTime dateTime) {
                    int hour = dateTime.hour;
                    int minute = dateTime.minute;
                    setState(() {
                      CurrentTime = TimeOfDay(hour: hour, minute: minute);
                      CurrentDateTime = dateTime;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                child: Column(
                  children: Global.CartItems.map(
                    (e) => Container(
                      height: 80,
                      color: CupertinoColors.white,
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage(e['image']),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${e['Product_name']}",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "${e['Price']}",
                                style:
                                    TextStyle(color: CupertinoColors.systemGrey),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "${e['Price']}",
                            style: TextStyle(color: CupertinoColors.systemGrey),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(bottom: 10),
                    ),
                  ).toList(),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Shipping :${Global.sum }",
                    style: TextStyle(color: CupertinoColors.systemGrey),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
