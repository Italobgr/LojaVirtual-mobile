import 'package:cloud_firestore/cloud_firestore.dart';//init a implementation at a new version firebase

class ProductData {

  String category;
  String id;

  String title;
  String description;

  double price;

  List images;
  List sizes;

  ProductData.fromDocument(DocumentSnapshot snapshot){//depreciete method
    
    id = snapshot.documentID;
    title = snapshot.data["title"];
    description = snapshot.data["description"];
    price = snapshot.data["price"] + 0.0;
    images = snapshot.data["images"];
    sizes = snapshot.data["sizes"];
  }

  Map<String, dynamic> toResumedMap(){
    return {
      "title": title,
      "description": description,
      "price": price
    };
  }

}
