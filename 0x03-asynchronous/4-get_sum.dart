import 'dart:convert';
import 'dart:async';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Fetch user data
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    // Fetch user orders
    String userOrdersJson = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(userOrdersJson);

    // Calculate total price
    double totalPrice = 0.0;

    // Fetch product price
    for (String product in orders) {
      String productPriceJson = await fetchProductPrice(product);

      if (productPriceJson.startsWith('error caught ')) {
        // return -1 if an error occurs
        return -1;
      }

      double productPrice = jsonDecode(productPriceJson);
      totalPrice += productPrice;
    }

    // `totalPrice` is the sum of all the products in the order
    return totalPrice;
  } catch (e) {
    // return -1 if an error occurs
    return -1;
  }
}
