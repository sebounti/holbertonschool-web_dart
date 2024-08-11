import 'dart:convert';
import 'dart:async';
import '4-util.dart'; // Ensure the path is correct to import the utility functions

Future<double> calculateTotal() async {
  try {
    // Fetch user data
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    // Fetch user orders
    String userOrdersJson = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(userOrdersJson);

    // Initialize total price
    double totalPrice = 0.0;

    // Fetch and sum the price for each product
    for (String product in orders) {
      String productPriceJson = await fetchProductPrice(product);

      // Check if the price response is an error message
      if (productPriceJson.startsWith('error caught')) {
        // Return -1 if an error occurred while fetching product price
        return -1;
      }

      // Decode product price from JSON
      double productPrice = jsonDecode(productPriceJson);
      // Add product price to the total
      totalPrice += productPrice;
    }

    // Return the total price
    return totalPrice;
  } catch (e) {
    // Return -1 if any exception occurs
    return -1;
  }
}
