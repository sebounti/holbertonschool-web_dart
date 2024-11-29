import "4-util.dart";
import "dart:convert";

/// Calculates the total price of all the products in the user's order.
///
/// This function first calls `fetchUserData` to get the user's id. It then
/// calls `fetchUserOrders` with the user's id to get the list of products they
/// have ordered. It then calls `fetchProductPrice` for each product to get the
/// price of that product. The total price is then the sum of the prices of all
/// products.
///
/// If any error occurs during this process, -1 is returned.
Future<double> calculateTotal() async {
  try {
    // Call fetchUserData
    return fetchUserData().then((user) {
      // Convert string response to json
      String id = json.decode(user)["id"];
      // Asynchronously call fetchUserOrders with id of user from fetchUserData
      return fetchUserOrders(id).then((products) async {
        double totalPrice = 0.0;
        // Convert string response to json and loop through product list
        for (String product in json.decode(products)) {
          // As each product is fetched, call fetchProductPrice with product
          await fetchProductPrice(product).then((price) {
            // Convert string response to json and add price to total
            totalPrice += json.decode(price);
          });
        }
        return totalPrice;
      });
    });
  } catch (e) {
    return -1;
  }
}
