import 'dart:io';

import 'package:simple_ecommerce/cart.dart';
import 'package:simple_ecommerce/product.dart';
import 'package:simple_ecommerce/product_data.dart';

void main() {
  print(
      '\n==========================     Shopping List     ==========================\n');
  final cart = Cart(); 
  while (true) {
    print(
        '\nList of commands : \n\n(v) view items \n(a) add items \n(c) checkout \n(q) to exit \n');
    stdout.write('What do you want to do?: ');
    final line = stdin.readLineSync();
    checkInput(line, cart);
  }
}

void checkInput(String? input, Cart cart) {
  switch (input) {
    case 'v':
    case 'V':
      print(cart);
      break;
    case 'a':
    case 'A':
      final product = chooseProduct();
      if (product != null) {
        cart.addProduct(product);
        print(cart);
      }
      break;
    case 'c':
    case 'C':
      if (checkout(cart)) {
        print('\n###########    Checking Out...    ###########\n');
        exit(2);
      }
      break;
    case 'q':
    case 'Q':
      print('\n\n*****************      Quiting...      *****************\n');
      exit(1);
    default:
      print('Invalid input \n');
      break;
  }
}

Product? chooseProduct() {
  final productsList =
      allProducts.map((product) => product.displayName).join('\n');
  print('\nAvailable products:\n');
  stdout.write('$productsList\n');
  stdout.write('\nYour choice: ');
  final line = stdin.readLineSync();
  for (var product in allProducts) {
    if (product.initial == line) {
      return product;
    }
  }
  print('Product not found');
  return null;
}

bool checkout(Cart cart) {
  if (cart.isEmpty) {
    print('Cart is empty');
    return false;
  }
  final total = cart.total();
  print('Total: \$$total');
  stdout.write('Payment in cash: ');
  final line = stdin.readLineSync();
  if (line == null || line.isEmpty) {
    return false;
  }
  final paid = double.tryParse(line);
  if (paid == null) {
    return false;
  }
  if (paid >= total) {
    final change = paid - total;
    print('Change :  \$${change.toStringAsFixed(2)}');
    return true;
  } else {
    print('Not enough cash');
    return false;
  }
}
