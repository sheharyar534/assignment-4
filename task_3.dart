void main() {
  List<Map<String, dynamic>> productList = [
    {"name": "Product A", "price": 10, "quantity": 2},
    {"name": "Product B", "price": 5, "quantity": 5},
    {"name": "Product C", "price": 20, "quantity": 1},
    {"name": "Product D", "price": 15, "quantity": 3},
  ];

  // Sort the list of products by the total cost of each product (price x quantity) in descending order
  productList.sort((a, b) =>
      (b["price"] * b["quantity"]).compareTo(a["price"] * a["quantity"]));

  // Print the sorted list of products
  print(productList);
}
