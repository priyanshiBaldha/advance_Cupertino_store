import 'package:cupertino_store/Model/List.dart';
import 'package:flutter/cupertino.dart';

class ProductComponent extends StatefulWidget {
  const ProductComponent({Key? key}) : super(key: key);

  @override
  State<ProductComponent> createState() => _ProductComponentState();
}

class _ProductComponentState extends State<ProductComponent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 90,),
            Text("Cupertino Store",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            SingleChildScrollView(
              child: Container(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Column(
                    children: Product.map((e) => Container(
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
                          GestureDetector(
                            onTap: (){
                            },
                              child: Icon(CupertinoIcons.add_circled)),
                        ],
                      ),
                      margin: EdgeInsets.only(bottom: 10),
                    ),).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
