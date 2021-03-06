import 'package:faker/faker.dart';
import 'package:logging_extensions/logging_extensions.dart';
import 'package:test/test.dart';

void main() {
  late String? fakeFinest;
  late String? fakeFiner;
  late String? fakeFine;
  late String? fakeConfig;
  late String? fakeInfo;
  late String? fakeWarning;
  late String? fakeSevere;
  late String? fakeShout;
  late String? fakeDefaultValue;

  late LogLevelToSymbolConverter converter;

  setUp(() {
    fakeFinest = faker.lorem.word();
    fakeFiner = faker.lorem.word();
    fakeFine = faker.lorem.word();
    fakeConfig = faker.lorem.word();
    fakeInfo = faker.lorem.word();
    fakeWarning = faker.lorem.word();
    fakeSevere = faker.lorem.word();
    fakeShout = faker.lorem.word();
    fakeDefaultValue = faker.lorem.word();

    converter = LogLevelToSymbolConverter(
      finest: fakeFinest,
      finer: fakeFiner,
      fine: fakeFine,
      config: fakeConfig,
      info: fakeInfo,
      warning: fakeWarning,
      severe: fakeSevere,
      shout: fakeShout,
      defaultValue: fakeDefaultValue,
    );
  });

  test('should be a [LogLevelConverter]', () {
    expect(converter, isA<LogLevelConverter<String>>());
  });

  group('constructor', () {
    test('should set the fields', () {
      expect(converter.finest, fakeFinest);
      expect(converter.finer, fakeFiner);
      expect(converter.fine, fakeFine);
      expect(converter.config, fakeConfig);
      expect(converter.info, fakeInfo);
      expect(converter.warning, fakeWarning);
      expect(converter.severe, fakeSevere);
      expect(converter.shout, fakeShout);
    });

    test('should set values to defaults if not given', () {
      // act
      converter = LogLevelToSymbolConverter();

      // assert
      expect(converter.finest, '');
      expect(converter.finer, 'π');
      expect(converter.fine, 'F');
      expect(converter.config, 'βοΈ');
      expect(converter.info, 'β');
      expect(converter.warning, 'β ');
      expect(converter.severe, 'β');
      expect(converter.shout, '(γοΎΠοΎ)οΌ!!');
      expect(converter.defaultValue, '');
    });
  });
}
