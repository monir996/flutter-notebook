import 'package:flutter/material.dart';
import 'package:flutter_notebook/data/service/network_caller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _url = 'https://fakestoreapi.com/products';
  bool _isDataInProgress = false;
  List<dynamic> _itemList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getItems();
  }


  Future<void> getItems() async{
    setState(() {
      _isDataInProgress = true;
    });
    
    NetworkResponse response = await NetworkCaller.getRequest(url: _url);

    if(response.isSuccess){
      setState(() {
        _itemList = response.body as List;
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

        // ----------------------- Branch (Later)  ==> API CALL ------------------
      body: Visibility(
        visible: !_isDataInProgress,
        replacement: Center(child: CircularProgressIndicator(),),

        child: ListView.builder(
          itemCount: _itemList.length,
          itemBuilder: (context,index){

            final item = _itemList[index];
            return ListTile(
              leading: item['image'] != null
                  ?
                  Image.network(item['image'], width: 100, height: 100,)
                  : Icon(Icons.broken_image, color: Colors.grey,),

              title: Text(item['title'], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),

              subtitle: Text('Price: ${item['price'].toString()}', style: TextStyle(fontWeight: FontWeight.w600),),
            );
          },
        ),
      ),
    );
  }
}
