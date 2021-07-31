import 'dart:io';

// loop
//   prompt: view cart / add item / checkout
//   if selection == add item
//     choose a product
//     add it to the cart
//     print cart
//   else if selection == view cart
//     print cart
//   else if selection == checkout
//     do checkout
//     exit
//   end

void main() {
  while (true) {
    print(
        '\n==========================     Shopping List     ==========================\n');
    print(
        '\nList of commands : \n\n(v) view items \n(a) add items \n(c) checkout \n(q) to exit \n');
    stdout.write('What do you want to do?: ');
    final line = stdin.readLineSync();
    checkInput(line);
  }
}

void checkInput(String? input) {
  switch (input) {
    case 'v':
    case 'V':
      viewItems();
      break;
    case 'a':
    case 'A':
      addItems();
      break;
    case 'c':
    case 'C':
      checkout();
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

void viewItems() {
  print('View');
}

void addItems() {
  print('Add');
}

void checkout() {
  print('Checkout');
}
