// SPDX-License-Identifier: MIT
// Copyright (c) 2022 mehoffer <mehoffer@protonmail.com>

import 'package:test/test.dart';
import 'package:dp/flyweight.dart';

void main() {
  group('Flyweight(Bar)', () {
    test('is the same object as other Flyweight(Bar)', () {
      final bar = Flyweight('Bar');
      expect(bar, Flyweight('Bar'));
    });

    test('is not the same object as Flyweight(Baz)', () {
      final bar = Flyweight('Bar');
      expect(bar, isNot(Flyweight('Baz')));
    });
  });

  test('Flyweight.operation returns flyweight name', () {
    final foo = Flyweight('Foo');
    expect(foo.operation(), "Flyweight('Foo')");
  });
}
