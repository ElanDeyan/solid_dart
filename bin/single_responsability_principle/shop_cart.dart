typedef Product<T extends Object?> = ({T item, double price});

final class ShopCart<T extends Object?> {
  List<Product<T>> _items;
  String _status;

  ShopCart()
      : _items = [],
        _status = "open";

  List<Product<T>> get items => _items;

  double get totalPrice => switch (_items) {
        [] => 0.0,
        _ => _items.fold(
            0.0, (previousValue, element) => previousValue + element.price)
      };

  String get status => _status;

  bool add(Product<T> product) {
    _items.add(product);
    return true;
  }

  bool confirmOrder() {
    if (_validateCart()) {
      _status = "confirmed";
      _sendConfirmationEmail();
      return true;
    }
    return false;
  }

  void _sendConfirmationEmail() => print("sending email...");

  bool _validateCart() => _items.isNotEmpty;
}
