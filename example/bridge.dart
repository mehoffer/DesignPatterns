// SPDX-License-Identifier: MIT
// Copyright (c) 2022 mehoffer <mehoffer@protonmail.com>

import 'package:dp/bridge.dart';

void main() {
  var fooBar = Foo('is implemented by', Bar());
  var fooBaz = Foo('|=======|=======|', Baz());

  print(fooBar.operation()); // Prints "Foo is implemented by bar".
  print(fooBaz.operation()); // Prints "Foo |=======|=======| BAZ".
}
