# Design Patterns in Dart

[![Build Status][actions-badge]][actions-url]
[![Coverage Status](https://coveralls.io/repos/github/TheDesignPatterns/Dart/badge.svg?branch=main&kill_cache=1)](https://coveralls.io/github/TheDesignPatterns/Dart?branch=main)

[actions-badge]: https://github.com/TheDesignPatterns/Dart/actions/workflows/dart.yml/badge.svg
[actions-url]: https://github.com/TheDesignPatterns/Dart/actions/workflows/dart.yml

Design Patterns examples written in Dart using TDD and mocking objects techniques (thanks to Mockito).

## Layout

* [`example/`] design patterns to build/run (e.g. ```$ dart run example/builder.dart```)
* [`lib/`] design patterns to import from a dart file (e.g. ```import 'package:dp/builder.dart';```)
* [`test/`] design patterns to test (e.g. ```$ dart test test/builder_test.dart```)
* `tool/` tools that may be useful when commiting to this repo

[`example/`]: https://github.com/TheDesignPatterns/Dart/tree/main/example
[`lib/`]: https://github.com/TheDesignPatterns/Dart/tree/main/lib
[`test/`]: https://github.com/TheDesignPatterns/Dart/tree/main/test

Each design pattern has its corresponding file in the directories [`example/`], [`lib/`] and [`test/`].

## Build (assuming Dart env is up and running)

```
$ git clone https://github.com/TheDesignPatterns/Dart.git
$ cd Dart
$ dart run build_runner build
$ dart test
$ dart run example/decorator.dart
```

## Build (using official Dart image via ```podman```/```docker```)

```
$ git clone https://github.com/TheDesignPatterns/Dart.git
$ cd Dart
$ podman run -it -v $PWD:/Dart -w /Dart docker.io/library/dart
```
From inside the running container:
```
$ dart run build_runner build
$ dart test
$ dart run example/decorator.dart
```

## Contributing

#### You want to contribute to this project?
Wow, thanks! So please just fork it and send me a pull request.

#### You like it and/or want to clone it?
Wow, thanks! So please just star it!

## References
- [Design Patterns](https://en.wikipedia.org/wiki/Design_Patterns)
- [Test Driven Development](https://en.wikipedia.org/wiki/Test-driven_development)
- [Mock Object](https://en.wikipedia.org/wiki/Mock_object)
- [Mockito](https://pub.dev/packages/mockito)
