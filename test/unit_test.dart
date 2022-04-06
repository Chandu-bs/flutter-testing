import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';
import 'package:flutter_application_3/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  
test('testing the increment function', (){
//setup
Counter counter = Counter(value: 4);
//do
counter.increment();
//test
expect(counter.value, 5);

}
);

test('testing the decrement function', (){
//setup
Counter counter = Counter(value: 11);
//do
counter.decrement();
//test
expect(counter.value, 10);

}
);

}