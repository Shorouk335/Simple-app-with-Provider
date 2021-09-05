import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'TextCatalog.dart';
import 'model/DataSource.dart';

class catalog extends StatefulWidget {
  @override
  _catalogState createState() => _catalogState();
}

class _catalogState extends State<catalog> {
  Widget on = Text("add",style: TextStyle(
   color: Colors.black,
   fontSize: 20,
     ),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(60),
         child: AppBar(

           backgroundColor: Colors.yellowAccent,
           centerTitle: true,
           title: Text("Catalog",style: TextStyle(
             fontSize: 40,
             color: Colors.black,
             fontWeight: FontWeight.bold,
           ),),
           actions: [
             IconButton(
               onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>TextCatalog()));
               },
               icon: Icon(Icons.shopping_cart),
               color: Colors.black,
               iconSize: 30,
             ),
           ],
         )
      ),
      body: Consumer<DataSource>(
        builder:
        ( context,DataSource,widget){
          return  ListView.builder(itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                title: Text(DataSource.listCatalogModel[index].CatalogName),
                leading: Container(
                  width: 70,
                  height: 70,
                  color:DataSource.listCatalogModel[index].color,
                ),
                trailing:TextButton(onPressed: () {
                    DataSource.addToCard(DataSource.listCatalogModel[index]);
                }, child: this.on),
              ),
            );
          },
            itemCount: DataSource.listCatalogModel.length,
          );
        }


      ),
    );
  }
}
