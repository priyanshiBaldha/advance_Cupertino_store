import 'package:cupertino_store/Views/Components/CartComponent.dart';
import 'package:flutter/cupertino.dart';

import 'Views/Components/ProductComponent.dart';
import 'Views/Components/SearchComponents.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentCupertinoIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(

        child: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              IndexedStack(
                index: currentCupertinoIndex,
                children: [
                  ProductComponent(),
                  SearchComponent(),
                  CartComponent(),
                ],
              ),
              CupertinoTabBar(
                backgroundColor: CupertinoColors.white,
                currentIndex: currentCupertinoIndex,
                onTap: (val) {
                  setState(() {
                    currentCupertinoIndex = val;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        CupertinoIcons.home,
                      ),
                      label: "Products"
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(
                        CupertinoIcons.search,
                      ),
                      label: "Search"
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(
                        CupertinoIcons.cart,
                      ),
                      label: "Cart"
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
      ),
    );
  }
}
