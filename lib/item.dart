class Item {
  int? _id;
  String? name;
  int? _price;
  
  int? get id => this._id;

  set id(int? value) => this._id = value;

  
  String? get getName => this.name;

  set setName(String? name) => this.name = name;

  
  int? get price => this._price;

  set price(int? value) => this._price = value;

  // konstruktor versi 1
  Item(this.name, this._price);

  // konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this.name = map['name'];
    this._price = map['price'];
  }

  // Konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['price'] = _price;
    return map;
  }
}
