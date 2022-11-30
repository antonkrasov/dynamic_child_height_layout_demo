import 'package:faker/faker.dart';

String randomText() {
  return faker.lorem
      .sentences(faker.randomGenerator.integer(5, min: 1))
      .reduce((value, element) => '$value $element');
}
