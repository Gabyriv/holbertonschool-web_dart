import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    final userDataJson = await fetchUserData();
    final userData = jsonDecode(userDataJson);
    if (userData is! Map) {
      return -1;
    }

    final id = userData['id'];
    if (id is! String) {
      return -1;
    }

    final ordersJson = await fetchUserOrders(id);
    final orders = jsonDecode(ordersJson);
    if (orders is! List) {
      return -1;
    }

    double total = 0;
    for (final product in orders) {
      if (product is! String) {
        return -1;
      }

      final priceJson = await fetchProductPrice(product);
      final decodedPrice = jsonDecode(priceJson);
      if (decodedPrice is! num) {
        return -1;
      }
      total += decodedPrice.toDouble();
    }

    return total;
  } catch (error) {
    print('error caught: $error');
    return -1;
  }
}
