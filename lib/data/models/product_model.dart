class ProductModel {

  late String id;
  late String title;
  late int price;
  late String image;


  ProductModel.fromJson(Map<String, dynamic> jsonData) {
    id = jsonData['_id'];
    title = jsonData['ProductName'];
    price = jsonData['TotalPrice'];
    image = jsonData['Img'];
  }
}