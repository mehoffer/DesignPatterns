// SPDX-License-Identifier: MIT
// Copyright (c) 2022 mehoffer <mehoffer@protonmail.com>

/// Usage example:
///
/// ```dart
/// var facade = Facade(SubsystemFactory());
///
/// print(facade.handle()); // Prints "Foo.handle|Bar.handle|Baz.handle".
/// ```

abstract class AbstractFacade {
  String handle();
}

class Facade implements AbstractFacade {
  final AbstractSubsystemFoo _subsystemFoo;
  final AbstractSubsystemBar _subsystemBar;
  final AbstractSubsystemBaz _subsystemBaz;

  Facade(AbstractSubsystemFactory f)
      : _subsystemFoo = f.createFoo(),
        _subsystemBar = f.createBar(),
        _subsystemBaz = f.createBaz();

  @override
  String handle() =>
      '${_subsystemFoo.handle()}|${_subsystemBar.handle()}|${_subsystemBaz.handle()}';
}

abstract class AbstractSubsystemFactory {
  AbstractSubsystemFoo createFoo();
  AbstractSubsystemBar createBar();
  AbstractSubsystemBaz createBaz();
}

class SubsystemFactory implements AbstractSubsystemFactory {
  @override
  AbstractSubsystemFoo createFoo() => SubsystemFoo();
  @override
  AbstractSubsystemBar createBar() => SubsystemBar();
  @override
  AbstractSubsystemBaz createBaz() => SubsystemBaz();
}

abstract class AbstractSubsystemFoo {
  String handle();
}

class SubsystemFoo implements AbstractSubsystemFoo {
  @override
  String handle() => 'Foo.handle';
}

abstract class AbstractSubsystemBar {
  String handle();
}

class SubsystemBar implements AbstractSubsystemBar {
  @override
  String handle() => 'Bar.handle';
}

abstract class AbstractSubsystemBaz {
  String handle();
}

class SubsystemBaz implements AbstractSubsystemBaz {
  @override
  String handle() => 'Baz.handle';
}
