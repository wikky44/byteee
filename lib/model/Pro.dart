/// success : true
/// list : [{"title":"PRAYOMA ENTERPRISE Doll - 108","price":375,"image":"https://rukminim2.flixcart.com/image/312/312/kqqykcw0/outdoor-toy/a/c/y/jumbo-size-kids-play-tent-house-for-10-year-old-girls-and-boys-original-imag4zv3npp6qgpq.jpeg?q=70","type":"toy"},{"title":"Little Olive Tikes Adjustable Scooter with Wide Brakes for Kids","price":899,"image":"https://rukminim2.flixcart.com/image/312/312/xif0q/outdoor-toy/v/g/h/4-tikes-adjustable-scooter-with-wide-brakes-for-kids-lightweight-original-imahyangh7xvhkfz.jpeg?q=70","type":"toy"},{"title":"Bold Fonts Analog Watch - For Men ","price":1397,"image":"https://rukminim2.flixcart.com/image/612/612/xif0q/watch/6/2/i/-original-imagnvwuythhzxrj.jpeg?q=70","type":"watch"},{"title":"Trendies Analog Watch - For Women","price":877,"image":"https://rukminim2.flixcart.com/image/612/612/xif0q/watch/j/c/t/-original-imagqcqffrzjqrx9.jpeg?q=70","type":"watch"},{"title":"Vyb Slayer Analog Watch - For Women","price":1700,"image":"https://rukminim2.flixcart.com/image/612/612/xif0q/watch/u/z/h/1-fv60033km01w-fastrack-women-original-imahyprsywpt2wzm.jpeg?q=70","type":"watch"},{"title":"Casual Sneakers Shoes for Men | Soft Cushioned Insole, Slip-Resistance Sneakers For Men","price":1179,"image":"https://rukminim2.flixcart.com/image/612/612/xif0q/shoe/w/0/z/8-rsl049-red-tape-blue-grey-original-imagxwynuptsdfv8.jpeg?q=70","type":"shoe"}]
/// msg : "Successfully fetch product page 1"

class Pro {
  Pro({
      required bool success,
      List<List> list,
      required String msg,}){
    _success = success;
    _list = list;
    _msg = msg;
}

  Pro.fromJson(dynamic json) {
    _success = json['success'];
    if (json['list'] != [{"title":"PRAYOMA ENTERPRISE Doll - 108","price":375,"image":"https://rukminim2.flixcart.com/image/312/312/kqqykcw0/outdoor-toy/a/c/y/jumbo-size-kids-play-tent-house-for-10-year-old-girls-and-boys-original-imag4zv3npp6qgpq.jpeg?q=70","type":"toy"},{"title":"Little Olive Tikes Adjustable Scooter with Wide Brakes for Kids","price":899,"image":"https://rukminim2.flixcart.com/image/312/312/xif0q/outdoor-toy/v/g/h/4-tikes-adjustable-scooter-with-wide-brakes-for-kids-lightweight-original-imahyangh7xvhkfz.jpeg?q=70","type":"toy"},{"title":"Bold Fonts Analog Watch - For Men ","price":1397,"image":"https://rukminim2.flixcart.com/image/612/612/xif0q/watch/6/2/i/-original-imagnvwuythhzxrj.jpeg?q=70","type":"watch"},{"title":"Trendies Analog Watch - For Women","price":877,"image":"https://rukminim2.flixcart.com/image/612/612/xif0q/watch/j/c/t/-original-imagqcqffrzjqrx9.jpeg?q=70","type":"watch"},{"title":"Vyb Slayer Analog Watch - For Women","price":1700,"image":"https://rukminim2.flixcart.com/image/612/612/xif0q/watch/u/z/h/1-fv60033km01w-fastrack-women-original-imahyprsywpt2wzm.jpeg?q=70","type":"watch"},{"title":"Casual Sneakers Shoes for Men | Soft Cushioned Insole, Slip-Resistance Sneakers For Men","price":1179,"image":"https://rukminim2.flixcart.com/image/612/612/xif0q/shoe/w/0/z/8-rsl049-red-tape-blue-grey-original-imagxwynuptsdfv8.jpeg?q=70","type":"shoe"}]
    ) {
      _list = [] as List;
      json['list'].forEach((v) {
        _list.add(List.fromJson(v));
      });
    }
    _msg = json['msg'];
  }
  bool _success;
  List<List> _list;
  String _msg;
Pro copyWith({  required bool success,
  List<List> list,
  required String msg,
}) => Pro(  success: success ?? _success,
  list: list ?? _list,
  msg: msg ?? _msg,
);
  bool get success => _success;
  List<List> get list => _list;
  String get msg => _msg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_list != true) {
      map['list'] = _list.map((v) => v.toJson()).toList();
    }
    map['msg'] = _msg;
    return map;
  }

}

/// title : "PRAYOMA ENTERPRISE Doll - 108"
/// price : 375
/// image : "https://rukminim2.flixcart.com/image/312/312/kqqykcw0/outdoor-toy/a/c/y/jumbo-size-kids-play-tent-house-for-10-year-old-girls-and-boys-original-imag4zv3npp6qgpq.jpeg?q=70"
/// type : "toy"

class List {
  List({
      required String title,
      required num price,
      required String image,
      required String type,})
  {
    _title = title;
    _price = price;
    _image = image;
    _type = type;
}

  List.fromJson(dynamic json) {
    _title = json['title'];
    _price = json['price'];
    _image = json['image'];
    _type = json['type'];
  }
  String _title;
  num _price;
  String _image;
  String _type;
List copyWith({  required String title,
  required num price,
  required String image,
  required String type,
}) => List(  title: title ?? _title,
  price: price ?? _price,
  image: image ?? _image,
  type: type ?? _type,
);
  String get title => _title;
  num get price => _price;
  String get image => _image;
  String get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['price'] = _price;
    map['image'] = _image;
    map['type'] = _type;
    return map;
  }

}