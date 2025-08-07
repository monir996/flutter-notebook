import 'package:flutter/material.dart';
import 'package:flutter_notebook/data/models/product_model.dart';
import 'package:flutter_notebook/data/service/network_caller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// ----------------------- Branch 67  ==> API CALL ------------------

class _HomePageState extends State<HomePage> {

  final _url = 'http://35.73.30.144:2008/api/v1/ReadProduct';
  bool _isDataInProgress = false;
  List<ProductModel> _itemList = [];

  @override
  void initState() {
    super.initState();
    getItems();
  }


  Future<void> getItems() async{
    setState(() {
      _isDataInProgress = true;
    });
    
    NetworkResponse response = await NetworkCaller.getRequest(url: _url);

    if(response.isSuccess){

      List<ProductModel> list = [];

      for(Map<String, dynamic> jsonData in response.body!['data']) {
        list.add(ProductModel.fromJson(jsonData));
      }
      _itemList = list;

      setState(() {
        _isDataInProgress = false;
      });
    }
    else {
      debugPrint(response.errorMessage);
      setState(() {
        _isDataInProgress = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text('Flutter API CALL')
      ),


      body: Visibility(
        visible: !_isDataInProgress,
        replacement: Center(child: CircularProgressIndicator(),),

        child: ListView.builder(
          itemCount: _itemList.length,
          itemBuilder: (context,index){

            final product = _itemList[index];

            return ListTile(
              leading: Image.network(
                product.image,
                width: 100,
                height: 100,
                errorBuilder: (context, error, stackTrace) => Icon(Icons.broken_image)
              ),

              title: Text(product.title, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),

              subtitle: Text('Price: ${product.price.toString()}', style: TextStyle(fontWeight: FontWeight.w600),),
            );
          },
        ),
      ),
    );
  }
}
