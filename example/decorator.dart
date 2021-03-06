// SPDX-License-Identifier: MIT
// Copyright (c) 2022 mehoffer <mehoffer@protonmail.com>

import 'package:dp/decorator.dart';

void main() {
  var foo = Foo();
  var fooBar = Decorator(foo, 'Bar');
  var fooBarBaz = Decorator(fooBar, 'Baz');

  print(foo.operation()); // Prints "Foo".
  print(fooBar.operation()); // Prints "FooBar".
  print(fooBarBaz.operation()); // Prints "FooBarBaz".
}
