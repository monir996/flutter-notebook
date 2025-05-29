import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notebook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  mySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  // ----------------------- Demo Items Like Json -------------------
  var myItems = [
    {"imageUrl": "https://cdn.pixabay.com/photo/2025/04/21/14/54/daisies-9547672_1280.jpg", "title": "Daisy"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2023/06/28/12/43/flower-8094368_1280.jpg", "title": "Hydrangea"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2023/08/14/20/04/bee-8190665_1280.jpg", "title": "Bee Nature"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2020/05/27/22/18/meadow-5229169_1280.jpg", "title": "Meadow"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2016/10/06/14/07/sunflowers-1719119_1280.jpg", "title": "Sunflowers"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2015/04/30/16/47/hyacinth-747131_1280.jpg", "title": "Hyacinth"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2013/07/30/12/25/bouquet-168831_1280.jpg", "title": "Bouquet Flowers"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2023/09/10/17/47/hoverfly-8245431_1280.jpg", "title": "Hoverfly Rose"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2024/11/25/10/40/margaritas-9223058_1280.jpg", "title": "Margaritas"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2023/08/06/09/30/dahlia-8172522_1280.jpg", "title": "Dahlia Dahlia"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2016/10/03/17/11/cosmos-flower-1712177_1280.jpg", "title": "Cosmos Flower"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2023/07/29/08/31/snow-felberich-8156446_1280.jpg", "title": "Snow Felberich"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2023/08/03/00/19/peony-8166078_1280.jpg", "title": "Peony Flower"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2023/06/03/12/52/lantana-8037634_1280.jpg", "title": "Lantana Dew Flower"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2018/01/05/16/24/rose-3063284_1280.jpg", "title": "Rose"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2014/09/27/17/35/dandelion-463928_1280.jpg", "title": "Dandelion Heaven"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2018/05/01/18/30/lilac-3366467_1280.jpg", "title": "Lilac Flower Basket"},
    {"imageUrl": "https://cdn.pixabay.com/photo/2018/04/21/20/23/tulips-3339416_1280.jpg", "title": "Tulip"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter ListView Widget"), backgroundColor: Colors.deepOrange),

      // ----------------------- Branch 6 ==> ListView Widget ------------------
      body: ListView.builder(

          itemCount: myItems.length,
          itemBuilder: (context, index) {

            return GestureDetector(
              onTap: (){
                mySnackBar(myItems[index]['title'], context);
              },

              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 230,
                child: Image.network(myItems[index]['imageUrl']!, fit: BoxFit.cover),
              ),
            );
          }
      ),
    );
  }
}

