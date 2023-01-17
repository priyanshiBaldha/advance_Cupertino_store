import 'package:cupertino_store/Model/List.dart';
import 'package:flutter/cupertino.dart';

class SearchComponent extends StatefulWidget {
  const SearchComponent({Key? key}) : super(key: key);

  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            CupertinoSearchTextField(
              placeholder: "Watch",
              prefixIcon: Icon(CupertinoIcons.search,color: CupertinoColors.black,),
              suffixMode: OverlayVisibilityMode.always,
              suffixIcon: Icon(CupertinoIcons.multiply_circle_fill,color: CupertinoColors.black,),
              // suffixIcon: Icon(CupertinoIcons.clear_circled_solid,color: CupertinoColors.black,),
            ),
            Column(
              children: Watch.map((e) =>  Container(
                height: 80,
                color: CupertinoColors.white,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image(image: AssetImage(e['image']),),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${e['Product_name']}",style: TextStyle(fontSize: 18),),
                        Text("${e['Price']}",style: TextStyle(color: CupertinoColors.systemGrey),),
                      ],
                    ),
                    Spacer(),
                    Icon(CupertinoIcons.add_circled),
                  ],
                ),
                margin: EdgeInsets.only(bottom: 10),
              ),
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
