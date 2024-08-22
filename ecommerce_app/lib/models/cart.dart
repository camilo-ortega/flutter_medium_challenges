import 'package:velocity_x/velocity_x.dart';
import '../core/store.dart';
import 'catelog.dart';

class CartModel {
  late CatelogModel _catelog;

  final List<int?> _itemIds = [];

  set catelog(CatelogModel newCatelog) {
    _catelog = newCatelog;
  }

  List<Item> get items => _itemIds.map((id) => _catelog.getById(id!)).toList();

  num get totalPrice {
    return items.fold(0, (total, current) => total + current.price);
  }
}

class AddMutation extends VxMutation<MyStore> {
  AddMutation(this.item);

  final Item? item;

  @override
  perform() {
    store!.cart!._itemIds.add(item!.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  RemoveMutation(this.item);

  final Item item;

  @override
  perform() {
    store!.cart!._itemIds.remove(item.id);
  }
}
