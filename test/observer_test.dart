import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:dp/observer.dart';
import 'observer_test.mocks.dart';

@GenerateMocks([AbstractSubject, AbstractObserver])
void main() {
  late AbstractSubject subjectMock;
  late AbstractObserver observerMock;

  setUp(() {
    subjectMock = MockAbstractSubject();
    observerMock = MockAbstractObserver();
  });

  test('Subject notifies observers when changing', () {
    final subject = Subject();
    subject.attach(observerMock);
    subject.change();
    verify(observerMock.update());
  });

  group('Observer', () {
    test('adds itself to subject list of observers when created', () {
      final observer = Observer(subjectMock);
      verify(subjectMock.attach(observer));
    });

    test('is in initial state when created', () {
      final observer = Observer(subjectMock);
      expect(observer.toString(), State.initial.toString());
    });

    test('changes its state to notified when updated', () {
      final observer = Observer(subjectMock);
      observer.update();
      expect(observer.toString(), State.notified.toString());
    });
  });
}