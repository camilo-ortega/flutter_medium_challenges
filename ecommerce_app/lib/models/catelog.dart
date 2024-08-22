class CatelogModel {
  static List<Item>? items;

  Item getById(int? id) => items!.firstWhere((element) => element.id == id);
  Item getByPosition(int pos) => items![pos];
}

class Item {
  Item({
    this.id,
    this.name,
    this.desc,
    required this.price,
    this.color,
    this.image,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }

  final int? id;
  final String? name;
  final String? desc;
  final num price;
  final String? color;
  final String? image;

  toMap() => {
        'id': id,
        'name': name,
        'desc': desc,
        'price': price,
        'color': color,
        'image': image,
      };
}
