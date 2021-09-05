import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_statamangment/model/DataSource.dart';
class TextCatalog extends StatefulWidget {
  @override
  _TextCatalogState createState() => _TextCatalogState();
}

class _TextCatalogState extends State<TextCatalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        iconTheme:IconThemeData(
            color: Colors.black
        ) ,
          backgroundColor: Colors.white,
        title: Text("Cart",style: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
            itemCount: Provider.of<DataSource>(context).CardList.length,
            itemBuilder: (context,index){
              return Text("_" +Provider.of<DataSource>(context).CardList[index],style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),);}
              ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 150,
         color: Colors.yellowAccent,
        child: Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width/5,),
            Text( "${Provider.of<DataSource>(context).allPrice}",style: TextStyle(
              color: Colors.black,
              fontSize: 40,
            ),),
            SizedBox(width: MediaQuery.of(context).size.width/5,),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: (){}, child:Text("Buy",style: TextStyle(
              color: Colors.black,
            ),))
          ],
        ),
      ),




    );
  }
}
