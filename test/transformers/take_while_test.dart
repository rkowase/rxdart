import 'dart:async';

import 'package:test/test.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  test('rx.Observable.takeWhile', () async {
    Stream<int> observable = new Observable<int>.fromIterable(<int>[1, 2, 3])
        .takeWhile((int value) => value < 2);

    observable.listen(expectAsync1((int actual) {
      expect(actual, 1);
    }, count: 1));
  });
}
