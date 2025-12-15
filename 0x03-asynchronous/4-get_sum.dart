import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
    try {
        double price = 0;
	
        final Map<String, dynamic> userData = json.decode(await fetchUserData());
        final String data = userData['id'];
        final List<dynamic> userOrder = json.decode(await fetchUserOrders(data));
        for (int i = 0; i < userOrder.length; i++) {
            price += json.decode(await fetchProductPrice(userOrder[i]));
        }
        return price;
    } catch (error) {
        print('error caught: $error');
        return -1;
    }
}
