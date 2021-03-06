// SPDX-License-Identifier: MIT
// Copyright (c) 2022 mehoffer <mehoffer@protonmail.com>

import 'package:dp/adapter.dart';

void main() {
  var adaptee = Adaptee();
  var adapter = Adapter(adaptee);

  print('oof'.runes); // prints (111, 111, 102)
  print(adaptee.specificRequest('oof'.runes)); // prints (102, 111, 111)
  print(String.fromCharCodes(adaptee.specificRequest('oof'.runes))); // prints foo

  print(adapter.request('oof')); // prints foo
}
