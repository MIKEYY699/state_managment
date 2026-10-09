class User {
  String? name;
  int? number;
  int? id;

  User({this.name, this.number, this.id});
}

class ShowRoom {
  String? name;
  String? image;
  double? ratting;
  String? distance;
  ShowRoom({this.name, this.image, this.ratting, this.distance});
}

class Services {
  String? name;
  String? time;
  String? discription;
  String? price;
  Services({this.name, this.time, this.discription, this.price});
}

class About {
  String? discription;
  String? location;
  String? time;
  String? number;
  About({this.discription, this.location, this.time, this.number});
}

class Reviews {
  String? image;
  String? name;
  double? ratting;
  String? time;
  String? discription;
  Reviews({this.image, this.name, this.ratting, this.time, this.discription});
}
