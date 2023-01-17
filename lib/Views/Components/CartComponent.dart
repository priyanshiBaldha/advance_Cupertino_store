import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartComponent extends StatefulWidget {
  const CartComponent({Key? key}) : super(key: key);

  @override
  State<CartComponent> createState() => _CartComponentState();
}

class _CartComponentState extends State<CartComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
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
              prefix: Icon(CupertinoIcons.person_fill),
              prefixMode: OverlayVisibilityMode.always,
              placeholder: "Name",
            ),
            CupertinoTextField(
              prefix: Icon(CupertinoIcons.mail_solid),
              prefixMode: OverlayVisibilityMode.always,
              placeholder: "Email",
            ),
            CupertinoTextField(
              prefix: Icon(CupertinoIcons.location_solid),
              prefixMode: OverlayVisibilityMode.always,
              placeholder: "Location",
            ),
            CupertinoTextField(
              prefix: Icon(CupertinoIcons.location_solid),
              prefixMode: OverlayVisibilityMode.always,
              placeholder: "Delivery time",
              suffix: Text(
                "rctvygbuhjn",
                style: TextStyle(color: CupertinoColors.white),
              ),
              suffixMode: OverlayVisibilityMode.always,
            ),
            Container(
              color: CupertinoColors.darkBackgroundGray,
              height: 200,
              child: CupertinoDatePicker(
                onDateTimeChanged: (DateTime value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
