// ignore_for_file: equal_keys_in_map

import 'package:api/src/convex/literals.dart';
import 'package:api/src/convex/schema.dart';
import 'package:convex_dart/convex_dart.dart';
import 'package:convex_dart/src/convex_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:api/src/convex/functions/generic_functions/query1.dart'
    as tasksQuery1;
import 'package:api/src/convex/functions/generic_functions/query2.dart'
    as tasksQuery2;
import 'package:api/src/convex/functions/generic_functions/query3.dart'
    as tasksQuery3;
import 'package:api/src/convex/functions/generic_functions/query4.dart'
    as tasksQuery4;
import 'package:api/src/convex/functions/generic_functions/query5.dart'
    as tasksQuery5;
import 'package:api/src/convex/functions/generic_functions/query6.dart'
    as tasksQuery6;
import 'package:api/src/convex/functions/generic_functions/query7.dart'
    as tasksQuery7;
import 'package:api/src/convex/functions/generic_functions/query9.dart'
    as tasksQuery9;
import 'package:api/src/convex/functions/generic_functions/query10.dart'
    as tasksQuery10;
import 'package:api/src/convex/functions/generic_functions/query11.dart'
    as tasksQuery11;
import 'package:api/src/convex/functions/generic_functions/query13.dart'
    as tasksQuery13;
import 'package:api/src/convex/functions/generic_functions/query14.dart'
    as tasksQuery14;
import 'package:api/src/convex/functions/generic_functions/query15.dart'
    as tasksQuery15;
import 'package:api/src/convex/functions/generic_functions/query16.dart'
    as tasksQuery16;
import 'package:api/src/convex/functions/generic_functions/query17.dart'
    as tasksQuery17;
import 'package:api/src/convex/functions/generic_functions/query18.dart'
    as tasksQuery18;
import 'package:api/src/convex/functions/generic_functions/query19.dart'
    as tasksQuery19;
import 'package:api/src/convex/functions/generic_functions/query20.dart'
    as tasksQuery20;
import 'package:api/src/convex/functions/generic_functions/query21.dart'
    as tasksQuery21;
import 'package:api/src/convex/functions/generic_functions/query22.dart'
    as tasksQuery22;
import 'package:api/src/convex/functions/generic_functions/query24.dart'
    as tasksQuery24;
import 'package:api/src/convex/functions/generic_functions/query25.dart'
    as tasksQuery25;
import 'package:api/src/convex/functions/generic_functions/query26.dart'
    as tasksQuery26;
import 'package:api/src/convex/functions/generic_functions/query27.dart'
    as tasksQuery27;
import 'package:api/src/convex/functions/generic_functions/query28.dart'
    as tasksQuery28;
import 'package:api/src/convex/functions/generic_functions/query29.dart'
    as tasksQuery29;
import 'package:api/src/convex/functions/generic_functions/query30.dart'
    as tasksQuery30;
import 'package:api/src/convex/functions/generic_functions/query31.dart'
    as tasksQuery31;
import 'package:api/src/convex/functions/generic_functions/query32.dart'
    as tasksQuery32;
import 'package:api/src/convex/functions/generic_functions/query33.dart'
    as tasksQuery33;
import 'package:api/src/convex/functions/generic_functions/query35.dart'
    as tasksQuery35;
import 'package:api/src/convex/functions/generic_functions/query34WithNull.dart'
    as tasksQuery34WithNull;
import 'package:api/src/convex/functions/generic_functions/query34NonNull.dart'
    as tasksQuery34NonNull;
import 'package:api/src/convex/functions/generic_functions/query36.dart'
    as tasksQuery36;
import 'package:api/src/convex/functions/generic_functions/query37.dart'
    as tasksQuery37;
import 'package:api/src/convex/functions/generic_functions/query38.dart'
    as tasksQuery38;
import 'package:api/src/convex/functions/generic_functions/query39.dart'
    as tasksQuery39;
import 'package:api/src/convex/functions/generic_functions/query40.dart'
    as tasksQuery40;
import 'package:api/src/convex/functions/generic_functions/query41.dart'
    as tasksQuery41;
import 'package:api/src/convex/functions/generic_functions/query42.dart'
    as tasksQuery42;
import 'package:api/src/convex/functions/generic_functions/query43.dart'
    as tasksQuery43;
import 'package:api/src/convex/functions/generic_functions/query44.dart'
    as tasksQuery44;
import 'package:api/src/convex/functions/generic_functions/query45.dart'
    as tasksQuery45;
import 'package:api/src/convex/functions/generic_functions/query58.dart'
    as tasksQuery58;
import 'package:api/src/convex/functions/generic_functions/query59.dart'
    as tasksQuery59;
import 'package:api/src/convex/functions/generic_functions/query60.dart'
    as tasksQuery60;
import 'package:api/src/convex/functions/generic_functions/query61.dart'
    as tasksQuery61;
import 'package:api/src/convex/functions/generic_functions/query62.dart'
    as tasksQuery62;
import 'package:api/src/convex/functions/generic_functions/query63.dart'
    as tasksQuery63;
import 'package:api/src/convex/functions/generic_functions/query64.dart'
    as tasksQuery64;
import 'package:api/src/convex/functions/generic_functions/query65.dart'
    as tasksQuery65;
import 'package:api/src/convex/functions/generic_functions/query66.dart'
    as tasksQuery66;
import 'package:api/src/convex/functions/generic_functions/query67.dart'
    as tasksQuery67;
import 'package:api/src/convex/functions/generic_functions/query69.dart'
    as tasksQuery69;
import 'package:api/src/convex/functions/generic_functions/query70.dart'
    as tasksQuery70;
import 'package:api/src/convex/functions/generic_functions/query71.dart'
    as tasksQuery71;
import 'package:api/src/convex/functions/generic_functions/query72.dart'
    as tasksQuery72;
import 'package:api/src/convex/functions/generic_functions/query73.dart'
    as tasksQuery73;
import 'package:api/src/convex/functions/generic_functions/query74.dart'
    as tasksQuery74;
import 'package:api/src/convex/functions/generic_functions/query75.dart'
    as tasksQuery75;
import 'package:api/src/convex/functions/generic_functions/query76.dart'
    as tasksQuery76;
import 'package:api/src/convex/functions/generic_functions/query77.dart'
    as tasksQuery77;
import 'package:api/src/convex/functions/generic_functions/query78.dart'
    as tasksQuery78;
import 'package:api/src/convex/functions/generic_functions/query79.dart'
    as tasksQuery79;
import 'package:api/src/convex/functions/generic_functions/query81.dart'
    as tasksQuery81;
import 'package:api/src/convex/functions/generic_functions/query82.dart'
    as tasksQuery82;
import 'package:api/src/convex/functions/generic_functions/query83.dart'
    as tasksQuery83;
import 'package:api/src/convex/functions/generic_functions/query84.dart'
    as tasksQuery84;
import 'package:api/src/convex/functions/generic_functions/query85.dart'
    as tasksQuery85;
import 'package:api/src/convex/functions/generic_functions/query86.dart'
    as tasksQuery86;
import 'package:api/src/convex/functions/generic_functions/query87.dart'
    as tasksQuery87;
import 'package:api/src/convex/functions/generic_functions/query88.dart'
    as tasksQuery88;
import 'package:api/src/convex/functions/generic_functions/query89.dart'
    as tasksQuery89;
import 'package:api/src/convex/functions/generic_functions/query90.dart'
    as tasksQuery90;
import 'package:api/src/convex/functions/generic_functions/query92.dart'
    as tasksQuery92;
import 'package:api/src/convex/functions/generic_functions/query93.dart'
    as tasksQuery93;
import 'package:api/src/convex/functions/generic_functions/query94.dart'
    as tasksQuery94;
import 'package:api/src/convex/functions/generic_functions/query95.dart'
    as tasksQuery95;
import 'package:api/src/convex/functions/generic_functions/query96.dart'
    as tasksQuery96;
import 'package:api/src/convex/functions/generic_functions/query97.dart'
    as tasksQuery97;
import 'package:api/src/convex/functions/generic_functions/query98.dart'
    as tasksQuery98;
import 'package:api/src/convex/functions/generic_functions/query100.dart'
    as tasksQuery100;
import 'package:api/src/convex/functions/generic_functions/query101.dart'
    as tasksQuery101;
import 'package:api/src/convex/functions/generic_functions/query102.dart'
    as tasksQuery102;
import 'package:api/src/convex/functions/generic_functions/query103.dart'
    as tasksQuery103;
import 'package:api/src/convex/functions/generic_functions/query104.dart'
    as tasksQuery104;
import 'package:api/src/convex/functions/generic_functions/query105.dart'
    as tasksQuery105;
import 'package:api/src/convex/functions/generic_functions/query106.dart'
    as tasksQuery106;
import 'package:api/src/convex/functions/generic_functions/query107.dart'
    as tasksQuery107;
import 'package:api/src/convex/functions/generic_functions/query111.dart'
    as tasksQuery111;
import 'package:api/src/convex/functions/generic_functions/query112.dart'
    as tasksQuery112;
import 'package:api/src/convex/functions/generic_functions/query113.dart'
    as tasksQuery113;
import 'package:api/src/convex/functions/generic_functions/query114.dart'
    as tasksQuery114;
import 'package:api/src/convex/functions/generic_functions/query115.dart'
    as tasksQuery115;
import 'package:api/src/convex/functions/generic_functions/query116.dart'
    as tasksQuery116;
import 'package:api/src/convex/functions/generic_functions/query117.dart'
    as tasksQuery117;
import 'package:api/src/convex/functions/generic_functions/query118.dart'
    as tasksQuery118;
import 'package:api/src/convex/functions/generic_functions/query119.dart'
    as tasksQuery119;
import 'package:api/src/convex/functions/generic_functions/query120.dart'
    as tasksQuery120;
import 'package:api/src/convex/functions/generic_functions/query121.dart'
    as tasksQuery121;
import 'package:api/src/convex/functions/generic_functions/query122.dart'
    as tasksQuery122;
import 'package:api/src/convex/functions/generic_functions/query123.dart'
    as tasksQuery123;
import 'package:api/src/convex/functions/generic_functions/query124.dart'
    as tasksQuery124;

void main() {
  test('query1', () async {
    final datas = <tasksQuery1.Query1Args>[
      (i: 'sem'),
      (i: 'mattis'),
      (i: 'eleifend'),
      (i: 'ultricies'),
      (i: 'nulla'),
      (i: 'lobortis'),
      (i: 'lorem'),
      (i: 'platea'),
      (i: 'sociis'),
      (i: 'eget'),
    ];
    for (final data in datas) {
      final serialized = tasksQuery1.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery1.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query2', () async {
    final datas = <tasksQuery2.Query2Args>[
      (i: 0.2506712486199393),
      (i: 0.8078079034894268),
      (i: 0.11350488887148535),
      (i: 0.0323514768796237),
      (i: 0.9960753658590971),
      (i: 0.9853325172138446),
      (i: 0.00542283473602001),
      (i: 0.8744297990516845),
      (i: 0.7727316599019384),
      (i: 0.8697977864978792),
    ];
    for (final data in datas) {
      final serialized = tasksQuery2.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery2.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query3', () async {
    final datas = <tasksQuery3.Query3Args>[
      (i: false),
      (i: true),
      (i: false),
      (i: false),
      (i: true),
      (i: false),
      (i: false),
      (i: true),
      (i: true),
      (i: false),
    ];
    for (final data in datas) {
      final serialized = tasksQuery3.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery3.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query4', () async {
    final datas = <tasksQuery4.Query4Args>[
      (i: 448498),
      (i: 448050),
      (i: 16349),
      (i: 247939),
      (i: 559307),
      (i: 712992),
      (i: 339469),
      (i: 602751),
      (i: 361437),
      (i: 502422),
    ];
    for (final data in datas) {
      final serialized = tasksQuery4.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery4.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query5', () async {
    final datas = <tasksQuery5.Query5Args>[
      (
        i: Uint8ListWithEquality.fromList([
          251,
          156,
          71,
          100,
          182,
          251,
          240,
          174,
          73,
          44,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          250,
          0,
          89,
          23,
          5,
          234,
          237,
          185,
          87,
          57,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          246,
          171,
          233,
          248,
          39,
          126,
          96,
          71,
          54,
          145,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          37,
          125,
          237,
          222,
          181,
          43,
          164,
          197,
          198,
          29,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          106,
          96,
          178,
          25,
          233,
          86,
          53,
          249,
          42,
          183,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          83,
          167,
          249,
          217,
          121,
          212,
          63,
          66,
          142,
          223,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          12,
          13,
          192,
          48,
          191,
          140,
          197,
          140,
          220,
          114,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          58,
          232,
          93,
          234,
          10,
          181,
          186,
          50,
          107,
          26,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          52,
          121,
          117,
          178,
          163,
          95,
          42,
          125,
          212,
          37,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          202,
          243,
          243,
          0,
          34,
          72,
          41,
          182,
          44,
          192,
        ]),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery5.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery5.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query6', () async {
    final datas = <tasksQuery6.Query6Args>[
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery6.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery6.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query7', () async {
    final datas = <tasksQuery7.Query7Args>[
      (i: 193366),
      (i: 0.535453345661856),
      (i: 0.8998298493610158),
      (i: true),
      (i: false),
      (i: true),
      (i: false),
      (i: 962931),
      (i: 413049),
      (i: 'curabitur'),
    ];
    for (final data in datas) {
      final serialized = tasksQuery7.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery7.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query9', () async {
    final datas = <tasksQuery9.Query9Args>[
      (i: $hi()),
      (i: $hi()),
      (i: $hi()),
      (i: $hi()),
      (i: $hi()),
      (i: $hi()),
      (i: $hi()),
      (i: $hi()),
      (i: $hi()),
      (i: $hi()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery9.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery9.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query10', () async {
    final datas = <tasksQuery10.Query10Args>[
      (i: $1_0()),
      (i: $1_0()),
      (i: $1_0()),
      (i: $1_0()),
      (i: $1_0()),
      (i: $1_0()),
      (i: $1_0()),
      (i: $1_0()),
      (i: $1_0()),
      (i: $1_0()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery10.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery10.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query11', () async {
    final datas = <tasksQuery11.Query11Args>[
      (i: $true()),
      (i: $true()),
      (i: $true()),
      (i: $true()),
      (i: $true()),
      (i: $true()),
      (i: $true()),
      (i: $true()),
      (i: $true()),
      (i: $true()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery11.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery11.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query13', () async {
    final datas = <tasksQuery13.Query13Args>[
      (i: Defined('sit')),
      (i: Undefined()),
      (i: Defined('morbi')),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined('non')),
      (i: Defined('pretium')),
      (i: Undefined()),
      (i: Defined('elit')),
      (i: Defined('ligula')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery13.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery13.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query14', () async {
    final datas = <tasksQuery14.Query14Args>[
      (i: Undefined()),
      (i: Defined(0.8315565009027115)),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined(0.5950764634118652)),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined(0.42536263630017157)),
      (i: Undefined()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery14.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery14.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query15', () async {
    final datas = <tasksQuery15.Query15Args>[
      (i: Defined(false)),
      (i: Defined(true)),
      (i: Defined(true)),
      (i: Defined(false)),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined(false)),
      (i: Defined(false)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery15.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery15.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query16', () async {
    final datas = <tasksQuery16.Query16Args>[
      (i: Defined(403700)),
      (i: Defined(638064)),
      (i: Defined(17040)),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined(724877)),
      (i: Undefined()),
      (i: Undefined()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery16.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery16.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query17', () async {
    final datas = <tasksQuery17.Query17Args>[
      (
        i: Defined(
          Uint8ListWithEquality.fromList([
            180,
            212,
            223,
            196,
            223,
            224,
            80,
            44,
            17,
            243,
          ]),
        ),
      ),
      (
        i: Defined(
          Uint8ListWithEquality.fromList([
            252,
            39,
            204,
            247,
            100,
            60,
            94,
            38,
            160,
            86,
          ]),
        ),
      ),
      (i: Undefined()),
      (i: Undefined()),
      (
        i: Defined(
          Uint8ListWithEquality.fromList([
            119,
            228,
            167,
            30,
            148,
            152,
            58,
            139,
            145,
            225,
          ]),
        ),
      ),
      (
        i: Defined(
          Uint8ListWithEquality.fromList([
            138,
            70,
            12,
            216,
            155,
            188,
            168,
            159,
            238,
            136,
          ]),
        ),
      ),
      (
        i: Defined(
          Uint8ListWithEquality.fromList([
            27,
            231,
            39,
            11,
            24,
            50,
            11,
            55,
            66,
            122,
          ]),
        ),
      ),
      (
        i: Defined(
          Uint8ListWithEquality.fromList([
            88,
            252,
            125,
            164,
            128,
            148,
            101,
            236,
            192,
            4,
          ]),
        ),
      ),
      (
        i: Defined(
          Uint8ListWithEquality.fromList([
            181,
            94,
            106,
            235,
            141,
            241,
            50,
            106,
            213,
            171,
          ]),
        ),
      ),
      (i: Undefined()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery17.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery17.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query18', () async {
    final datas = <tasksQuery18.Query18Args>[
      (i: Undefined()),
      (i: Defined(TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'))),
      (i: Defined(TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'))),
      (i: Undefined()),
      (i: Defined(TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'))),
      (i: Defined(TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'))),
      (i: Defined(TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'))),
      (i: Defined(TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'))),
      (i: Undefined()),
      (i: Defined(TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'))),
    ];
    for (final data in datas) {
      final serialized = tasksQuery18.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery18.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query19', () async {
    final datas = <tasksQuery19.Query19Args>[
      (i: Defined(true)),
      (i: Defined('tristique')),
      (i: Undefined()),
      (i: Defined(true)),
      (i: Defined(0.09507666657844838)),
      (i: Defined('eget')),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined(0.7182042687206649)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery19.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery19.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query20', () async {
    final datas = <tasksQuery20.Query20Args>[
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined($hi())),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined($hi())),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined($hi())),
    ];
    for (final data in datas) {
      final serialized = tasksQuery20.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery20.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query21', () async {
    final datas = <tasksQuery21.Query21Args>[
      (i: Defined($1_0())),
      (i: Undefined()),
      (i: Defined($1_0())),
      (i: Undefined()),
      (i: Defined($1_0())),
      (i: Defined($1_0())),
      (i: Undefined()),
      (i: Undefined()),
      (i: Undefined()),
      (i: Defined($1_0())),
    ];
    for (final data in datas) {
      final serialized = tasksQuery21.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery21.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query22', () async {
    final datas = <tasksQuery22.Query22Args>[
      (i: Defined($true())),
      (i: Undefined()),
      (i: Defined($true())),
      (i: Undefined()),
      (i: Defined($true())),
      (i: Defined($true())),
      (i: Defined($true())),
      (i: Defined($true())),
      (i: Defined($true())),
      (i: Undefined()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery22.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery22.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query24', () async {
    final datas = <tasksQuery24.Query24Args>[
      (i: 'placerat'),
      (i: null),
      (i: null),
      (i: 'magna'),
      (i: 'dolor'),
      (i: 'senectus'),
      (i: null),
      (i: null),
      (i: 'consequat'),
      (i: 'lobortis'),
    ];
    for (final data in datas) {
      final serialized = tasksQuery24.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery24.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query25', () async {
    final datas = <tasksQuery25.Query25Args>[
      (i: null),
      (i: 0.9036096801934479),
      (i: 0.05324324703919059),
      (i: null),
      (i: null),
      (i: 0.1693327176486059),
      (i: null),
      (i: null),
      (i: null),
      (i: 0.250546014853155),
    ];
    for (final data in datas) {
      final serialized = tasksQuery25.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery25.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query26', () async {
    final datas = <tasksQuery26.Query26Args>[
      (i: null),
      (i: false),
      (i: null),
      (i: false),
      (i: null),
      (i: null),
      (i: false),
      (i: null),
      (i: null),
      (i: null),
    ];
    for (final data in datas) {
      final serialized = tasksQuery26.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery26.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query27', () async {
    final datas = <tasksQuery27.Query27Args>[
      (i: 517577),
      (i: null),
      (i: null),
      (i: null),
      (i: null),
      (i: 956646),
      (i: 49846),
      (i: 382688),
      (i: 201010),
      (i: 225404),
    ];
    for (final data in datas) {
      final serialized = tasksQuery27.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery27.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query28', () async {
    final datas = <tasksQuery28.Query28Args>[
      (
        i: Uint8ListWithEquality.fromList([
          30,
          134,
          126,
          134,
          179,
          137,
          227,
          62,
          120,
          8,
        ]),
      ),
      (i: null),
      (
        i: Uint8ListWithEquality.fromList([
          38,
          35,
          96,
          43,
          133,
          199,
          46,
          33,
          22,
          178,
        ]),
      ),
      (i: null),
      (
        i: Uint8ListWithEquality.fromList([
          1,
          240,
          72,
          66,
          227,
          48,
          242,
          115,
          118,
          66,
        ]),
      ),
      (i: null),
      (
        i: Uint8ListWithEquality.fromList([
          13,
          125,
          80,
          62,
          115,
          115,
          10,
          70,
          201,
          227,
        ]),
      ),
      (i: null),
      (
        i: Uint8ListWithEquality.fromList([
          27,
          53,
          251,
          160,
          84,
          2,
          127,
          25,
          233,
          251,
        ]),
      ),
      (
        i: Uint8ListWithEquality.fromList([
          211,
          146,
          98,
          173,
          140,
          82,
          238,
          251,
          134,
          170,
        ]),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery28.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery28.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query29', () async {
    final datas = <tasksQuery29.Query29Args>[
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: null),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
      (i: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery29.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery29.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query30', () async {
    final datas = <tasksQuery30.Query30Args>[
      (i: null),
      (i: null),
      (i: 0.5803416260449342),
      (i: 280871),
      (i: 0.23108463370722065),
      (i: null),
      (i: null),
      (i: null),
      (i: 475276),
      (i: null),
    ];
    for (final data in datas) {
      final serialized = tasksQuery30.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery30.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query31', () async {
    final datas = <tasksQuery31.Query31Args>[
      (i: null),
      (i: $hi()),
      (i: null),
      (i: $hi()),
      (i: $hi()),
      (i: $hi()),
      (i: null),
      (i: null),
      (i: $hi()),
      (i: null),
    ];
    for (final data in datas) {
      final serialized = tasksQuery31.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery31.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query32', () async {
    final datas = <tasksQuery32.Query32Args>[
      (i: null),
      (i: $1_0()),
      (i: null),
      (i: null),
      (i: $1_0()),
      (i: null),
      (i: null),
      (i: null),
      (i: null),
      (i: $1_0()),
    ];
    for (final data in datas) {
      final serialized = tasksQuery32.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery32.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query33', () async {
    final datas = <tasksQuery33.Query33Args>[
      (i: $true()),
      (i: $true()),
      (i: $true()),
      (i: $true()),
      (i: null),
      (i: null),
      (i: $true()),
      (i: null),
      (i: null),
      (i: null),
    ];
    for (final data in datas) {
      final serialized = tasksQuery33.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery33.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query34WithNull', () async {
    final datas = <tasksQuery34WithNull.Query34WithNullArgs>[
      (i: $blue$red.$redMember),
      (i: $blue$red.$blueMember),
      (i: null),
    ];
    for (final data in datas) {
      final serialized = tasksQuery34WithNull.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery34WithNull.deserialize(value1);
      expect(deserialized, data);
    }
  });
  test('query34NonNull', () async {
    final datas = <tasksQuery34NonNull.Query34NonNullArgs>[
      (i: $blue$red.$redMember),
      (i: $blue$red.$blueMember),
    ];
    for (final data in datas) {
      final serialized = tasksQuery34NonNull.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery34NonNull.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query35', () async {
    final datas = <tasksQuery35.Query35Args>[
      (
        i: <String>[
          'sem',
          'elit',
          'eleifend',
          'neque',
          'sed',
          'sed',
          'lobortis',
          'cum',
        ].lock,
      ),
      (
        i: <String>[
          'phasellus',
          'congue',
          'et',
          'eget',
          'pellentesque',
          'leo',
          'porta',
          'sodales',
          'lacus',
        ].lock,
      ),
      (
        i: <String>[
          'vestibulum',
          'quam',
          'auctor',
          'accumsan',
          'faucibus',
          'euismod',
          'sit',
        ].lock,
      ),
      (i: <String>['laoreet', 'aliquam'].lock),
      (i: <String>['nam', 'malesuada'].lock),
      (i: <String>['purus', 'natoque', 'et', 'sem'].lock),
      (i: <String>['fermentum', 'magna', 'eleifend', 'viverra'].lock),
      (
        i: <String>[
          'placerat',
          'nunc',
          'elementum',
          'etiam',
          'nulla',
          'cum',
        ].lock,
      ),
      (i: <String>[].lock),
      (i: <String>[].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery35.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery35.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query36', () async {
    final datas = <tasksQuery36.Query36Args>[
      (i: <double>[0.39737003398722004].lock),
      (
        i: <double>[
          0.1946115805885551,
          0.11914715679605214,
          0.8230774598104392,
          0.3089902158007537,
          0.9338249345949862,
          0.2886340635744381,
          0.8221126829764267,
          0.10991128469606992,
        ].lock,
      ),
      (i: <double>[0.44971459583494855].lock),
      (
        i: <double>[
          0.8015798598667905,
          0.1047926198260073,
          0.975367393947693,
          0.9391462554288428,
          0.052078970453600215,
        ].lock,
      ),
      (i: <double>[0.2906727008345483].lock),
      (i: <double>[0.4416412495369766].lock),
      (i: <double>[0.5587668491100374, 0.5381823460397263].lock),
      (i: <double>[].lock),
      (
        i: <double>[
          0.03812391387534064,
          0.8181528186271345,
          0.028554755911367247,
          0.3303649255442911,
          0.6280337059857782,
          0.37917456250368275,
          0.7176832056622573,
          0.44636602205507603,
          0.3609241640267479,
        ].lock,
      ),
      (i: <double>[0.4736496044689875, 0.004843049768571528].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery36.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery36.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query37', () async {
    final datas = <tasksQuery37.Query37Args>[
      (i: <bool>[true].lock),
      (i: <bool>[false, true, true].lock),
      (i: <bool>[true, false, false, false, true, true, true].lock),
      (i: <bool>[true, false, false, false, true, true, true, false].lock),
      (i: <bool>[].lock),
      (i: <bool>[false, true].lock),
      (i: <bool>[false, true, false, false].lock),
      (i: <bool>[false].lock),
      (i: <bool>[true, true, false, true, true, false, false].lock),
      (i: <bool>[true, true, true, false, false, true].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery37.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery37.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query38', () async {
    final datas = <tasksQuery38.Query38Args>[
      (i: <int>[87312, 4897].lock),
      (i: <int>[187515, 264374].lock),
      (i: <int>[814145, 252665, 616863, 459861].lock),
      (i: <int>[524631, 819013, 554701, 716483, 925791].lock),
      (i: <int>[167125, 668911, 124914, 893770].lock),
      (i: <int>[331506, 987986].lock),
      (i: <int>[42139, 974075, 589395, 523171, 945691, 686691].lock),
      (i: <int>[829915, 724782, 222866, 738805, 947402, 446800].lock),
      (i: <int>[171415, 172288, 293979].lock),
      (i: <int>[809235, 512966, 466332, 417291].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery38.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery38.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query39', () async {
    final datas = <tasksQuery39.Query39Args>[
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            166,
            86,
            15,
            63,
            50,
            121,
            209,
            147,
            39,
            73,
          ]),
          Uint8ListWithEquality.fromList([
            75,
            244,
            131,
            150,
            58,
            194,
            184,
            195,
            64,
            162,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            43,
            20,
            214,
            58,
            77,
            203,
            107,
            93,
            11,
            103,
          ]),
          Uint8ListWithEquality.fromList([
            211,
            231,
            171,
            108,
            174,
            99,
            137,
            21,
            223,
            7,
          ]),
          Uint8ListWithEquality.fromList([
            189,
            50,
            49,
            167,
            46,
            117,
            31,
            48,
            245,
            6,
          ]),
          Uint8ListWithEquality.fromList([
            8,
            204,
            220,
            89,
            121,
            39,
            113,
            140,
            144,
            225,
          ]),
          Uint8ListWithEquality.fromList([
            140,
            161,
            232,
            147,
            69,
            24,
            55,
            75,
            42,
            17,
          ]),
          Uint8ListWithEquality.fromList([
            127,
            245,
            169,
            209,
            173,
            70,
            103,
            227,
            155,
            6,
          ]),
          Uint8ListWithEquality.fromList([
            225,
            213,
            221,
            149,
            43,
            91,
            74,
            217,
            254,
            76,
          ]),
          Uint8ListWithEquality.fromList([
            152,
            131,
            225,
            212,
            157,
            197,
            106,
            200,
            25,
            202,
          ]),
          Uint8ListWithEquality.fromList([
            235,
            253,
            63,
            180,
            50,
            68,
            161,
            194,
            248,
            40,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            217,
            5,
            230,
            34,
            57,
            184,
            114,
            76,
            174,
            106,
          ]),
          Uint8ListWithEquality.fromList([
            218,
            247,
            161,
            45,
            99,
            95,
            172,
            220,
            90,
            82,
          ]),
          Uint8ListWithEquality.fromList([
            216,
            116,
            96,
            65,
            249,
            78,
            21,
            145,
            83,
            76,
          ]),
          Uint8ListWithEquality.fromList([
            136,
            206,
            163,
            109,
            95,
            97,
            167,
            242,
            16,
            135,
          ]),
          Uint8ListWithEquality.fromList([
            154,
            143,
            174,
            41,
            39,
            239,
            246,
            252,
            31,
            37,
          ]),
          Uint8ListWithEquality.fromList([
            153,
            214,
            178,
            24,
            127,
            147,
            150,
            242,
            80,
            86,
          ]),
          Uint8ListWithEquality.fromList([
            38,
            143,
            77,
            82,
            244,
            63,
            244,
            171,
            60,
            182,
          ]),
          Uint8ListWithEquality.fromList([
            9,
            101,
            200,
            38,
            19,
            139,
            220,
            13,
            36,
            138,
          ]),
          Uint8ListWithEquality.fromList([
            215,
            65,
            228,
            99,
            187,
            189,
            108,
            114,
            56,
            252,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            192,
            212,
            167,
            56,
            169,
            126,
            211,
            134,
            77,
            15,
          ]),
          Uint8ListWithEquality.fromList([
            205,
            91,
            162,
            150,
            53,
            84,
            1,
            197,
            21,
            203,
          ]),
          Uint8ListWithEquality.fromList([
            105,
            102,
            176,
            132,
            56,
            112,
            149,
            88,
            188,
            218,
          ]),
        ].lock,
      ),
      (i: <Uint8ListWithEquality>[].lock),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            44,
            88,
            76,
            68,
            124,
            202,
            133,
            174,
            18,
            242,
          ]),
        ].lock,
      ),
      (i: <Uint8ListWithEquality>[].lock),
      (i: <Uint8ListWithEquality>[].lock),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            151,
            68,
            0,
            223,
            96,
            52,
            143,
            121,
            118,
            84,
          ]),
          Uint8ListWithEquality.fromList([
            99,
            80,
            130,
            47,
            152,
            65,
            118,
            23,
            11,
            210,
          ]),
          Uint8ListWithEquality.fromList([
            141,
            8,
            12,
            93,
            240,
            182,
            242,
            230,
            205,
            122,
          ]),
          Uint8ListWithEquality.fromList([
            112,
            165,
            160,
            122,
            231,
            120,
            228,
            195,
            116,
            59,
          ]),
          Uint8ListWithEquality.fromList([
            110,
            246,
            217,
            78,
            187,
            191,
            242,
            31,
            233,
            28,
          ]),
          Uint8ListWithEquality.fromList([
            172,
            49,
            175,
            228,
            67,
            8,
            254,
            18,
            7,
            16,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality>[
          Uint8ListWithEquality.fromList([
            203,
            190,
            155,
            221,
            58,
            54,
            173,
            168,
            132,
            232,
          ]),
          Uint8ListWithEquality.fromList([
            128,
            251,
            243,
            205,
            195,
            59,
            133,
            44,
            100,
            169,
          ]),
          Uint8ListWithEquality.fromList([
            116,
            182,
            14,
            27,
            236,
            188,
            37,
            28,
            210,
            162,
          ]),
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery39.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery39.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query40', () async {
    final datas = <tasksQuery40.Query40Args>[
      (i: <TasksId>[].lock),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (i: <TasksId>[TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')].lock),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery40.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery40.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query41', () async {
    final datas = <tasksQuery41.Query41Args>[
      (
        i: <dynamic>[
          0.7697711166188652,
          0.4080071806552723,
          false,
          0.015011721867775996,
          0.673762526818802,
          0.6683517771586293,
          false,
        ].lock,
      ),
      (i: <dynamic>['nec', 169149, 'magnis'].lock),
      (
        i: <dynamic>[
          250000,
          0.44584917533962165,
          true,
          false,
          0.5872944107002805,
          415350,
          0.4360876739102101,
          false,
          false,
        ].lock,
      ),
      (i: <dynamic>[140782, 'blandit', false, false, 725093].lock),
      (
        i: <dynamic>[
          false,
          858042,
          410591,
          'vel',
          'posuere',
          'imperdiet',
          0.12736822595491915,
        ].lock,
      ),
      (
        i: <dynamic>[
          387817,
          633906,
          398731,
          668719,
          375467,
          true,
          false,
          0.9835393942851052,
        ].lock,
      ),
      (
        i: <dynamic>[
          0.6858246689593245,
          'dignissim',
          446056,
          true,
          548287,
        ].lock,
      ),
      (
        i: <dynamic>[
          0.645308956695277,
          'praesent',
          false,
          0.31843821373911774,
          'gravida',
          816061,
          false,
          false,
        ].lock,
      ),
      (
        i: <dynamic>[
          'habitasse',
          12415,
          50325,
          140195,
          0.029720148393708845,
        ].lock,
      ),
      (i: <dynamic>['luctus'].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery41.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery41.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query42', () async {
    final datas = <tasksQuery42.Query42Args>[
      (i: <void>[].lock),
      (i: <void>[null, null, null, null].lock),
      (i: <void>[null, null, null].lock),
      (i: <void>[null, null, null, null].lock),
      (i: <void>[].lock),
      (i: <void>[null, null, null, null, null, null, null, null].lock),
      (i: <void>[null, null, null, null, null, null, null, null, null].lock),
      (i: <void>[null, null].lock),
      (i: <void>[null].lock),
      (i: <void>[null, null, null].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery42.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery42.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query43', () async {
    final datas = <tasksQuery43.Query43Args>[
      (i: <$hi>[$hi(), $hi(), $hi(), $hi(), $hi(), $hi()].lock),
      (i: <$hi>[$hi(), $hi(), $hi(), $hi()].lock),
      (i: <$hi>[$hi(), $hi(), $hi(), $hi(), $hi(), $hi()].lock),
      (i: <$hi>[$hi(), $hi(), $hi(), $hi(), $hi(), $hi()].lock),
      (i: <$hi>[$hi(), $hi()].lock),
      (
        i: <$hi>[
          $hi(),
          $hi(),
          $hi(),
          $hi(),
          $hi(),
          $hi(),
          $hi(),
          $hi(),
          $hi(),
        ].lock,
      ),
      (i: <$hi>[].lock),
      (i: <$hi>[$hi(), $hi(), $hi(), $hi(), $hi()].lock),
      (i: <$hi>[$hi(), $hi(), $hi(), $hi(), $hi()].lock),
      (i: <$hi>[$hi(), $hi(), $hi(), $hi(), $hi(), $hi(), $hi(), $hi()].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery43.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery43.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query44', () async {
    final datas = <tasksQuery44.Query44Args>[
      (i: <$1_0>[$1_0(), $1_0(), $1_0(), $1_0(), $1_0(), $1_0(), $1_0()].lock),
      (
        i: <$1_0>[
          $1_0(),
          $1_0(),
          $1_0(),
          $1_0(),
          $1_0(),
          $1_0(),
          $1_0(),
          $1_0(),
        ].lock,
      ),
      (i: <$1_0>[$1_0(), $1_0(), $1_0(), $1_0(), $1_0()].lock),
      (i: <$1_0>[$1_0(), $1_0(), $1_0(), $1_0(), $1_0()].lock),
      (i: <$1_0>[$1_0(), $1_0(), $1_0()].lock),
      (i: <$1_0>[$1_0(), $1_0(), $1_0()].lock),
      (i: <$1_0>[$1_0(), $1_0(), $1_0(), $1_0(), $1_0(), $1_0()].lock),
      (i: <$1_0>[$1_0(), $1_0(), $1_0(), $1_0(), $1_0()].lock),
      (i: <$1_0>[$1_0(), $1_0(), $1_0(), $1_0(), $1_0(), $1_0()].lock),
      (i: <$1_0>[$1_0(), $1_0(), $1_0(), $1_0(), $1_0(), $1_0()].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery44.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery44.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query45', () async {
    final datas = <tasksQuery45.Query45Args>[
      (i: <$true>[$true(), $true(), $true(), $true(), $true(), $true()].lock),
      (
        i: <$true>[
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
        ].lock,
      ),
      (i: <$true>[$true()].lock),
      (i: <$true>[].lock),
      (
        i: <$true>[
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
        ].lock,
      ),
      (i: <$true>[$true(), $true(), $true()].lock),
      (i: <$true>[$true(), $true(), $true(), $true(), $true()].lock),
      (
        i: <$true>[
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
        ].lock,
      ),
      (
        i: <$true>[
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
          $true(),
        ].lock,
      ),
      (i: <$true>[$true(), $true(), $true(), $true()].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery45.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery45.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query58', () async {
    final datas = <tasksQuery58.Query58Args>[
      (i: <String?>['nam', 'sociis', 'fames', null, null, 'purus'].lock),
      (i: <String?>[null, null, null, null, 'tempor', null, null, 'sem'].lock),
      (i: <String?>[null, null, null, 'mus', null, null].lock),
      (i: <String?>['cursus', null, null, null, 'ac', 'at', 'habitant'].lock),
      (i: <String?>['sociis', 'fusce', 'ligula', null, null].lock),
      (i: <String?>['mollis', null, 'nec', null, 'aenean'].lock),
      (
        i: <String?>[
          'tellus',
          'sollicitudin',
          'potenti',
          'placerat',
          null,
        ].lock,
      ),
      (i: <String?>['massa', null, null].lock),
      (i: <String?>[null, 'cum', 'tortor', null].lock),
      (i: <String?>[null, 'eu'].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery58.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery58.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query59', () async {
    final datas = <tasksQuery59.Query59Args>[
      (i: <double?>[null, null, null].lock),
      (
        i: <double?>[
          0.14384354253665244,
          0.5739068587549472,
          null,
          null,
          null,
          0.23492127226084714,
          null,
          null,
        ].lock,
      ),
      (
        i: <double?>[
          0.7377490003427615,
          0.2858751889252418,
          0.17053764682026873,
          0.9742247620281903,
          null,
          null,
        ].lock,
      ),
      (i: <double?>[0.27727866385373845, 0.8734586912118466].lock),
      (i: <double?>[].lock),
      (i: <double?>[].lock),
      (
        i: <double?>[
          null,
          0.6499309385128677,
          0.2556566772396729,
          0.38183745645792055,
          null,
          0.976878510023521,
          null,
        ].lock,
      ),
      (
        i: <double?>[
          null,
          null,
          null,
          0.8689154339462782,
          null,
          0.045422916010020464,
        ].lock,
      ),
      (i: <double?>[0.5855044773139555, 0.18408748573678735].lock),
      (i: <double?>[null].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery59.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery59.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query60', () async {
    final datas = <tasksQuery60.Query60Args>[
      (i: <bool?>[false, false, null, true, true, null, false].lock),
      (i: <bool?>[null, null, false, false].lock),
      (
        i: <bool?>[
          null,
          null,
          false,
          false,
          true,
          null,
          false,
          false,
          false,
        ].lock,
      ),
      (i: <bool?>[null, true, true, null, null, null, null].lock),
      (
        i: <bool?>[
          false,
          false,
          null,
          null,
          null,
          true,
          true,
          true,
          false,
        ].lock,
      ),
      (i: <bool?>[true, true, null, null].lock),
      (i: <bool?>[null].lock),
      (i: <bool?>[null, null, null, null, null, null].lock),
      (i: <bool?>[true, null, null, null, true, null].lock),
      (i: <bool?>[null, null, null].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery60.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery60.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query61', () async {
    final datas = <tasksQuery61.Query61Args>[
      (i: <int?>[null, null, null, null, null, null, null].lock),
      (i: <int?>[null, 384537, 907426, 220680, null, null, 709601].lock),
      (i: <int?>[null, 823846, 408762].lock),
      (i: <int?>[424309, null].lock),
      (
        i: <int?>[
          null,
          612640,
          786844,
          729017,
          807173,
          null,
          null,
          null,
          532298,
        ].lock,
      ),
      (
        i: <int?>[
          373084,
          863436,
          138700,
          null,
          null,
          594305,
          682727,
          845397,
          448536,
        ].lock,
      ),
      (
        i: <int?>[
          529021,
          577598,
          null,
          970136,
          null,
          null,
          923341,
          null,
          null,
        ].lock,
      ),
      (i: <int?>[null, 124997, null, null, null, null, null, 294259].lock),
      (
        i: <int?>[
          null,
          434479,
          639147,
          null,
          null,
          907954,
          823991,
          null,
          null,
        ].lock,
      ),
      (i: <int?>[289059, null, 492876, 420116, 705225].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery61.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery61.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query62', () async {
    final datas = <tasksQuery62.Query62Args>[
      (
        i: <Uint8ListWithEquality?>[
          null,
          Uint8ListWithEquality.fromList([
            74,
            96,
            138,
            245,
            47,
            209,
            246,
            254,
            195,
            124,
          ]),
          Uint8ListWithEquality.fromList([
            57,
            51,
            142,
            173,
            33,
            125,
            8,
            153,
            6,
            133,
          ]),
          Uint8ListWithEquality.fromList([
            183,
            163,
            206,
            237,
            75,
            159,
            143,
            16,
            234,
            80,
          ]),
          Uint8ListWithEquality.fromList([
            170,
            47,
            70,
            170,
            236,
            149,
            17,
            161,
            74,
            117,
          ]),
          Uint8ListWithEquality.fromList([
            106,
            239,
            111,
            164,
            150,
            40,
            171,
            126,
            67,
            250,
          ]),
          null,
        ].lock,
      ),
      (i: <Uint8ListWithEquality?>[].lock),
      (
        i: <Uint8ListWithEquality?>[
          null,
          null,
          Uint8ListWithEquality.fromList([
            105,
            191,
            74,
            24,
            40,
            147,
            130,
            116,
            254,
            68,
          ]),
          Uint8ListWithEquality.fromList([
            202,
            23,
            54,
            165,
            186,
            143,
            126,
            126,
            141,
            193,
          ]),
          Uint8ListWithEquality.fromList([
            138,
            239,
            11,
            230,
            111,
            152,
            15,
            44,
            45,
            34,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality?>[
          Uint8ListWithEquality.fromList([
            13,
            254,
            28,
            93,
            11,
            178,
            84,
            114,
            88,
            225,
          ]),
          Uint8ListWithEquality.fromList([
            78,
            174,
            189,
            135,
            32,
            26,
            37,
            193,
            71,
            242,
          ]),
          null,
          Uint8ListWithEquality.fromList([
            137,
            188,
            167,
            152,
            42,
            4,
            115,
            5,
            120,
            220,
          ]),
          null,
        ].lock,
      ),
      (i: <Uint8ListWithEquality?>[].lock),
      (
        i: <Uint8ListWithEquality?>[
          Uint8ListWithEquality.fromList([
            74,
            222,
            51,
            151,
            178,
            111,
            144,
            98,
            234,
            85,
          ]),
          Uint8ListWithEquality.fromList([
            193,
            176,
            77,
            149,
            245,
            231,
            202,
            191,
            61,
            191,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality?>[
          Uint8ListWithEquality.fromList([
            162,
            193,
            212,
            16,
            45,
            11,
            252,
            219,
            68,
            139,
          ]),
          Uint8ListWithEquality.fromList([
            215,
            27,
            172,
            119,
            165,
            172,
            216,
            198,
            156,
            137,
          ]),
          Uint8ListWithEquality.fromList([
            20,
            201,
            2,
            201,
            234,
            128,
            181,
            104,
            30,
            184,
          ]),
          null,
          null,
          Uint8ListWithEquality.fromList([
            119,
            101,
            70,
            117,
            103,
            102,
            183,
            104,
            122,
            56,
          ]),
          null,
          null,
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality?>[
          null,
          Uint8ListWithEquality.fromList([
            137,
            64,
            164,
            172,
            108,
            115,
            100,
            128,
            33,
            128,
          ]),
          Uint8ListWithEquality.fromList([
            186,
            168,
            51,
            83,
            42,
            57,
            109,
            152,
            66,
            129,
          ]),
          Uint8ListWithEquality.fromList([
            58,
            111,
            239,
            183,
            203,
            30,
            217,
            36,
            191,
            218,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality?>[
          null,
          Uint8ListWithEquality.fromList([
            63,
            52,
            181,
            129,
            76,
            147,
            53,
            218,
            134,
            233,
          ]),
          Uint8ListWithEquality.fromList([
            78,
            200,
            199,
            129,
            32,
            102,
            27,
            243,
            0,
            195,
          ]),
          null,
          Uint8ListWithEquality.fromList([
            42,
            138,
            96,
            55,
            21,
            86,
            99,
            198,
            241,
            70,
          ]),
        ].lock,
      ),
      (
        i: <Uint8ListWithEquality?>[
          Uint8ListWithEquality.fromList([
            115,
            133,
            53,
            37,
            57,
            65,
            0,
            97,
            7,
            64,
          ]),
          Uint8ListWithEquality.fromList([
            26,
            51,
            241,
            91,
            24,
            135,
            27,
            226,
            203,
            121,
          ]),
          null,
          Uint8ListWithEquality.fromList([
            205,
            122,
            192,
            35,
            78,
            88,
            230,
            218,
            187,
            194,
          ]),
          null,
          Uint8ListWithEquality.fromList([
            100,
            43,
            75,
            157,
            243,
            251,
            95,
            117,
            197,
            8,
          ]),
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery62.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery62.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query63', () async {
    final datas = <tasksQuery63.Query63Args>[
      (
        i: <TasksId?>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId?>[
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
        ].lock,
      ),
      (
        i: <TasksId?>[
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          null,
          null,
          null,
          null,
        ].lock,
      ),
      (i: <TasksId?>[TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c')].lock),
      (
        i: <TasksId?>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          null,
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
        ].lock,
      ),
      (
        i: <TasksId?>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId?>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId?>[
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (
        i: <TasksId?>[
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          null,
          null,
          null,
          null,
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        ].lock,
      ),
      (i: <TasksId?>[null, null, null, null, null, null, null].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery63.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery63.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query64', () async {
    final datas = <tasksQuery64.Query64Args>[
      (
        i: <dynamic>[
          null,
          604551,
          null,
          'congue',
          'duis',
          311175,
          null,
          true,
        ].lock,
      ),
      (i: <dynamic>[null, 0.7068061848897715, true].lock),
      (i: <dynamic>[null].lock),
      (
        i: <dynamic>[
          null,
          null,
          null,
          false,
          917245,
          null,
          null,
          null,
          null,
        ].lock,
      ),
      (i: <dynamic>[null, 'libero'].lock),
      (i: <dynamic>['rhoncus'].lock),
      (i: <dynamic>[0.5692013319954301].lock),
      (i: <dynamic>['lacus', null, null, null].lock),
      (i: <dynamic>[].lock),
      (
        i: <dynamic>[
          194628,
          false,
          'adipiscing',
          0.10232010853766105,
          220137,
          null,
          null,
          0.7827211554876113,
        ].lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery64.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery64.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query65', () async {
    final datas = <tasksQuery65.Query65Args>[
      (i: <$hi?>[$hi(), null, $hi(), null, null, null, $hi()].lock),
      (
        i: <$hi?>[
          $hi(),
          null,
          null,
          null,
          null,
          $hi(),
          $hi(),
          null,
          $hi(),
        ].lock,
      ),
      (i: <$hi?>[null, $hi()].lock),
      (i: <$hi?>[$hi(), $hi(), $hi()].lock),
      (i: <$hi?>[].lock),
      (i: <$hi?>[$hi(), null, null, null, $hi()].lock),
      (
        i: <$hi?>[
          $hi(),
          null,
          null,
          $hi(),
          $hi(),
          null,
          null,
          $hi(),
          $hi(),
        ].lock,
      ),
      (i: <$hi?>[$hi(), $hi(), $hi()].lock),
      (i: <$hi?>[null, null, $hi(), $hi(), null, $hi(), $hi()].lock),
      (i: <$hi?>[null].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery65.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery65.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query66', () async {
    final datas = <tasksQuery66.Query66Args>[
      (i: <$1_0?>[$1_0(), $1_0(), $1_0(), null, null].lock),
      (i: <$1_0?>[$1_0()].lock),
      (i: <$1_0?>[$1_0(), null, $1_0(), $1_0(), null, null, null, null].lock),
      (i: <$1_0?>[].lock),
      (i: <$1_0?>[].lock),
      (i: <$1_0?>[$1_0(), null, null, $1_0(), $1_0()].lock),
      (i: <$1_0?>[$1_0(), $1_0(), $1_0(), $1_0(), null, $1_0()].lock),
      (i: <$1_0?>[null, $1_0(), null, null, null].lock),
      (i: <$1_0?>[$1_0()].lock),
      (i: <$1_0?>[].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery66.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery66.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query67', () async {
    final datas = <tasksQuery67.Query67Args>[
      (i: <$true?>[$true(), null].lock),
      (i: <$true?>[$true(), null, $true(), $true(), null, null].lock),
      (i: <$true?>[$true(), $true(), $true(), $true()].lock),
      (i: <$true?>[null, null].lock),
      (i: <$true?>[$true()].lock),
      (i: <$true?>[null].lock),
      (i: <$true?>[$true(), null, null, $true(), $true(), null, null].lock),
      (i: <$true?>[null, null, $true(), null, $true(), $true()].lock),
      (
        i: <$true?>[
          null,
          $true(),
          null,
          null,
          null,
          null,
          null,
          null,
          $true(),
        ].lock,
      ),
      (i: <$true?>[null].lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery67.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery67.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query69', () async {
    final datas = <tasksQuery69.Query69Args>[
      (
        i: <String, String>{
          'platea': 'eros',
          'imperdiet': 'interdum',
          'accumsan': 'neque',
          'pretium': 'orci',
          'tempor': 'congue',
          'suspendisse': 'neque',
          'lobortis': 'hendrerit',
          'ligula': 'convallis',
          'ipsum': 'sociis',
        }.lock,
      ),
      (
        i: <String, String>{
          'elementum': 'aliquam',
          'morbi': 'scelerisque',
          'nisl': 'ultricies',
          'sapien': 'pellentesque',
        }.lock,
      ),
      (
        i: <String, String>{
          'habitant': 'mauris',
          'eleifend': 'diam',
          'libero': 'magnis',
          'sapien': 'semper',
        }.lock,
      ),
      (
        i: <String, String>{
          'aenean': 'dui',
          'eros': 'commodo',
          'nullam': 'pretium',
        }.lock,
      ),
      (
        i: <String, String>{
          'accumsan': 'aenean',
          'lorem': 'eu',
          'platea': 'dictum',
          'lectus': 'porta',
        }.lock,
      ),
      (
        i: <String, String>{
          'pulvinar': 'dictum',
          'quam': 'vitae',
          'lectus': 'eget',
          'consequat': 'eros',
          'magnis': 'nibh',
          'amet': 'integer',
        }.lock,
      ),
      (i: <String, String>{}.lock),
      (
        i: <String, String>{
          'neque': 'faucibus',
          'proin': 'dui',
          'aliquet': 'ac',
          'rhoncus': 'libero',
          'dictum': 'feugiat',
          'rhoncus': 'lacinia',
          'nunc': 'at',
        }.lock,
      ),
      (
        i: <String, String>{
          'in': 'dictumst',
          'adipiscing': 'nam',
          'aliquet': 'cursus',
          'porta': 'eu',
          'facilisis': 'commodo',
          'ridiculus': 'potenti',
        }.lock,
      ),
      (i: <String, String>{'nunc': 'blandit', 'vitae': 'vitae'}.lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery69.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery69.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query70', () async {
    final datas = <tasksQuery70.Query70Args>[
      (
        i: <String, double>{
          'pharetra': 0.5121831162615297,
          'imperdiet': 0.4786686803486121,
          'pharetra': 0.9959930409783286,
          'dictum': 0.5104871307311052,
          'semper': 0.4923779149931533,
          'donec': 0.053825233299541475,
          'ultrices': 0.6064199812266353,
          'sed': 0.049991908811384156,
          'iaculis': 0.21977953247685478,
        }.lock,
      ),
      (
        i: <String, double>{
          'orci': 0.05310771885655596,
          'laoreet': 0.7853771341952497,
        }.lock,
      ),
      (
        i: <String, double>{
          'mi': 0.1098135460351104,
          'blandit': 0.7515979682407452,
          'enim': 0.8686352747954678,
          'bibendum': 0.3351282800820228,
          'duis': 0.7605450514332996,
          'a': 0.2399512856899857,
          'aenean': 0.5422433624112671,
        }.lock,
      ),
      (
        i: <String, double>{
          'dis': 0.12191003409847401,
          'luctus': 0.6229741602412374,
          'malesuada': 0.5229053994172483,
        }.lock,
      ),
      (i: <String, double>{'senectus': 0.2728217233252882}.lock),
      (
        i: <String, double>{
          'risus': 0.6178866903967464,
          'aliquet': 0.5580629144737388,
          'natoque': 0.2566012842331321,
          'massa': 0.8235332996784974,
          'mollis': 0.5037839053254729,
        }.lock,
      ),
      (
        i: <String, double>{
          'bibendum': 0.42376154381486697,
          'massa': 0.37254872058975896,
          'augue': 0.4157495732507249,
        }.lock,
      ),
      (
        i: <String, double>{
          'sapien': 0.6290219523546526,
          'scelerisque': 0.919304471421854,
          'justo': 0.7478962955789805,
          'magna': 0.822200000430086,
          'viverra': 0.8760499988784889,
          'duis': 0.7457460092910014,
        }.lock,
      ),
      (
        i: <String, double>{
          'risus': 0.3174965402771107,
          'luctus': 0.10086939516353366,
          'purus': 0.3351941786054501,
          'platea': 0.37992511280131536,
          'convallis': 0.7297032953717107,
          'pharetra': 0.49426679300045084,
          'dapibus': 0.4132260571360076,
        }.lock,
      ),
      (i: <String, double>{'a': 0.029905858156537568}.lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery70.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery70.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query71', () async {
    final datas = <tasksQuery71.Query71Args>[
      (i: <String, bool>{}.lock),
      (
        i: <String, bool>{
          'quis': false,
          'aenean': false,
          'aenean': false,
          'dapibus': false,
          'pellentesque': true,
          'lorem': false,
          'id': false,
          'nisi': false,
          'fermentum': true,
        }.lock,
      ),
      (i: <String, bool>{'eu': false, 'netus': true, 'augue': false}.lock),
      (i: <String, bool>{}.lock),
      (
        i: <String, bool>{
          'integer': false,
          'pharetra': true,
          'eros': false,
          'lectus': true,
          'consequat': true,
        }.lock,
      ),
      (
        i: <String, bool>{
          'porttitor': true,
          'purus': false,
          'sem': false,
          'at': true,
          'massa': false,
          'dolor': false,
          'pellentesque': false,
          'blandit': false,
          'sit': true,
        }.lock,
      ),
      (
        i: <String, bool>{
          'porta': false,
          'dolor': false,
          'pharetra': false,
          'orci': true,
          'vestibulum': true,
          'fermentum': true,
          'ligula': true,
          'eu': false,
          'dapibus': false,
        }.lock,
      ),
      (
        i: <String, bool>{
          'lacinia': true,
          'eget': true,
          'purus': true,
          'congue': true,
          'eget': true,
        }.lock,
      ),
      (i: <String, bool>{'fusce': false, 'ultricies': true}.lock),
      (
        i: <String, bool>{
          'tristique': false,
          'metus': true,
          'nisi': false,
          'senectus': false,
          'dapibus': true,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery71.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery71.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query72', () async {
    final datas = <tasksQuery72.Query72Args>[
      (
        i: <String, int>{
          'vulputate': 203065,
          'habitant': 176378,
          'pulvinar': 879137,
          'bibendum': 398382,
          'magna': 864627,
        }.lock,
      ),
      (
        i: <String, int>{
          'magnis': 785823,
          'pellentesque': 781167,
          'neque': 86520,
          'suspendisse': 482489,
          'imperdiet': 377862,
          'nec': 928525,
          'arcu': 64117,
          'nec': 198048,
          'blandit': 931971,
        }.lock,
      ),
      (
        i: <String, int>{
          'imperdiet': 260668,
          'vitae': 457457,
          'fames': 580014,
        }.lock,
      ),
      (
        i: <String, int>{
          'tortor': 230428,
          'elit': 226313,
          'neque': 169902,
          'urna': 674068,
          'tortor': 468799,
          'est': 937796,
          'tincidunt': 614663,
          'nibh': 918157,
          'ullamcorper': 276187,
        }.lock,
      ),
      (i: <String, int>{}.lock),
      (i: <String, int>{}.lock),
      (
        i: <String, int>{
          'platea': 783252,
          'habitant': 347988,
          'blandit': 686300,
          'placerat': 857221,
          'augue': 107560,
          'mi': 324461,
          'dapibus': 723117,
          'elit': 526803,
          'proin': 62533,
        }.lock,
      ),
      (
        i: <String, int>{
          'dictum': 508267,
          'placerat': 200186,
          'aliquet': 949124,
          'eu': 159346,
          'nam': 459731,
          'ultricies': 340135,
          'bibendum': 320161,
          'porta': 390443,
        }.lock,
      ),
      (
        i: <String, int>{
          'mauris': 61772,
          'adipiscing': 808131,
          'posuere': 667097,
          'tempor': 833652,
        }.lock,
      ),
      (
        i: <String, int>{
          'porta': 268906,
          'dapibus': 257133,
          'quisque': 166893,
          'libero': 817262,
          'duis': 875525,
          'consectetur': 77586,
          'maecenas': 155283,
          'leo': 739543,
          'eu': 67528,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery72.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery72.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query73', () async {
    final datas = <tasksQuery73.Query73Args>[
      (
        i: <String, Uint8ListWithEquality>{
          'gravida': Uint8ListWithEquality.fromList([
            228,
            111,
            135,
            123,
            207,
            63,
            158,
            217,
            227,
            103,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'nibh': Uint8ListWithEquality.fromList([
            72,
            187,
            25,
            13,
            143,
            181,
            44,
            200,
            89,
            100,
          ]),
          'orci': Uint8ListWithEquality.fromList([
            237,
            87,
            172,
            123,
            253,
            14,
            43,
            202,
            8,
            249,
          ]),
          'ligula': Uint8ListWithEquality.fromList([
            171,
            240,
            249,
            60,
            173,
            55,
            153,
            116,
            214,
            140,
          ]),
          'orci': Uint8ListWithEquality.fromList([
            9,
            200,
            135,
            195,
            217,
            245,
            183,
            178,
            165,
            226,
          ]),
          'aliquet': Uint8ListWithEquality.fromList([
            76,
            51,
            117,
            183,
            188,
            65,
            174,
            226,
            37,
            74,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'imperdiet': Uint8ListWithEquality.fromList([
            238,
            228,
            108,
            144,
            65,
            223,
            239,
            150,
            161,
            166,
          ]),
          'a': Uint8ListWithEquality.fromList([
            126,
            139,
            157,
            90,
            133,
            104,
            19,
            5,
            193,
            151,
          ]),
          'facilisi': Uint8ListWithEquality.fromList([
            178,
            155,
            202,
            8,
            36,
            92,
            134,
            157,
            95,
            250,
          ]),
          'porttitor': Uint8ListWithEquality.fromList([
            192,
            231,
            241,
            23,
            226,
            27,
            199,
            44,
            149,
            152,
          ]),
          'pellentesque': Uint8ListWithEquality.fromList([
            26,
            140,
            37,
            34,
            149,
            156,
            62,
            37,
            144,
            95,
          ]),
          'fusce': Uint8ListWithEquality.fromList([
            47,
            179,
            40,
            52,
            206,
            6,
            153,
            31,
            129,
            214,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'fusce': Uint8ListWithEquality.fromList([
            81,
            65,
            157,
            145,
            140,
            153,
            53,
            152,
            148,
            204,
          ]),
          'ridiculus': Uint8ListWithEquality.fromList([
            253,
            207,
            154,
            102,
            235,
            173,
            119,
            224,
            248,
            83,
          ]),
          'aliquam': Uint8ListWithEquality.fromList([
            167,
            81,
            46,
            215,
            170,
            50,
            86,
            69,
            128,
            238,
          ]),
          'enim': Uint8ListWithEquality.fromList([
            11,
            232,
            201,
            208,
            118,
            245,
            202,
            201,
            142,
            164,
          ]),
          'tempus': Uint8ListWithEquality.fromList([
            22,
            210,
            24,
            75,
            95,
            133,
            151,
            43,
            18,
            203,
          ]),
          'odio': Uint8ListWithEquality.fromList([
            97,
            76,
            229,
            196,
            124,
            77,
            61,
            148,
            32,
            223,
          ]),
          'sodales': Uint8ListWithEquality.fromList([
            0,
            226,
            15,
            4,
            226,
            112,
            89,
            209,
            249,
            158,
          ]),
          'scelerisque': Uint8ListWithEquality.fromList([
            60,
            249,
            230,
            166,
            240,
            29,
            78,
            150,
            7,
            102,
          ]),
          'habitant': Uint8ListWithEquality.fromList([
            168,
            112,
            3,
            244,
            155,
            22,
            235,
            85,
            23,
            18,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'odio': Uint8ListWithEquality.fromList([
            232,
            177,
            207,
            85,
            170,
            121,
            134,
            79,
            213,
            51,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'felis': Uint8ListWithEquality.fromList([
            6,
            158,
            82,
            207,
            153,
            247,
            31,
            134,
            204,
            123,
          ]),
          'mi': Uint8ListWithEquality.fromList([
            155,
            55,
            178,
            242,
            181,
            38,
            175,
            137,
            53,
            115,
          ]),
          'nisl': Uint8ListWithEquality.fromList([
            30,
            136,
            117,
            175,
            247,
            193,
            88,
            105,
            41,
            205,
          ]),
          'urna': Uint8ListWithEquality.fromList([
            217,
            25,
            91,
            114,
            223,
            221,
            186,
            131,
            14,
            42,
          ]),
          'est': Uint8ListWithEquality.fromList([
            1,
            246,
            225,
            62,
            128,
            52,
            85,
            72,
            96,
            146,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'nisl': Uint8ListWithEquality.fromList([
            229,
            190,
            5,
            20,
            95,
            100,
            4,
            185,
            203,
            130,
          ]),
          'tellus': Uint8ListWithEquality.fromList([
            114,
            175,
            23,
            113,
            57,
            235,
            85,
            225,
            133,
            41,
          ]),
          'tristique': Uint8ListWithEquality.fromList([
            3,
            64,
            64,
            208,
            33,
            250,
            246,
            133,
            190,
            96,
          ]),
          'lorem': Uint8ListWithEquality.fromList([
            113,
            75,
            46,
            165,
            0,
            239,
            125,
            36,
            66,
            147,
          ]),
          'adipiscing': Uint8ListWithEquality.fromList([
            60,
            69,
            44,
            21,
            73,
            165,
            75,
            252,
            176,
            65,
          ]),
          'accumsan': Uint8ListWithEquality.fromList([
            109,
            184,
            219,
            180,
            145,
            36,
            1,
            55,
            222,
            77,
          ]),
          'dapibus': Uint8ListWithEquality.fromList([
            205,
            13,
            121,
            84,
            71,
            154,
            228,
            69,
            245,
            191,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'eleifend': Uint8ListWithEquality.fromList([
            26,
            41,
            76,
            228,
            209,
            72,
            54,
            214,
            154,
            35,
          ]),
          'interdum': Uint8ListWithEquality.fromList([
            190,
            157,
            90,
            250,
            196,
            34,
            128,
            36,
            186,
            170,
          ]),
          'ornare': Uint8ListWithEquality.fromList([
            154,
            172,
            146,
            192,
            251,
            209,
            36,
            45,
            130,
            155,
          ]),
          'nisi': Uint8ListWithEquality.fromList([
            153,
            12,
            92,
            249,
            220,
            217,
            167,
            140,
            129,
            90,
          ]),
          'pellentesque': Uint8ListWithEquality.fromList([
            176,
            139,
            244,
            42,
            236,
            12,
            75,
            23,
            155,
            95,
          ]),
          'et': Uint8ListWithEquality.fromList([
            209,
            116,
            24,
            221,
            143,
            15,
            46,
            143,
            202,
            146,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'feugiat': Uint8ListWithEquality.fromList([
            192,
            189,
            18,
            99,
            200,
            218,
            252,
            44,
            97,
            100,
          ]),
          'sapien': Uint8ListWithEquality.fromList([
            182,
            24,
            60,
            28,
            25,
            248,
            174,
            15,
            58,
            226,
          ]),
          'commodo': Uint8ListWithEquality.fromList([
            103,
            247,
            192,
            75,
            44,
            190,
            25,
            175,
            59,
            200,
          ]),
          'habitasse': Uint8ListWithEquality.fromList([
            201,
            64,
            177,
            65,
            2,
            127,
            217,
            52,
            59,
            100,
          ]),
          'hendrerit': Uint8ListWithEquality.fromList([
            231,
            238,
            10,
            84,
            251,
            219,
            216,
            67,
            134,
            148,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality>{
          'aenean': Uint8ListWithEquality.fromList([
            144,
            220,
            90,
            23,
            122,
            200,
            197,
            90,
            12,
            203,
          ]),
          'sem': Uint8ListWithEquality.fromList([
            228,
            228,
            118,
            102,
            101,
            181,
            118,
            63,
            176,
            43,
          ]),
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery73.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery73.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query74', () async {
    final datas = <tasksQuery74.Query74Args>[
      (
        i: <String, TasksId>{
          'odio': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'nascetur': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'suscipit': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'felis': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'platea': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'senectus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'malesuada': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'ridiculus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'turpis': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'lectus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'lobortis': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'eget': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'imperdiet': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'convallis': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'etiam': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'fermentum': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'turpis': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'dui': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'sed': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'curabitur': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'sed': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'donec': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'scelerisque': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (i: <String, TasksId>{}.lock),
      (
        i: <String, TasksId>{
          'cursus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'tortor': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'placerat': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'adipiscing': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'dolor': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'felis': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'ipsum': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'tortor': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'erat': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'enim': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'massa': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'aliquam': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'euismod': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'sed': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'ut': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'mauris': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId>{
          'maecenas': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'dui': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'dictumst': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery74.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery74.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query75', () async {
    final datas = <tasksQuery75.Query75Args>[
      (
        i: <String, dynamic>{
          'platea': 0.5961029212250984,
          'fames': 0.43777254098586105,
          'in': 0.05048481302006402,
          'arcu': 0.8649455586276226,
          'nibh': 'eget',
          'mi': 0.38410639184174566,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'placerat': 0.08830582997670877,
          'dictumst': true,
          'mi': true,
          'aenean': false,
          'turpis': 0.6914369973822038,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'ullamcorper': false,
          'pulvinar': true,
          'lacinia': true,
          'mattis': 201147,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'vel': false,
          'commodo': 0.5230932888965264,
          'elementum': 0.8751918582429249,
          'sed': 559015,
          'lobortis': true,
          'malesuada': 917817,
          'quisque': 509870,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'sagittis': 155186,
          'suscipit': true,
          'morbi': 905949,
        }.lock,
      ),
      (i: <String, dynamic>{'eros': 550359}.lock),
      (
        i: <String, dynamic>{
          'laoreet': 0.41068551415866317,
          'elit': 924433,
          'sed': 325361,
          'fusce': true,
          'nisl': false,
          'elit': false,
          'dui': false,
          'lectus': 54355,
        }.lock,
      ),
      (i: <String, dynamic>{'dignissim': 'vestibulum'}.lock),
      (
        i: <String, dynamic>{
          'porttitor': 427551,
          'lobortis': 'scelerisque',
          'semper': 'ornare',
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'quis': 339733,
          'maecenas': 'gravida',
          'eget': 0.45430304913183617,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery75.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery75.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query76', () async {
    final datas = <tasksQuery76.Query76Args>[
      (
        i: <String, void>{
          'nec': null,
          'lobortis': null,
          'pellentesque': null,
          'enim': null,
        }.lock,
      ),
      (
        i: <String, void>{
          'cursus': null,
          'proin': null,
          'feugiat': null,
          'vestibulum': null,
          'luctus': null,
          'vivamus': null,
          'dapibus': null,
        }.lock,
      ),
      (
        i: <String, void>{
          'interdum': null,
          'non': null,
          'nunc': null,
          'lobortis': null,
          'erat': null,
          'lobortis': null,
          'tristique': null,
        }.lock,
      ),
      (
        i: <String, void>{
          'malesuada': null,
          'a': null,
          'duis': null,
          'phasellus': null,
          'nisi': null,
          'dapibus': null,
          'fermentum': null,
          'est': null,
        }.lock,
      ),
      (
        i: <String, void>{
          'dolor': null,
          'nisi': null,
          'hac': null,
          'malesuada': null,
          'lobortis': null,
          'congue': null,
          'ante': null,
          'suspendisse': null,
          'a': null,
        }.lock,
      ),
      (
        i: <String, void>{
          'tortor': null,
          'velit': null,
          'euismod': null,
          'aenean': null,
          'ipsum': null,
          'eros': null,
          'mauris': null,
          'magna': null,
          'penatibus': null,
        }.lock,
      ),
      (i: <String, void>{'non': null, 'euismod': null, 'mollis': null}.lock),
      (
        i: <String, void>{
          'elit': null,
          'dictumst': null,
          'semper': null,
          'mus': null,
        }.lock,
      ),
      (i: <String, void>{}.lock),
      (i: <String, void>{}.lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery76.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery76.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query77', () async {
    final datas = <tasksQuery77.Query77Args>[
      (
        i: <String, $hi>{
          'duis': $hi(),
          'pellentesque': $hi(),
          'aliquam': $hi(),
          'facilisi': $hi(),
          'et': $hi(),
          'sociis': $hi(),
          'tempus': $hi(),
          'neque': $hi(),
        }.lock,
      ),
      (i: <String, $hi>{'felis': $hi(), 'sagittis': $hi()}.lock),
      (i: <String, $hi>{'lacus': $hi(), 'congue': $hi()}.lock),
      (i: <String, $hi>{}.lock),
      (i: <String, $hi>{'sed': $hi(), 'sociis': $hi(), 'ac': $hi()}.lock),
      (i: <String, $hi>{'posuere': $hi(), 'morbi': $hi()}.lock),
      (i: <String, $hi>{'auctor': $hi(), 'eget': $hi()}.lock),
      (
        i: <String, $hi>{
          'habitasse': $hi(),
          'imperdiet': $hi(),
          'lobortis': $hi(),
          'lacinia': $hi(),
          'quis': $hi(),
          'molestie': $hi(),
          'cum': $hi(),
          'erat': $hi(),
        }.lock,
      ),
      (
        i: <String, $hi>{
          'condimentum': $hi(),
          'porttitor': $hi(),
          'mus': $hi(),
          'viverra': $hi(),
          'tempor': $hi(),
          'nisl': $hi(),
          'at': $hi(),
        }.lock,
      ),
      (
        i: <String, $hi>{
          'iaculis': $hi(),
          'justo': $hi(),
          'urna': $hi(),
          'commodo': $hi(),
          'aliquet': $hi(),
          'tellus': $hi(),
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery77.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery77.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query78', () async {
    final datas = <tasksQuery78.Query78Args>[
      (i: <String, $1_0>{'elit': $1_0(), 'magnis': $1_0()}.lock),
      (
        i: <String, $1_0>{
          'eleifend': $1_0(),
          'magnis': $1_0(),
          'fusce': $1_0(),
          'risus': $1_0(),
        }.lock,
      ),
      (
        i: <String, $1_0>{
          'vulputate': $1_0(),
          'ultricies': $1_0(),
          'sagittis': $1_0(),
          'penatibus': $1_0(),
          'ante': $1_0(),
          'cursus': $1_0(),
        }.lock,
      ),
      (
        i: <String, $1_0>{
          'lorem': $1_0(),
          'posuere': $1_0(),
          'orci': $1_0(),
          'metus': $1_0(),
          'mollis': $1_0(),
          'orci': $1_0(),
          'pellentesque': $1_0(),
          'nibh': $1_0(),
        }.lock,
      ),
      (
        i: <String, $1_0>{
          'faucibus': $1_0(),
          'ullamcorper': $1_0(),
          'vivamus': $1_0(),
          'metus': $1_0(),
          'tortor': $1_0(),
          'orci': $1_0(),
          'bibendum': $1_0(),
          'libero': $1_0(),
        }.lock,
      ),
      (
        i: <String, $1_0>{
          'nibh': $1_0(),
          'nascetur': $1_0(),
          'dictum': $1_0(),
          'consequat': $1_0(),
          'quis': $1_0(),
        }.lock,
      ),
      (
        i: <String, $1_0>{
          'ultricies': $1_0(),
          'augue': $1_0(),
          'elit': $1_0(),
          'semper': $1_0(),
          'venenatis': $1_0(),
          'sodales': $1_0(),
          'ornare': $1_0(),
          'venenatis': $1_0(),
        }.lock,
      ),
      (
        i: <String, $1_0>{
          'metus': $1_0(),
          'velit': $1_0(),
          'pulvinar': $1_0(),
          'pretium': $1_0(),
          'tristique': $1_0(),
          'penatibus': $1_0(),
          'eget': $1_0(),
          'tellus': $1_0(),
        }.lock,
      ),
      (
        i: <String, $1_0>{
          'orci': $1_0(),
          'scelerisque': $1_0(),
          'mollis': $1_0(),
          'iaculis': $1_0(),
        }.lock,
      ),
      (
        i: <String, $1_0>{
          'donec': $1_0(),
          'integer': $1_0(),
          'morbi': $1_0(),
          'leo': $1_0(),
          'phasellus': $1_0(),
          'iaculis': $1_0(),
          'etiam': $1_0(),
          'elit': $1_0(),
          'dis': $1_0(),
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery78.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery78.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query79', () async {
    final datas = <tasksQuery79.Query79Args>[
      (
        i: <String, $true>{
          'est': $true(),
          'dapibus': $true(),
          'porta': $true(),
        }.lock,
      ),
      (
        i: <String, $true>{
          'aliquam': $true(),
          'ridiculus': $true(),
          'sapien': $true(),
          'cum': $true(),
          'tristique': $true(),
          'ornare': $true(),
        }.lock,
      ),
      (
        i: <String, $true>{
          'neque': $true(),
          'sit': $true(),
          'nunc': $true(),
          'nam': $true(),
          'odio': $true(),
        }.lock,
      ),
      (i: <String, $true>{}.lock),
      (
        i: <String, $true>{
          'etiam': $true(),
          'nunc': $true(),
          'a': $true(),
          'adipiscing': $true(),
          'sapien': $true(),
          'commodo': $true(),
          'urna': $true(),
          'euismod': $true(),
          'a': $true(),
        }.lock,
      ),
      (
        i: <String, $true>{
          'nec': $true(),
          'habitant': $true(),
          'sagittis': $true(),
          'sapien': $true(),
          'tincidunt': $true(),
        }.lock,
      ),
      (
        i: <String, $true>{
          'malesuada': $true(),
          'mi': $true(),
          'vestibulum': $true(),
          'fermentum': $true(),
          'massa': $true(),
          'ullamcorper': $true(),
          'id': $true(),
        }.lock,
      ),
      (
        i: <String, $true>{
          'nec': $true(),
          'eget': $true(),
          'auctor': $true(),
          'condimentum': $true(),
        }.lock,
      ),
      (
        i: <String, $true>{
          'aliquam': $true(),
          'turpis': $true(),
          'mi': $true(),
        }.lock,
      ),
      (
        i: <String, $true>{
          'parturient': $true(),
          'augue': $true(),
          'ipsum': $true(),
          'libero': $true(),
          'ridiculus': $true(),
          'donec': $true(),
          'integer': $true(),
          'facilisi': $true(),
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery79.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery79.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query81', () async {
    final datas = <tasksQuery81.Query81Args>[
      (
        i: <String, String?>{
          'mus': 'id',
          'parturient': null,
          'enim': 'sem',
        }.lock,
      ),
      (
        i: <String, String?>{
          'est': 'nullam',
          'amet': 'blandit',
          'felis': 'sollicitudin',
          'aenean': 'odio',
          'sagittis': null,
          'non': 'est',
          'senectus': null,
        }.lock,
      ),
      (
        i: <String, String?>{
          'pharetra': 'placerat',
          'fermentum': null,
          'ornare': null,
          'ridiculus': 'maecenas',
          'justo': null,
          'posuere': null,
          'odio': 'suscipit',
        }.lock,
      ),
      (
        i: <String, String?>{
          'penatibus': null,
          'placerat': 'tristique',
          'volutpat': null,
          'dignissim': 'aliquam',
        }.lock,
      ),
      (
        i: <String, String?>{
          'nibh': 'augue',
          'lacus': 'placerat',
          'curabitur': null,
          'quisque': null,
        }.lock,
      ),
      (
        i: <String, String?>{
          'quis': null,
          'turpis': null,
          'tristique': null,
          'lorem': null,
          'congue': 'sit',
          'rhoncus': null,
          'gravida': null,
          'blandit': null,
        }.lock,
      ),
      (i: <String, String?>{'pharetra': 'erat', 'lectus': null}.lock),
      (
        i: <String, String?>{
          'ultricies': null,
          'dui': 'etiam',
          'pulvinar': null,
          'est': null,
          'turpis': 'varius',
          'molestie': null,
        }.lock,
      ),
      (
        i: <String, String?>{
          'id': 'vel',
          'ultricies': null,
          'habitasse': 'mauris',
          'donec': null,
          'ac': 'facilisis',
          'elit': 'enim',
          'ultrices': 'porta',
          'nulla': 'pulvinar',
          'a': 'facilisis',
        }.lock,
      ),
      (
        i: <String, String?>{
          'nec': 'sed',
          'nisi': 'nisi',
          'luctus': 'tempor',
          'nec': null,
          'imperdiet': 'facilisis',
          'vitae': 'nullam',
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery81.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery81.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query82', () async {
    final datas = <tasksQuery82.Query82Args>[
      (
        i: <String, double?>{
          'maecenas': 0.062426612986398955,
          'porttitor': 0.46761586247465703,
          'suspendisse': null,
          'quis': null,
          'amet': null,
          'accumsan': 0.662659119820469,
        }.lock,
      ),
      (
        i: <String, double?>{
          'rhoncus': null,
          'proin': 0.8207263216231236,
          'montes': 0.9166059046032191,
          'accumsan': null,
          'sagittis': 0.9467839937782863,
          'duis': null,
          'mattis': null,
        }.lock,
      ),
      (
        i: <String, double?>{
          'metus': null,
          'habitasse': 0.2171536699928175,
          'eget': 0.9479478151604679,
          'adipiscing': null,
          'aliquet': 0.25554196254223827,
          'habitasse': 0.9630898795057107,
          'tortor': 0.9862194299310104,
        }.lock,
      ),
      (
        i: <String, double?>{
          'porta': null,
          'dolor': 0.01007867702003673,
          'cursus': null,
          'mauris': 0.5091922716561799,
          'parturient': null,
          'magna': null,
          'faucibus': null,
          'leo': null,
        }.lock,
      ),
      (
        i: <String, double?>{
          'integer': 0.8052488371242582,
          'iaculis': null,
          'habitant': null,
          'fusce': null,
          'rhoncus': null,
          'pulvinar': 0.5037885444019302,
          'arcu': 0.04281928986384698,
          'nibh': 0.8670389268919629,
        }.lock,
      ),
      (
        i: <String, double?>{
          'luctus': 0.831723195290958,
          'mollis': null,
          'natoque': 0.34466216376102665,
          'et': 0.14362739819262849,
          'nisl': 0.619463930603774,
          'cum': 0.6101651717868048,
          'adipiscing': 0.27320647670065457,
        }.lock,
      ),
      (i: <String, double?>{'erat': null, 'mauris': null}.lock),
      (i: <String, double?>{'tristique': 0.3993641660008733}.lock),
      (i: <String, double?>{'mauris': null}.lock),
      (
        i: <String, double?>{
          'odio': null,
          'feugiat': null,
          'porta': 0.8838445455755917,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery82.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery82.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query83', () async {
    final datas = <tasksQuery83.Query83Args>[
      (
        i: <String, bool?>{
          'malesuada': null,
          'suspendisse': true,
          'etiam': null,
          'tristique': null,
          'enim': null,
          'mollis': true,
          'ornare': true,
          'montes': false,
          'felis': true,
        }.lock,
      ),
      (i: <String, bool?>{'tincidunt': true, 'tellus': null}.lock),
      (i: <String, bool?>{}.lock),
      (i: <String, bool?>{'libero': true}.lock),
      (
        i: <String, bool?>{
          'tempus': false,
          'pulvinar': null,
          'convallis': null,
          'lacinia': null,
          'quis': null,
          'sollicitudin': null,
          'pellentesque': false,
        }.lock,
      ),
      (
        i: <String, bool?>{
          'nisl': false,
          'at': false,
          'tristique': null,
          'interdum': null,
          'varius': null,
        }.lock,
      ),
      (i: <String, bool?>{'quam': false, 'dui': null}.lock),
      (i: <String, bool?>{}.lock),
      (
        i: <String, bool?>{
          'a': null,
          'eu': false,
          'donec': false,
          'integer': null,
        }.lock,
      ),
      (
        i: <String, bool?>{
          'neque': true,
          'aliquet': null,
          'tempor': null,
          'pretium': false,
          'commodo': null,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery83.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery83.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query84', () async {
    final datas = <tasksQuery84.Query84Args>[
      (
        i: <String, int?>{
          'eu': null,
          'consectetur': null,
          'pellentesque': 652670,
          'habitant': 821724,
          'tempus': 491204,
        }.lock,
      ),
      (
        i: <String, int?>{
          'nunc': 336329,
          'eu': 384,
          'dolor': 904180,
          'nibh': null,
          'sem': null,
          'ultricies': null,
          'sem': null,
        }.lock,
      ),
      (
        i: <String, int?>{
          'risus': null,
          'laoreet': 462716,
          'est': null,
          'et': 760960,
          'vivamus': 163569,
          'varius': 334927,
          'commodo': 484182,
          'lorem': null,
        }.lock,
      ),
      (i: <String, int?>{'phasellus': null, 'etiam': null, 'mi': null}.lock),
      (
        i: <String, int?>{
          'quis': 176502,
          'cras': 581192,
          'quis': null,
          'integer': null,
          'urna': 101401,
          'pulvinar': 156531,
          'vestibulum': 287425,
        }.lock,
      ),
      (i: <String, int?>{'massa': 903854}.lock),
      (
        i: <String, int?>{
          'dapibus': null,
          'rhoncus': 893317,
          'congue': null,
          'platea': 752181,
          'tortor': 145357,
          'nunc': null,
          'dui': null,
          'accumsan': null,
        }.lock,
      ),
      (
        i: <String, int?>{
          'at': null,
          'metus': 678005,
          'non': null,
          'nec': 448103,
          'cum': null,
        }.lock,
      ),
      (i: <String, int?>{'sit': null, 'eu': null, 'dapibus': null}.lock),
      (
        i: <String, int?>{
          'ultricies': null,
          'cras': 618,
          'nascetur': null,
          'velit': null,
          'sociis': null,
          'aliquet': 613950,
          'montes': null,
          'adipiscing': 502421,
          'faucibus': null,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery84.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery84.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query85', () async {
    final datas = <tasksQuery85.Query85Args>[
      (
        i: <String, Uint8ListWithEquality?>{
          'lobortis': null,
          'etiam': Uint8ListWithEquality.fromList([
            40,
            208,
            174,
            3,
            89,
            24,
            34,
            196,
            151,
            171,
          ]),
          'nec': Uint8ListWithEquality.fromList([
            168,
            120,
            208,
            172,
            236,
            59,
            19,
            206,
            227,
            226,
          ]),
          'ante': Uint8ListWithEquality.fromList([
            9,
            26,
            64,
            90,
            25,
            140,
            78,
            12,
            37,
            95,
          ]),
          'in': null,
          'quam': null,
          'dapibus': Uint8ListWithEquality.fromList([
            211,
            253,
            51,
            247,
            230,
            244,
            25,
            66,
            166,
            15,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'mus': Uint8ListWithEquality.fromList([
            178,
            240,
            242,
            125,
            141,
            108,
            151,
            43,
            203,
            53,
          ]),
          'nulla': Uint8ListWithEquality.fromList([
            232,
            175,
            156,
            3,
            13,
            182,
            12,
            25,
            188,
            44,
          ]),
          'habitant': Uint8ListWithEquality.fromList([
            108,
            80,
            121,
            227,
            11,
            111,
            111,
            36,
            119,
            23,
          ]),
          'lorem': Uint8ListWithEquality.fromList([
            160,
            227,
            93,
            142,
            125,
            250,
            18,
            6,
            3,
            77,
          ]),
          'auctor': null,
          'potenti': null,
          'potenti': null,
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'mollis': Uint8ListWithEquality.fromList([
            49,
            30,
            241,
            117,
            102,
            224,
            16,
            141,
            62,
            11,
          ]),
          'purus': null,
          'vulputate': Uint8ListWithEquality.fromList([
            210,
            107,
            102,
            156,
            65,
            126,
            111,
            197,
            54,
            94,
          ]),
          'posuere': null,
          'egestas': null,
          'amet': null,
          'fames': Uint8ListWithEquality.fromList([
            206,
            186,
            13,
            212,
            145,
            85,
            15,
            198,
            80,
            195,
          ]),
          'condimentum': null,
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'eget': Uint8ListWithEquality.fromList([
            85,
            65,
            124,
            184,
            191,
            74,
            182,
            75,
            177,
            135,
          ]),
          'sed': null,
        }.lock,
      ),
      (i: <String, Uint8ListWithEquality?>{'interdum': null}.lock),
      (
        i: <String, Uint8ListWithEquality?>{
          'ut': null,
          'habitasse': null,
          'ac': null,
          'blandit': Uint8ListWithEquality.fromList([
            172,
            45,
            93,
            73,
            176,
            142,
            63,
            140,
            77,
            172,
          ]),
          'sodales': Uint8ListWithEquality.fromList([
            156,
            240,
            48,
            34,
            97,
            92,
            121,
            220,
            106,
            99,
          ]),
          'mattis': Uint8ListWithEquality.fromList([
            220,
            222,
            253,
            171,
            49,
            237,
            64,
            171,
            177,
            254,
          ]),
          'purus': null,
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'at': null,
          'ultricies': Uint8ListWithEquality.fromList([
            69,
            220,
            38,
            164,
            143,
            62,
            189,
            168,
            87,
            105,
          ]),
          'dui': null,
          'duis': Uint8ListWithEquality.fromList([
            89,
            146,
            179,
            127,
            136,
            122,
            85,
            10,
            34,
            158,
          ]),
          'malesuada': Uint8ListWithEquality.fromList([
            12,
            139,
            183,
            177,
            233,
            140,
            182,
            84,
            45,
            115,
          ]),
          'hendrerit': Uint8ListWithEquality.fromList([
            42,
            19,
            168,
            162,
            89,
            103,
            59,
            78,
            186,
            182,
          ]),
          'duis': Uint8ListWithEquality.fromList([
            107,
            225,
            53,
            108,
            191,
            102,
            62,
            112,
            18,
            198,
          ]),
          'nam': Uint8ListWithEquality.fromList([
            65,
            127,
            128,
            53,
            78,
            26,
            249,
            55,
            0,
            223,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'aliquam': Uint8ListWithEquality.fromList([
            191,
            184,
            225,
            26,
            230,
            54,
            218,
            167,
            35,
            138,
          ]),
          'dis': Uint8ListWithEquality.fromList([
            77,
            58,
            91,
            107,
            21,
            115,
            45,
            229,
            203,
            83,
          ]),
          'varius': Uint8ListWithEquality.fromList([
            29,
            134,
            36,
            216,
            18,
            121,
            251,
            20,
            17,
            0,
          ]),
          'purus': Uint8ListWithEquality.fromList([
            94,
            238,
            215,
            130,
            135,
            237,
            239,
            201,
            148,
            99,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'venenatis': Uint8ListWithEquality.fromList([
            236,
            158,
            93,
            200,
            108,
            185,
            149,
            52,
            200,
            228,
          ]),
        }.lock,
      ),
      (
        i: <String, Uint8ListWithEquality?>{
          'posuere': Uint8ListWithEquality.fromList([
            246,
            122,
            139,
            229,
            150,
            227,
            37,
            109,
            76,
            115,
          ]),
          'orci': null,
          'est': Uint8ListWithEquality.fromList([
            94,
            231,
            247,
            58,
            79,
            93,
            252,
            67,
            223,
            84,
          ]),
          'ipsum': Uint8ListWithEquality.fromList([
            127,
            217,
            138,
            26,
            186,
            210,
            148,
            114,
            90,
            215,
          ]),
          'etiam': null,
          'tempus': null,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery85.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery85.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query86', () async {
    final datas = <tasksQuery86.Query86Args>[
      (
        i: <String, TasksId?>{
          'vivamus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'laoreet': null,
          'egestas': null,
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'morbi': null,
          'eros': null,
          'est': null,
          'montes': null,
          'eu': null,
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'consectetur': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'viverra': null,
          'libero': null,
          'dictumst': null,
          'scelerisque': null,
          'tempus': null,
          'proin': null,
          'ultricies': null,
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'tempor': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'iaculis': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'non': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'quisque': null,
          'eros': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'dis': null,
          'senectus': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'tristique': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'fermentum': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'quis': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'auctor': null,
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'felis': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'interdum': null,
          'suscipit': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'velit': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'nascetur': null,
          'gravida': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'auctor': null,
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'nibh': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'est': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'nunc': null,
          'integer': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'neque': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'nisl': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'nec': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'tristique': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'libero': null,
        }.lock,
      ),
      (
        i: <String, TasksId?>{
          'integer': TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          'laoreet': null,
          'varius': null,
          'neque': null,
          'nulla': null,
          'donec': null,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery86.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery86.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query87', () async {
    final datas = <tasksQuery87.Query87Args>[
      (
        i: <String, dynamic>{
          'justo': null,
          'nec': 454203,
          'fermentum': null,
          'ipsum': 'convallis',
          'congue': 'curabitur',
          'nunc': null,
          'cras': 314577,
          'tortor': null,
        }.lock,
      ),
      (i: <String, dynamic>{'mauris': null, 'fusce': null}.lock),
      (i: <String, dynamic>{'diam': 892815}.lock),
      (i: <String, dynamic>{'diam': null, 'egestas': 'consequat'}.lock),
      (
        i: <String, dynamic>{
          'nec': null,
          'montes': null,
          'sed': 696339,
          'lorem': null,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'gravida': false,
          'lobortis': null,
          'urna': false,
          'ridiculus': null,
          'auctor': 'accumsan',
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'erat': null,
          'habitasse': 796649,
          'interdum': 775808,
          'metus': 0.8303995785982771,
        }.lock,
      ),
      (i: <String, dynamic>{}.lock),
      (
        i: <String, dynamic>{
          'varius': null,
          'vel': null,
          'suspendisse': 'convallis',
          'natoque': 'volutpat',
          'eros': null,
          'sodales': null,
          'lorem': false,
        }.lock,
      ),
      (
        i: <String, dynamic>{
          'egestas': 'lectus',
          'commodo': null,
          'convallis': null,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery87.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery87.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query88', () async {
    final datas = <tasksQuery88.Query88Args>[
      (
        i: <String, $hi?>{
          'eget': $hi(),
          'magna': null,
          'nisi': $hi(),
          'fermentum': null,
          'massa': null,
          'mi': $hi(),
          'nisl': null,
        }.lock,
      ),
      (
        i: <String, $hi?>{
          'lorem': null,
          'amet': null,
          'ligula': null,
          'ridiculus': $hi(),
          'iaculis': $hi(),
          'mauris': $hi(),
        }.lock,
      ),
      (
        i: <String, $hi?>{
          'accumsan': $hi(),
          'tempus': null,
          'sapien': null,
          'dapibus': null,
        }.lock,
      ),
      (
        i: <String, $hi?>{
          'ridiculus': null,
          'ultrices': null,
          'nunc': null,
          'proin': null,
          'libero': $hi(),
          'volutpat': null,
        }.lock,
      ),
      (
        i: <String, $hi?>{
          'ultricies': null,
          'potenti': null,
          'consectetur': $hi(),
        }.lock,
      ),
      (
        i: <String, $hi?>{
          'blandit': $hi(),
          'tincidunt': $hi(),
          'congue': null,
          'egestas': $hi(),
          'fringilla': $hi(),
          'morbi': $hi(),
        }.lock,
      ),
      (
        i: <String, $hi?>{
          'cras': $hi(),
          'euismod': null,
          'suspendisse': $hi(),
          'neque': $hi(),
        }.lock,
      ),
      (
        i: <String, $hi?>{
          'pretium': $hi(),
          'aenean': null,
          'etiam': null,
          'felis': null,
          'facilisis': null,
          'faucibus': null,
          'velit': $hi(),
          'ornare': null,
          'varius': null,
        }.lock,
      ),
      (
        i: <String, $hi?>{
          'praesent': null,
          'in': $hi(),
          'fermentum': null,
          'aliquam': null,
          'mattis': $hi(),
          'varius': $hi(),
          'nec': $hi(),
          'in': null,
        }.lock,
      ),
      (i: <String, $hi?>{'lectus': null}.lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery88.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery88.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query89', () async {
    final datas = <tasksQuery89.Query89Args>[
      (
        i: <String, $1_0?>{
          'ac': $1_0(),
          'magnis': $1_0(),
          'consequat': $1_0(),
        }.lock,
      ),
      (
        i: <String, $1_0?>{
          'natoque': null,
          'turpis': null,
          'fames': $1_0(),
          'sociis': null,
          'tellus': null,
          'dignissim': null,
          'placerat': null,
        }.lock,
      ),
      (i: <String, $1_0?>{'facilisis': $1_0()}.lock),
      (i: <String, $1_0?>{'commodo': null}.lock),
      (
        i: <String, $1_0?>{
          'tempor': $1_0(),
          'mauris': $1_0(),
          'consectetur': null,
          'parturient': $1_0(),
        }.lock,
      ),
      (i: <String, $1_0?>{}.lock),
      (i: <String, $1_0?>{'iaculis': $1_0(), 'purus': null, 'leo': null}.lock),
      (i: <String, $1_0?>{}.lock),
      (i: <String, $1_0?>{'egestas': null}.lock),
      (
        i: <String, $1_0?>{
          'nunc': null,
          'nunc': null,
          'pulvinar': $1_0(),
          'cum': $1_0(),
          'in': null,
          'montes': null,
          'volutpat': $1_0(),
          'at': null,
        }.lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery89.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery89.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query90', () async {
    final datas = <tasksQuery90.Query90Args>[
      (
        i: <String, $true?>{
          'parturient': null,
          'quisque': null,
          'sem': null,
          'amet': null,
          'parturient': null,
          'ornare': $true(),
          'condimentum': null,
        }.lock,
      ),
      (
        i: <String, $true?>{
          'dictumst': null,
          'habitasse': null,
          'viverra': $true(),
          'hac': $true(),
          'sed': $true(),
        }.lock,
      ),
      (i: <String, $true?>{'semper': null, 'commodo': null}.lock),
      (i: <String, $true?>{'sit': null, 'sapien': null, 'tortor': null}.lock),
      (
        i: <String, $true?>{
          'porttitor': null,
          'senectus': null,
          'praesent': $true(),
          'placerat': $true(),
          'libero': $true(),
          'fermentum': $true(),
          'lorem': $true(),
        }.lock,
      ),
      (
        i: <String, $true?>{
          'ridiculus': null,
          'fringilla': $true(),
          'nunc': null,
          'gravida': null,
          'nam': null,
          'habitasse': $true(),
          'quam': $true(),
          'eros': $true(),
        }.lock,
      ),
      (
        i: <String, $true?>{
          'etiam': null,
          'cum': null,
          'libero': $true(),
          'non': $true(),
          'platea': $true(),
          'sapien': null,
          'egestas': $true(),
          'nisi': $true(),
        }.lock,
      ),
      (
        i: <String, $true?>{
          'justo': null,
          'praesent': null,
          'blandit': null,
          'dapibus': null,
          'cum': null,
        }.lock,
      ),
      (i: <String, $true?>{}.lock),
      (i: <String, $true?>{}.lock),
    ];
    for (final data in datas) {
      final serialized = tasksQuery90.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery90.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query92', () async {
    final datas = <tasksQuery92.Query92Args>[
      (i: Union2<String, double>.in1('urna')),
      (i: Union2<String, double>.in1('sit')),
      (i: Union2<String, double>.in1('sit')),
      (i: Union2<String, double>.in1('eleifend')),
      (i: Union2<String, double>.in1('fringilla')),
      (i: Union2<String, double>.in1('tellus')),
      (i: Union2<String, double>.in1('tempor')),
      (i: Union2<String, double>.in1('diam')),
      (i: Union2<String, double>.in1('sem')),
      (i: Union2<String, double>.in1('etiam')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery92.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery92.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query93', () async {
    final datas = <tasksQuery93.Query93Args>[
      (i: Union2<bool, double>.in1(false)),
      (i: Union2<bool, double>.in1(false)),
      (i: Union2<bool, double>.in1(true)),
      (i: Union2<bool, double>.in1(false)),
      (i: Union2<bool, double>.in1(true)),
      (i: Union2<bool, double>.in1(false)),
      (i: Union2<bool, double>.in1(true)),
      (i: Union2<bool, double>.in1(false)),
      (i: Union2<bool, double>.in1(true)),
      (i: Union2<bool, double>.in1(false)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery93.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery93.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query94', () async {
    final datas = <tasksQuery94.Query94Args>[
      (i: Union2<String, bool>.in1('nulla')),
      (i: Union2<String, bool>.in1('interdum')),
      (i: Union2<String, bool>.in1('eros')),
      (i: Union2<String, bool>.in1('urna')),
      (i: Union2<String, bool>.in1('auctor')),
      (i: Union2<String, bool>.in1('dapibus')),
      (i: Union2<String, bool>.in1('elementum')),
      (i: Union2<String, bool>.in1('massa')),
      (i: Union2<String, bool>.in1('placerat')),
      (i: Union2<String, bool>.in1('tristique')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery94.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery94.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query95', () async {
    final datas = <tasksQuery95.Query95Args>[
      (i: Union3<String, double, bool>.in2(0.3563578112879252)),
      (i: Union3<String, double, bool>.in2(0.7822367290488329)),
      (i: Union3<String, double, bool>.in2(0.35871087870642493)),
      (i: Union3<String, double, bool>.in1('in')),
      (i: Union3<String, double, bool>.in1('mattis')),
      (i: Union3<String, double, bool>.in1('ante')),
      (i: Union3<String, double, bool>.in1('molestie')),
      (i: Union3<String, double, bool>.in2(0.2887797406692394)),
      (i: Union3<String, double, bool>.in1('sodales')),
      (i: Union3<String, double, bool>.in1('elit')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery95.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery95.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query96', () async {
    final datas = <tasksQuery96.Query96Args>[
      (i: null),
      (i: 'nec'),
      (i: null),
      (i: 'curabitur'),
      (i: 'dictum'),
      (i: 'quisque'),
      (i: null),
      (i: null),
      (i: null),
      (i: 'sagittis'),
    ];
    for (final data in datas) {
      final serialized = tasksQuery96.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery96.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query97', () async {
    final datas = <tasksQuery97.Query97Args>[
      (i: Union2<double, bool>.in1(0.3362074472078429)),
      (i: Union2<double, bool>.in1(0.7101207646365203)),
      (i: Union2<double, bool>.in1(0.7492215481233747)),
      (i: Union2<double, bool>.in1(0.5154606710484171)),
      (i: Union2<double, bool>.in1(0.23702765380402002)),
      (i: Union2<double, bool>.in1(0.38831275302918533)),
      (i: Union2<double, bool>.in1(0.8052285298284818)),
      (i: Union2<double, bool>.in1(0.906084007307816)),
      (i: Union2<double, bool>.in1(0.6877487190964456)),
      (i: Union2<double, bool>.in1(0.5943647619361885)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery97.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery97.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query98', () async {
    final datas = <tasksQuery98.Query98Args>[
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            192,
            17,
            154,
            24,
            183,
            72,
            55,
            213,
            173,
            233,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            0,
            132,
            84,
            107,
            20,
            250,
            46,
            150,
            108,
            228,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            80,
            239,
            135,
            245,
            45,
            30,
            243,
            14,
            110,
            209,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            46,
            7,
            210,
            213,
            219,
            122,
            179,
            221,
            8,
            203,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            149,
            220,
            248,
            214,
            167,
            40,
            203,
            210,
            50,
            168,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            36,
            172,
            40,
            168,
            34,
            33,
            32,
            191,
            17,
            188,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            39,
            70,
            172,
            147,
            128,
            60,
            154,
            199,
            6,
            138,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            102,
            97,
            98,
            145,
            68,
            243,
            59,
            250,
            123,
            201,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            81,
            119,
            41,
            38,
            117,
            129,
            107,
            164,
            149,
            177,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, String>.in1(
          Uint8ListWithEquality.fromList([
            163,
            54,
            47,
            223,
            241,
            52,
            63,
            11,
            139,
            61,
          ]),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery98.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery98.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query100', () async {
    final datas = <tasksQuery100.Query100Args>[
      (i: $yes$no.$yesMember),
      (i: $yes$no.$yesMember),
      (i: $yes$no.$yesMember),
      (i: $yes$no.$yesMember),
      (i: $yes$no.$yesMember),
      (i: $yes$no.$yesMember),
      (i: $yes$no.$yesMember),
      (i: $yes$no.$yesMember),
      (i: $yes$no.$yesMember),
      (i: $yes$no.$yesMember),
    ];
    for (final data in datas) {
      final serialized = tasksQuery100.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery100.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query101', () async {
    final datas = <tasksQuery101.Query101Args>[
      (i: $10$20$30.$1_0Member),
      (i: $10$20$30.$1_0Member),
      (i: $10$20$30.$2_0Member),
      (i: $10$20$30.$1_0Member),
      (i: $10$20$30.$1_0Member),
      (i: $10$20$30.$1_0Member),
      (i: $10$20$30.$2_0Member),
      (i: $10$20$30.$2_0Member),
      (i: $10$20$30.$2_0Member),
      (i: $10$20$30.$2_0Member),
    ];
    for (final data in datas) {
      final serialized = tasksQuery101.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery101.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query102', () async {
    final datas = <tasksQuery102.Query102Args>[
      (i: $admin$user$guest.$adminMember),
      (i: $admin$user$guest.$guestMember),
      (i: $admin$user$guest.$adminMember),
      (i: $admin$user$guest.$guestMember),
      (i: $admin$user$guest.$adminMember),
      (i: $admin$user$guest.$adminMember),
      (i: $admin$user$guest.$guestMember),
      (i: $admin$user$guest.$guestMember),
      (i: $admin$user$guest.$adminMember),
      (i: $admin$user$guest.$guestMember),
    ];
    for (final data in datas) {
      final serialized = tasksQuery102.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery102.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query103', () async {
    final datas = <tasksQuery103.Query103Args>[
      (i: Union2<int, double>.in1(506395)),
      (i: Union2<int, double>.in1(204148)),
      (i: Union2<int, double>.in1(916288)),
      (i: Union2<int, double>.in1(269202)),
      (i: Union2<int, double>.in1(315313)),
      (i: Union2<int, double>.in1(224835)),
      (i: Union2<int, double>.in1(282108)),
      (i: Union2<int, double>.in1(896176)),
      (i: Union2<int, double>.in1(244018)),
      (i: Union2<int, double>.in1(97483)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery103.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery103.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query104', () async {
    final datas = <tasksQuery104.Query104Args>[
      (i: Union3<String, double, bool>.in2(0.20904746838362287)),
      (i: Union3<String, double, bool>.in1('massa')),
      (i: Union3<String, double, bool>.in2(0.1283348464381553)),
      (i: Union3<String, double, bool>.in1('orci')),
      (i: Union3<String, double, bool>.in2(0.6333199511053029)),
      (i: Union3<String, double, bool>.in1('neque')),
      (i: Union3<String, double, bool>.in1('lacinia')),
      (i: Union3<String, double, bool>.in1('posuere')),
      (i: Union3<String, double, bool>.in2(0.5600773551635893)),
      (i: Union3<String, double, bool>.in2(0.42269884546164527)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery104.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery104.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query105', () async {
    final datas = <tasksQuery105.Query105Args>[
      (i: 586633),
      (i: 'elementum'),
      (i: null),
      (i: null),
      (i: null),
      (i: false),
      (i: null),
      (i: null),
      (i: 0.8576829341427542),
      (i: false),
    ];
    for (final data in datas) {
      final serialized = tasksQuery105.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery105.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query106', () async {
    final datas = <tasksQuery106.Query106Args>[
      (i: $true$false.$trueMember),
      (i: $true$false.$trueMember),
      (i: $true$false.$trueMember),
      (i: $true$false.$trueMember),
      (i: $true$false.$trueMember),
      (i: $true$false.$trueMember),
      (i: $true$false.$trueMember),
      (i: $true$false.$trueMember),
      (i: $true$false.$trueMember),
      (i: $true$false.$trueMember),
    ];
    for (final data in datas) {
      final serialized = tasksQuery106.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery106.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query107', () async {
    final datas = <tasksQuery107.Query107Args>[
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            12,
            160,
            185,
            195,
            250,
            0,
            134,
            22,
            173,
            225,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            184,
            114,
            50,
            50,
            83,
            202,
            107,
            121,
            246,
            76,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            209,
            13,
            8,
            121,
            49,
            1,
            197,
            216,
            245,
            125,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            216,
            226,
            67,
            92,
            136,
            89,
            168,
            164,
            171,
            175,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            44,
            210,
            33,
            194,
            49,
            131,
            118,
            140,
            30,
            229,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            201,
            64,
            6,
            26,
            125,
            100,
            61,
            53,
            65,
            150,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            109,
            213,
            242,
            174,
            127,
            127,
            73,
            37,
            203,
            127,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            168,
            103,
            119,
            148,
            68,
            202,
            125,
            225,
            94,
            194,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            243,
            227,
            108,
            143,
            125,
            84,
            29,
            201,
            29,
            37,
          ]),
        ),
      ),
      (
        i: Union2<Uint8ListWithEquality, int>.in1(
          Uint8ListWithEquality.fromList([
            222,
            79,
            190,
            212,
            204,
            25,
            74,
            62,
            144,
            14,
          ]),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery107.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery107.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query111', () async {
    final datas = <tasksQuery111.Query111Args>[
      (i: (age: 0.9322177422322627, name: 'laoreet')),
      (i: (age: 0.6250617737288346, name: 'lorem')),
      (i: (age: 0.5675300821520058, name: 'lobortis')),
      (i: (age: 0.7625305040018328, name: 'elementum')),
      (i: (age: 0.7810835611342373, name: 'duis')),
      (i: (age: 0.7601635355880196, name: 'magna')),
      (i: (age: 0.09987442105620725, name: 'curabitur')),
      (i: (age: 0.3700498035783819, name: 'enim')),
      (i: (age: 0.387989186918011, name: 'mauris')),
      (i: (age: 0.840302998016836, name: 'velit')),
    ];
    for (final data in datas) {
      final serialized = tasksQuery111.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery111.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query112', () async {
    final datas = <tasksQuery112.Query112Args>[
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'hendrerit',
        ),
      ),
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'facilisis',
        ),
      ),
      (
        i: (
          completed: true,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'auctor',
        ),
      ),
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'id',
        ),
      ),
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'nibh',
        ),
      ),
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'dignissim',
        ),
      ),
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'dictum',
        ),
      ),
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'ac',
        ),
      ),
      (
        i: (
          completed: true,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'sociis',
        ),
      ),
      (
        i: (
          completed: false,
          id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
          title: 'laoreet',
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery112.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery112.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query113', () async {
    final datas = <tasksQuery113.Query113Args>[
      (
        i: (
          settings: (notifications: false, theme: 'nascetur'),
          user: (email: 'nullam', name: 'augue'),
        ),
      ),
      (
        i: (
          settings: (notifications: true, theme: 'risus'),
          user: (email: 'ut', name: 'facilisis'),
        ),
      ),
      (
        i: (
          settings: (notifications: false, theme: 'habitant'),
          user: (email: 'integer', name: 'sapien'),
        ),
      ),
      (
        i: (
          settings: (notifications: false, theme: 'sapien'),
          user: (email: 'volutpat', name: 'a'),
        ),
      ),
      (
        i: (
          settings: (notifications: true, theme: 'metus'),
          user: (email: 'lobortis', name: 'netus'),
        ),
      ),
      (
        i: (
          settings: (notifications: true, theme: 'montes'),
          user: (email: 'aliquam', name: 'dignissim'),
        ),
      ),
      (
        i: (
          settings: (notifications: true, theme: 'augue'),
          user: (email: 'hendrerit', name: 'sodales'),
        ),
      ),
      (
        i: (
          settings: (notifications: false, theme: 'ante'),
          user: (email: 'orci', name: 'a'),
        ),
      ),
      (
        i: (
          settings: (notifications: true, theme: 'sapien'),
          user: (email: 'condimentum', name: 'odio'),
        ),
      ),
      (
        i: (
          settings: (notifications: false, theme: 'gravida'),
          user: (email: 'quam', name: 'nam'),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery113.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery113.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query114', () async {
    final datas = <tasksQuery114.Query114Args>[
      (
        i: (
          email: Defined('amet'),
          name: Defined('senectus'),
          phone: 'faucibus',
        ),
      ),
      (i: (email: Undefined(), name: Undefined(), phone: null)),
      (i: (email: Defined('accumsan'), name: Undefined(), phone: null)),
      (i: (email: Undefined(), name: Undefined(), phone: null)),
      (i: (email: Undefined(), name: Undefined(), phone: 'turpis')),
      (i: (email: Undefined(), name: Undefined(), phone: null)),
      (i: (email: Undefined(), name: Undefined(), phone: null)),
      (i: (email: Defined('et'), name: Defined('tellus'), phone: 'et')),
      (i: (email: Defined('nisi'), name: Undefined(), phone: null)),
      (i: (email: Defined('urna'), name: Undefined(), phone: null)),
    ];
    for (final data in datas) {
      final serialized = tasksQuery114.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery114.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query115', () async {
    final datas = <tasksQuery115.Query115Args>[
      (
        i: (
          categories: <$work$personal$urgent>[].lock,
          tags: <String>[
            'sodales',
            'eu',
            'posuere',
            'bibendum',
            'ligula',
            'vitae',
            'tortor',
          ].lock,
        ),
      ),
      (
        i: (
          categories: <$work$personal$urgent>[
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$personalMember,
          ].lock,
          tags: <String>['fringilla', 'ultrices', 'nullam', 'libero'].lock,
        ),
      ),
      (
        i: (
          categories: <$work$personal$urgent>[
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$personalMember,
          ].lock,
          tags: <String>[
            'et',
            'velit',
            'mus',
            'pellentesque',
            'neque',
            'diam',
            'pulvinar',
            'bibendum',
            'nibh',
          ].lock,
        ),
      ),
      (
        i: (
          categories: <$work$personal$urgent>[
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$personalMember,
          ].lock,
          tags: <String>[
            'sem',
            'maecenas',
            'placerat',
            'phasellus',
            'arcu',
            'penatibus',
          ].lock,
        ),
      ),
      (
        i: (
          categories: <$work$personal$urgent>[
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$personalMember,
          ].lock,
          tags: <String>['condimentum', 'habitant', 'dolor'].lock,
        ),
      ),
      (
        i: (
          categories: <$work$personal$urgent>[
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$workMember,
          ].lock,
          tags: <String>['ullamcorper', 'netus'].lock,
        ),
      ),
      (
        i: (
          categories: <$work$personal$urgent>[
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$personalMember,
          ].lock,
          tags: <String>[].lock,
        ),
      ),
      (
        i: (
          categories: <$work$personal$urgent>[
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$personalMember,
          ].lock,
          tags: <String>[].lock,
        ),
      ),
      (
        i: (
          categories: <$work$personal$urgent>[
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$workMember,
            $work$personal$urgent.$workMember,
          ].lock,
          tags: <String>['dapibus', 'dui', 'hendrerit', 'lectus', 'quis'].lock,
        ),
      ),
      (
        i: (
          categories: <$work$personal$urgent>[
            $work$personal$urgent.$personalMember,
            $work$personal$urgent.$workMember,
          ].lock,
          tags: <String>[
            'penatibus',
            'facilisis',
            'tincidunt',
            'quis',
            'in',
          ].lock,
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery115.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery115.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query116', () async {
    final datas = <tasksQuery116.Query116Args>[
      (
        i: (
          data: (type: $text$number$boolean.$numberMember, value: true),
          metadata: <String, dynamic>{
            'tellus': 0.3049274284898943,
            'rhoncus': 639042,
            'nec': 0.05860339098484457,
            'metus': 0.10594404597630958,
            'senectus': 'neque',
            'cras': false,
            'lacus': 126983,
            'sociis': 'imperdiet',
            'diam': 'natoque',
          }.lock,
        ),
      ),
      (
        i: (
          data: (type: $text$number$boolean.$textMember, value: false),
          metadata: <String, dynamic>{'orci': 'tempus'}.lock,
        ),
      ),
      (
        i: (
          data: (type: $text$number$boolean.$numberMember, value: 'fringilla'),
          metadata: <String, dynamic>{}.lock,
        ),
      ),
      (
        i: (
          data: (
            type: $text$number$boolean.$textMember,
            value: 0.3914990081795784,
          ),
          metadata: <String, dynamic>{
            'convallis': 279796,
            'mus': 'lorem',
            'dolor': 969467,
            'tincidunt': 115016,
            'blandit': 'scelerisque',
            'mus': true,
            'potenti': 'ornare',
          }.lock,
        ),
      ),
      (
        i: (
          data: (type: $text$number$boolean.$textMember, value: 808661),
          metadata: <String, dynamic>{
            'ante': 'convallis',
            'magna': 0.9056663904421407,
            'adipiscing': 'risus',
            'nullam': 'in',
            'suscipit': 0.023410243326009827,
            'dignissim': 32573,
            'nascetur': 0.7869122178713612,
            'euismod': 0.2745588429141881,
          }.lock,
        ),
      ),
      (
        i: (
          data: (type: $text$number$boolean.$textMember, value: true),
          metadata: <String, dynamic>{
            'nam': 77231,
            'est': 'velit',
            'neque': 0.2946274101162184,
            'luctus': 495974,
            'elementum': 0.43526325633357077,
          }.lock,
        ),
      ),
      (
        i: (
          data: (
            type: $text$number$boolean.$numberMember,
            value: 'condimentum',
          ),
          metadata: <String, dynamic>{
            'maecenas': 'iaculis',
            'dolor': 'platea',
            'nibh': 0.34301801790393704,
            'vivamus': 0.5843811660982583,
            'habitasse': 'facilisis',
            'varius': 'fringilla',
            'sit': 304929,
            'nulla': 0.7211195804852032,
          }.lock,
        ),
      ),
      (
        i: (
          data: (type: $text$number$boolean.$numberMember, value: 'vel'),
          metadata: <String, dynamic>{
            'ipsum': false,
            'lectus': 125618,
            'habitant': false,
            'porttitor': 'nisl',
            'eget': 159785,
            'in': 700705,
            'magnis': true,
          }.lock,
        ),
      ),
      (
        i: (
          data: (type: $text$number$boolean.$textMember, value: 418153),
          metadata: <String, dynamic>{}.lock,
        ),
      ),
      (
        i: (
          data: (type: $text$number$boolean.$numberMember, value: 'fermentum'),
          metadata: <String, dynamic>{
            'potenti': 0.537499271316356,
            'dolor': 'malesuada',
            'sit': 417762,
            'molestie': true,
            'proin': 0.6378890172811921,
            'ligula': 'platea',
          }.lock,
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery116.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery116.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query117', () async {
    final datas = <tasksQuery117.Query117Args>[
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (
              author: 'dapibus',
              text: 'ridiculus',
              timestamp: 0.9446541414960583,
            ),
            (author: 'dui', text: 'cursus', timestamp: 0.6100964759970939),
            (author: 'eleifend', text: 'in', timestamp: 0.20458181845513823),
            (
              author: 'malesuada',
              text: 'integer',
              timestamp: 0.6185608468663523,
            ),
            (author: 'curabitur', text: 'odio', timestamp: 0.09207524833670644),
            (author: 'nisi', text: 'quam', timestamp: 0.7892465170712102),
          ].lock,
          reviewer: Defined((
            id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
            name: 'tristique',
          )),
          status: $pending$approved$rejected.$pendingMember,
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (
              author: 'consequat',
              text: 'commodo',
              timestamp: 0.014823829429579494,
            ),
            (author: 'elit', text: 'praesent', timestamp: 0.673906438425613),
            (author: 'vel', text: 'posuere', timestamp: 0.642848032024865),
            (author: 'habitasse', text: 'fames', timestamp: 0.4075289541176237),
            (author: 'facilisi', text: 'fames', timestamp: 0.298128948713024),
          ].lock,
          reviewer: Defined((
            id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
            name: 'curabitur',
          )),
          status: $pending$approved$rejected.$pendingMember,
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (author: 'ac', text: 'nullam', timestamp: 0.06848288021681692),
            (author: 'risus', text: 'facilisis', timestamp: 0.8937691799354114),
            (
              author: 'mattis',
              text: 'scelerisque',
              timestamp: 0.5567676129187757,
            ),
            (author: 'libero', text: 'lectus', timestamp: 0.27523942814629554),
            (author: 'dignissim', text: 'cras', timestamp: 0.10266279914376575),
            (author: 'cursus', text: 'risus', timestamp: 0.5102371254939272),
            (author: 'quam', text: 'malesuada', timestamp: 0.19960914447465528),
          ].lock,
          reviewer: Defined((
            id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
            name: 'nam',
          )),
          status: $pending$approved$rejected.$approvedMember,
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (author: 'mi', text: 'luctus', timestamp: 0.3233625291415827),
            (author: 'a', text: 'non', timestamp: 0.3800939855033223),
            (author: 'proin', text: 'ipsum', timestamp: 0.8677905481216421),
            (
              author: 'molestie',
              text: 'sodales',
              timestamp: 0.7063380909350692,
            ),
            (author: 'varius', text: 'nisl', timestamp: 0.4129190962066517),
            (author: 'augue', text: 'augue', timestamp: 0.5118155913964538),
          ].lock,
          reviewer: Defined((
            id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
            name: 'id',
          )),
          status: $pending$approved$rejected.$approvedMember,
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (
              author: 'porttitor',
              text: 'cursus',
              timestamp: 0.03955166476850802,
            ),
            (
              author: 'lectus',
              text: 'tincidunt',
              timestamp: 0.9673875513190688,
            ),
            (author: 'elementum', text: 'erat', timestamp: 0.0453143360687327),
          ].lock,
          reviewer: Undefined(),
          status: $pending$approved$rejected.$approvedMember,
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (author: 'nascetur', text: 'nibh', timestamp: 0.11470112272497202),
            (
              author: 'facilisis',
              text: 'aliquam',
              timestamp: 0.1652719742083878,
            ),
            (author: 'at', text: 'etiam', timestamp: 0.605551525533067),
            (author: 'fusce', text: 'volutpat', timestamp: 0.17000138503471862),
            (author: 'arcu', text: 'urna', timestamp: 0.5094235995163695),
            (author: 'ipsum', text: 'ac', timestamp: 0.6607486392588408),
            (author: 'sit', text: 'elementum', timestamp: 0.5786221808117171),
            (author: 'blandit', text: 'turpis', timestamp: 0.20361494933422408),
          ].lock,
          reviewer: Defined((
            id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
            name: 'sapien',
          )),
          status: $pending$approved$rejected.$approvedMember,
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (author: 'sodales', text: 'etiam', timestamp: 0.41513299703341056),
            (author: 'tincidunt', text: 'eu', timestamp: 0.14515994450228809),
            (author: 'eget', text: 'adipiscing', timestamp: 0.889010751468342),
            (author: 'platea', text: 'lorem', timestamp: 0.009461749031559163),
            (author: 'nunc', text: 'natoque', timestamp: 0.5466946632321087),
            (
              author: 'tempor',
              text: 'vestibulum',
              timestamp: 0.031871325653738625,
            ),
            (
              author: 'ultricies',
              text: 'facilisis',
              timestamp: 0.9866429105502046,
            ),
            (author: 'odio', text: 'elit', timestamp: 0.46895305520758246),
            (
              author: 'ultricies',
              text: 'hendrerit',
              timestamp: 0.9934542628757621,
            ),
          ].lock,
          reviewer: Undefined(),
          status: $pending$approved$rejected.$approvedMember,
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (
              author: 'interdum',
              text: 'consequat',
              timestamp: 0.9216065721033306,
            ),
            (author: 'dis', text: 'pulvinar', timestamp: 0.15058057491304289),
            (author: 'magnis', text: 'donec', timestamp: 0.6742275510071081),
            (author: 'neque', text: 'risus', timestamp: 0.6327031597844747),
            (author: 'urna', text: 'dui', timestamp: 0.48605617154234493),
            (author: 'felis', text: 'posuere', timestamp: 0.044392514763201496),
          ].lock,
          reviewer: Undefined(),
          status: $pending$approved$rejected.$pendingMember,
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[].lock,
          reviewer: Defined((
            id: TasksId('j579e7k3cjcwj3jmzf9be7rva97q5w2c'),
            name: 'volutpat',
          )),
          status: $pending$approved$rejected.$approvedMember,
        ),
      ),
      (
        i: (
          comments: <({String author, String text, double timestamp})>[
            (
              author: 'feugiat',
              text: 'curabitur',
              timestamp: 0.07633443957575103,
            ),
            (author: 'ligula', text: 'dictum', timestamp: 0.262034386876399),
            (author: 'proin', text: 'sagittis', timestamp: 0.23708518177540694),
            (author: 'fusce', text: 'sem', timestamp: 0.6057338119988324),
            (author: 'magnis', text: 'amet', timestamp: 0.18619687019932463),
            (author: 'dolor', text: 'fringilla', timestamp: 0.9242274126380371),
          ].lock,
          reviewer: Undefined(),
          status: $pending$approved$rejected.$approvedMember,
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery117.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery117.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query118', () async {
    final datas = <tasksQuery118.Query118Args>[
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'suspendisse': Union3<String, double, bool>.in1('nascetur'),
            'in': Union3<String, double, bool>.in2(0.776453519225717),
          }.lock,
          fallback: (enabled: true, value: false),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'leo': Union3<String, double, bool>.in2(0.22554059069243237),
          }.lock,
          fallback: (enabled: true, value: 'nunc'),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'purus': Union3<String, double, bool>.in1('ante'),
            'sapien': Union3<String, double, bool>.in1('platea'),
            'habitasse': Union3<String, double, bool>.in1('tempor'),
          }.lock,
          fallback: (enabled: true, value: 'semper'),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'in': Union3<String, double, bool>.in1('senectus'),
            'posuere': Union3<String, double, bool>.in1('aenean'),
            'non': Union3<String, double, bool>.in2(0.7641716859202898),
            'aenean': Union3<String, double, bool>.in2(0.1597117654294089),
            'varius': Union3<String, double, bool>.in2(0.8888689395921545),
            'elit': Union3<String, double, bool>.in1('posuere'),
          }.lock,
          fallback: (enabled: false, value: 0.8048991937035347),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'suspendisse': Union3<String, double, bool>.in2(0.2196995203399602),
            'habitasse': Union3<String, double, bool>.in1('pulvinar'),
            'nunc': Union3<String, double, bool>.in2(0.965515785538343),
            'vivamus': Union3<String, double, bool>.in1('volutpat'),
          }.lock,
          fallback: (enabled: false, value: 0.4202899375149979),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'platea': Union3<String, double, bool>.in2(0.9360401492842289),
            'augue': Union3<String, double, bool>.in1('at'),
            'blandit': Union3<String, double, bool>.in2(0.9354999523838267),
            'magna': Union3<String, double, bool>.in2(0.012372258956621529),
            'facilisis': Union3<String, double, bool>.in2(0.5434866189839039),
            'commodo': Union3<String, double, bool>.in1('magnis'),
            'lectus': Union3<String, double, bool>.in2(0.9463082336777737),
            'sapien': Union3<String, double, bool>.in2(0.08693411855599342),
          }.lock,
          fallback: (enabled: true, value: true),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'nam': Union3<String, double, bool>.in2(0.39250845465045203),
          }.lock,
          fallback: (enabled: false, value: 0.9479555992265309),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'pulvinar': Union3<String, double, bool>.in1('imperdiet'),
            'semper': Union3<String, double, bool>.in2(0.5326052454110676),
            'volutpat': Union3<String, double, bool>.in2(0.47054646831873514),
            'volutpat': Union3<String, double, bool>.in1('etiam'),
          }.lock,
          fallback: (enabled: true, value: false),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'sociis': Union3<String, double, bool>.in2(0.9452999229517179),
            'fusce': Union3<String, double, bool>.in2(0.8320876097418664),
            'morbi': Union3<String, double, bool>.in2(0.9760485105053973),
          }.lock,
          fallback: (enabled: true, value: 0.12014945603434513),
        ),
      ),
      (
        i: (
          config: <String, Union3<String, double, bool>>{
            'adipiscing': Union3<String, double, bool>.in1('pharetra'),
          }.lock,
          fallback: (enabled: true, value: 0.8439885188052177),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery118.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery118.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query119', () async {
    final datas = <tasksQuery119.Query119Args>[
      (
        i: (
          data:
              Union3<
                ({String content, $text type}),
                ({double content, $number type}),
                ({bool content, $boolean type})
              >.in1((content: 'nibh', type: $text())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $text type}),
                ({double content, $number type}),
                ({bool content, $boolean type})
              >.in2((content: 0.5709193444608945, type: $number())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $text type}),
                ({double content, $number type}),
                ({bool content, $boolean type})
              >.in1((content: 'facilisi', type: $text())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $text type}),
                ({double content, $number type}),
                ({bool content, $boolean type})
              >.in1((content: 'cras', type: $text())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $text type}),
                ({double content, $number type}),
                ({bool content, $boolean type})
              >.in1((content: 'orci', type: $text())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $text type}),
                ({double content, $number type}),
                ({bool content, $boolean type})
              >.in2((content: 0.30341521281785633, type: $number())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $text type}),
                ({double content, $number type}),
                ({bool content, $boolean type})
              >.in2((content: 0.9047029166010762, type: $number())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $text type}),
                ({double content, $number type}),
                ({bool content, $boolean type})
              >.in2((content: 0.425059083946274, type: $number())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $text type}),
                ({double content, $number type}),
                ({bool content, $boolean type})
              >.in1((content: 'dictum', type: $text())),
        ),
      ),
      (
        i: (
          data:
              Union3<
                ({String content, $text type}),
                ({double content, $number type}),
                ({bool content, $boolean type})
              >.in1((content: 'at', type: $text())),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery119.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery119.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query120', () async {
    final datas = <tasksQuery120.Query120Args>[
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'adipiscing',
                      metadata: <String, dynamic>{'adipiscing': true}.lock,
                      name: 'gravida',
                      price: null,
                      quantity: Defined(0.02032526507522292),
                    ),
                    (
                      id: 'magna',
                      metadata: <String, dynamic>{
                        'dignissim': 0.48132473854549185,
                        'lectus': 'accumsan',
                      }.lock,
                      name: 'fermentum',
                      price: 0.2239530430275345,
                      quantity: Defined(0.04725846026986724),
                    ),
                    (
                      id: 'ipsum',
                      metadata: <String, dynamic>{
                        'metus': 'ultricies',
                        'faucibus': true,
                        'nascetur': 401687,
                        'egestas': 'natoque',
                        'hac': 0.27067555966304024,
                        'feugiat': 'donec',
                        'posuere': 798976,
                        'lorem': 0.4889322015341543,
                      }.lock,
                      name: 'lacus',
                      price: null,
                      quantity: Defined(0.41542464018321656),
                    ),
                    (
                      id: 'tristique',
                      metadata: <String, dynamic>{
                        'viverra': 0.8157241951688201,
                        'facilisis': 'aliquet',
                        'elementum': 'massa',
                        'a': 'tristique',
                        'donec': 0.5452091600472677,
                        'consequat': 0.21439727096457384,
                        'blandit': true,
                        'tempor': 686742,
                        'lacus': 8692,
                      }.lock,
                      name: 'nec',
                      price: 0.10188723666375743,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'eu',
                      metadata: <String, dynamic>{}.lock,
                      name: 'nam',
                      price: null,
                      quantity: Undefined(),
                    ),
                  ]
                  .lock,
          total: 0.5508951886363089,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'praesent',
                      metadata: <String, dynamic>{
                        'sapien': true,
                        'blandit': 'mattis',
                        'nunc': 755486,
                        'bibendum': 'in',
                        'quis': 0.36173175577542005,
                        'id': 0.38434876640094573,
                        'lectus': true,
                      }.lock,
                      name: 'vitae',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'risus',
                      metadata: <String, dynamic>{
                        'quam': 349569,
                        'fermentum': 'habitasse',
                        'fermentum': 'neque',
                        'erat': 'viverra',
                      }.lock,
                      name: 'sit',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'consectetur',
                      metadata: <String, dynamic>{
                        'aenean': 601618,
                        'integer': 683502,
                        'felis': 0.33163613269421155,
                        'posuere': 967254,
                        'habitasse': 997184,
                        'cursus': 0.13745442514052875,
                      }.lock,
                      name: 'non',
                      price: null,
                      quantity: Defined(0.8520376276380075),
                    ),
                    (
                      id: 'porta',
                      metadata: <String, dynamic>{
                        'consequat': 359475,
                        'velit': 983457,
                        'dolor': true,
                        'fusce': 'nascetur',
                        'etiam': 989931,
                        'platea': false,
                        'enim': 793009,
                        'tempor': false,
                      }.lock,
                      name: 'donec',
                      price: null,
                      quantity: Defined(0.4998386587618938),
                    ),
                    (
                      id: 'imperdiet',
                      metadata: <String, dynamic>{
                        'lacinia': 440584,
                        'velit': 0.1434534788003714,
                        'purus': true,
                        'condimentum': 'duis',
                        'phasellus': 847759,
                        'commodo': 0.7467833576239267,
                        'parturient': 'nam',
                        'parturient': 'porttitor',
                        'auctor': 'integer',
                      }.lock,
                      name: 'libero',
                      price: 0.8184478248851598,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'molestie',
                      metadata: <String, dynamic>{
                        'molestie': true,
                        'platea': 0.9767326323686671,
                        'turpis': 590241,
                        'hac': 'mus',
                      }.lock,
                      name: 'vitae',
                      price: 0.2598365679169513,
                      quantity: Undefined(),
                    ),
                  ]
                  .lock,
          total: 0.103509546753493,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'gravida',
                      metadata: <String, dynamic>{
                        'elementum': 371856,
                        'sagittis': 0.4618692642334997,
                        'proin': 'cursus',
                      }.lock,
                      name: 'elit',
                      price: 0.3005526652122562,
                      quantity: Defined(0.8455894053173635),
                    ),
                    (
                      id: 'proin',
                      metadata: <String, dynamic>{
                        'ultricies': 0.37127090078897906,
                        'pellentesque': 'arcu',
                        'pellentesque': false,
                        'massa': 362671,
                        'cum': 371675,
                      }.lock,
                      name: 'nascetur',
                      price: null,
                      quantity: Defined(0.263272640839212),
                    ),
                    (
                      id: 'dapibus',
                      metadata: <String, dynamic>{}.lock,
                      name: 'blandit',
                      price: null,
                      quantity: Defined(0.8793166164781837),
                    ),
                    (
                      id: 'sagittis',
                      metadata: <String, dynamic>{
                        'mus': 'ut',
                        'urna': 'mattis',
                        'porta': 'sociis',
                        'nunc': 0.909710113486751,
                        'lacinia': 269242,
                        'suspendisse': false,
                      }.lock,
                      name: 'est',
                      price: 0.6565740803673312,
                      quantity: Defined(0.9306531667607312),
                    ),
                    (
                      id: 'tincidunt',
                      metadata: <String, dynamic>{
                        'risus': 'scelerisque',
                        'potenti': true,
                      }.lock,
                      name: 'fusce',
                      price: 0.48188403866190355,
                      quantity: Defined(0.781169453021569),
                    ),
                  ]
                  .lock,
          total: 0.03263765450096845,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'at',
                      metadata: <String, dynamic>{
                        'nam': 0.37230717802723234,
                        'auctor': 474519,
                        'congue': 29774,
                      }.lock,
                      name: 'interdum',
                      price: 0.0672181066087697,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'vitae',
                      metadata: <String, dynamic>{
                        'diam': 'condimentum',
                        'erat': true,
                        'leo': false,
                        'cras': 'cras',
                        'erat': 0.28259256550929523,
                        'a': 816423,
                        'in': 580158,
                      }.lock,
                      name: 'habitasse',
                      price: 0.12986237905148046,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'accumsan',
                      metadata: <String, dynamic>{
                        'platea': false,
                        'purus': 'euismod',
                        'phasellus': 45312,
                        'facilisis': 818542,
                        'posuere': 0.32878220953912063,
                        'maecenas': 0.5249949503933126,
                      }.lock,
                      name: 'feugiat',
                      price: null,
                      quantity: Defined(0.9468344348620255),
                    ),
                    (
                      id: 'enim',
                      metadata: <String, dynamic>{'justo': false}.lock,
                      name: 'eu',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'donec',
                      metadata: <String, dynamic>{
                        'mauris': 'ornare',
                        'ullamcorper': false,
                        'donec': 0.900537750096647,
                        'ligula': 779433,
                        'neque': 'nulla',
                        'tristique': true,
                        'blandit': 686328,
                        'nullam': false,
                        'donec': 'integer',
                      }.lock,
                      name: 'bibendum',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'viverra',
                      metadata: <String, dynamic>{'ultrices': 483072}.lock,
                      name: 'sit',
                      price: null,
                      quantity: Defined(0.7006658277261528),
                    ),
                    (
                      id: 'lorem',
                      metadata: <String, dynamic>{}.lock,
                      name: 'vulputate',
                      price: 0.9452940827822089,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'consectetur',
                      metadata: <String, dynamic>{
                        'scelerisque': false,
                        'iaculis': 'vestibulum',
                        'urna': 0.22683379001432902,
                        'neque': true,
                        'natoque': 0.9297930833386445,
                        'fames': false,
                        'suspendisse': 969962,
                      }.lock,
                      name: 'vestibulum',
                      price: null,
                      quantity: Defined(0.9326212846143018),
                    ),
                  ]
                  .lock,
          total: 0.28572414142033076,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'purus',
                      metadata: <String, dynamic>{
                        'condimentum': 0.07253187340135281,
                        'tempus': 321069,
                        'erat': false,
                        'velit': 'sollicitudin',
                      }.lock,
                      name: 'nibh',
                      price: 0.19504364493126713,
                      quantity: Defined(0.0675893211717491),
                    ),
                  ]
                  .lock,
          total: 0.7499228016895472,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'accumsan',
                      metadata: <String, dynamic>{
                        'placerat': 783320,
                        'diam': true,
                        'maecenas': 0.5544975918904418,
                        'auctor': true,
                        'lectus': 0.8757718366333183,
                        'vulputate': 540855,
                        'potenti': 691858,
                      }.lock,
                      name: 'posuere',
                      price: 0.07575422229867967,
                      quantity: Defined(0.566633649921309),
                    ),
                    (
                      id: 'mollis',
                      metadata: <String, dynamic>{}.lock,
                      name: 'odio',
                      price: 0.8451675203330493,
                      quantity: Defined(0.47958565714758916),
                    ),
                    (
                      id: 'maecenas',
                      metadata: <String, dynamic>{
                        'et': true,
                        'dolor': 'et',
                        'vivamus': 421119,
                        'nibh': true,
                      }.lock,
                      name: 'habitasse',
                      price: 0.30570290392682997,
                      quantity: Defined(0.1045033484299257),
                    ),
                    (
                      id: 'dapibus',
                      metadata: <String, dynamic>{}.lock,
                      name: 'nam',
                      price: 0.8854087531262201,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'erat',
                      metadata: <String, dynamic>{
                        'eros': 710150,
                        'libero': 'vulputate',
                        'dignissim': true,
                        'nascetur': 0.8534110194108264,
                        'tellus': 0.4230505692013341,
                        'placerat': 0.45529714587293957,
                        'lobortis': true,
                        'potenti': 136957,
                        'magna': 'dolor',
                      }.lock,
                      name: 'habitant',
                      price: null,
                      quantity: Defined(0.6929651038286572),
                    ),
                    (
                      id: 'luctus',
                      metadata: <String, dynamic>{
                        'ligula': 0.4628265097875771,
                      }.lock,
                      name: 'platea',
                      price: 0.9992435664414818,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'lacus',
                      metadata: <String, dynamic>{'laoreet': true}.lock,
                      name: 'porta',
                      price: 0.8895812270039332,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'ultricies',
                      metadata: <String, dynamic>{
                        'ornare': 'leo',
                        'vitae': 933313,
                        'dignissim': 119858,
                      }.lock,
                      name: 'hendrerit',
                      price: null,
                      quantity: Defined(0.01002307891282539),
                    ),
                  ]
                  .lock,
          total: 0.009662507621225225,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'ultrices',
                      metadata: <String, dynamic>{
                        'potenti': 'condimentum',
                        'consequat': false,
                        'magnis': 0.6160245955525359,
                        'donec': 'lobortis',
                        'blandit': true,
                        'dolor': 0.3206295302809059,
                        'montes': false,
                        'blandit': 'mi',
                      }.lock,
                      name: 'quis',
                      price: 0.3161375679351397,
                      quantity: Defined(0.4875574925104069),
                    ),
                    (
                      id: 'aliquet',
                      metadata: <String, dynamic>{
                        'suscipit': 'dis',
                        'vitae': 'facilisi',
                        'ultrices': true,
                        'hendrerit': 'in',
                        'phasellus': 850770,
                        'libero': 180123,
                        'habitasse': true,
                        'congue': false,
                        'luctus': true,
                      }.lock,
                      name: 'leo',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'nisl',
                      metadata: <String, dynamic>{
                        'tellus': 0.9376837732136026,
                        'nascetur': 0.3739533424211273,
                        'nisi': false,
                        'ipsum': 0.31687720164401145,
                        'elementum': 'tellus',
                        'odio': 189965,
                      }.lock,
                      name: 'viverra',
                      price: 0.7165322059553091,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'iaculis',
                      metadata: <String, dynamic>{
                        'curabitur': true,
                        'facilisis': false,
                        'sociis': 464927,
                        'sodales': 359052,
                        'maecenas': 0.702388007961752,
                        'habitasse': 0.6047446375146794,
                        'dui': false,
                        'platea': 0.897252939342995,
                        'porttitor': false,
                      }.lock,
                      name: 'potenti',
                      price: 0.4875061957632888,
                      quantity: Defined(0.5545439723520527),
                    ),
                    (
                      id: 'egestas',
                      metadata: <String, dynamic>{
                        'nam': 0.7166318076462312,
                      }.lock,
                      name: 'sociis',
                      price: 0.04465600267331926,
                      quantity: Defined(0.14991229630418224),
                    ),
                    (
                      id: 'magna',
                      metadata: <String, dynamic>{
                        'facilisis': true,
                        'et': 0.6852589389040341,
                      }.lock,
                      name: 'urna',
                      price: 0.7933340059853266,
                      quantity: Defined(0.7858726000582265),
                    ),
                    (
                      id: 'neque',
                      metadata: <String, dynamic>{'magna': 'nullam'}.lock,
                      name: 'posuere',
                      price: 0.4340341224137755,
                      quantity: Defined(0.996712939391987),
                    ),
                    (
                      id: 'imperdiet',
                      metadata: <String, dynamic>{
                        'cursus': 'potenti',
                        'sed': 'sodales',
                        'nam': 'consequat',
                      }.lock,
                      name: 'volutpat',
                      price: null,
                      quantity: Defined(0.9438979122204085),
                    ),
                  ]
                  .lock,
          total: 0.6367033656836676,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'neque',
                      metadata: <String, dynamic>{
                        'massa': 'faucibus',
                        'sit': 0.7479157160716102,
                        'ullamcorper': false,
                        'egestas': 420701,
                      }.lock,
                      name: 'hendrerit',
                      price: null,
                      quantity: Undefined(),
                    ),
                  ]
                  .lock,
          total: 0.802055173913234,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'massa',
                      metadata: <String, dynamic>{}.lock,
                      name: 'varius',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'suspendisse',
                      metadata: <String, dynamic>{
                        'fusce': 0.6137695248261854,
                      }.lock,
                      name: 'nullam',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'mollis',
                      metadata: <String, dynamic>{
                        'dui': 'sit',
                        'in': 'blandit',
                        'dictum': true,
                        'tellus': 601476,
                        'malesuada': 'ac',
                      }.lock,
                      name: 'amet',
                      price: 0.6080507464088226,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'sodales',
                      metadata: <String, dynamic>{
                        'a': 0.2522098584618353,
                        'risus': 0.34780683999030926,
                        'egestas': true,
                        'feugiat': 121938,
                        'congue': 'urna',
                      }.lock,
                      name: 'aliquam',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'risus',
                      metadata: <String, dynamic>{
                        'molestie': false,
                        'ipsum': true,
                      }.lock,
                      name: 'sit',
                      price: null,
                      quantity: Defined(0.30896585084072115),
                    ),
                    (
                      id: 'congue',
                      metadata: <String, dynamic>{
                        'ornare': 0.40877721853414406,
                        'quam': 'luctus',
                        'euismod': 232974,
                        'auctor': 0.9415141398717932,
                        'potenti': false,
                        'mi': 0.5877398018375153,
                      }.lock,
                      name: 'proin',
                      price: 0.724364093369526,
                      quantity: Defined(0.17480546213409687),
                    ),
                    (
                      id: 'felis',
                      metadata: <String, dynamic>{
                        'elit': 0.3205015354485652,
                        'posuere': 104747,
                      }.lock,
                      name: 'montes',
                      price: 0.22731838814310645,
                      quantity: Defined(0.41466534955413037),
                    ),
                    (
                      id: 'habitant',
                      metadata: <String, dynamic>{
                        'sollicitudin': 608909,
                        'phasellus': 'rhoncus',
                        'curabitur': 0.38247116486812527,
                        'vulputate': 0.5225637458403961,
                        'in': 'in',
                        'elementum': true,
                      }.lock,
                      name: 'morbi',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'integer',
                      metadata: <String, dynamic>{
                        'volutpat': 0.21702706269589733,
                        'laoreet': 853922,
                        'ridiculus': 0.8660252906801919,
                        'morbi': false,
                      }.lock,
                      name: 'eu',
                      price: null,
                      quantity: Undefined(),
                    ),
                  ]
                  .lock,
          total: 0.021859167455469786,
        ),
      ),
      (
        i: (
          items:
              <
                    ({
                      String id,
                      IMap<String, dynamic> metadata,
                      String name,
                      double? price,
                      Optional<double> quantity,
                    })
                  >[
                    (
                      id: 'consectetur',
                      metadata: <String, dynamic>{
                        'leo': false,
                        'scelerisque': 'aenean',
                        'dignissim': 646093,
                        'magna': 647360,
                        'condimentum': 0.5587097727247253,
                      }.lock,
                      name: 'nascetur',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'quis',
                      metadata: <String, dynamic>{
                        'id': 718145,
                        'imperdiet': 0.23961362864588986,
                        'neque': 'ante',
                      }.lock,
                      name: 'metus',
                      price: null,
                      quantity: Undefined(),
                    ),
                    (
                      id: 'proin',
                      metadata: <String, dynamic>{'nullam': 'convallis'}.lock,
                      name: 'dolor',
                      price: 0.9042806687507352,
                      quantity: Defined(0.6099779943052571),
                    ),
                    (
                      id: 'quam',
                      metadata: <String, dynamic>{}.lock,
                      name: 'fermentum',
                      price: null,
                      quantity: Defined(0.2332250182472818),
                    ),
                  ]
                  .lock,
          total: 0.9903483094073947,
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery120.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery120.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query121', () async {
    final datas = <tasksQuery121.Query121Args>[
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('placerat'),
                                id: 'nec',
                                likes: 0.8296879165842667,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('malesuada'),
                                id: 'dictumst',
                                likes: 0.9778491860465092,
                                tags: <String>[
                                  'mattis',
                                  'sem',
                                  'purus',
                                  'potenti',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('fusce'),
                                id: 'tempus',
                                likes: 0.36271339082048515,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sem'),
                                id: 'lacus',
                                likes: 0.44193120145465326,
                                tags: <String>[
                                  'turpis',
                                  'vel',
                                  'facilisis',
                                  'quisque',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('iaculis'),
                                id: 'parturient',
                                likes: 0.9316141816069259,
                                tags: <String>[
                                  'purus',
                                  'vulputate',
                                  'integer',
                                  'fermentum',
                                  'felis',
                                  'velit',
                                  'ultrices',
                                  'eleifend',
                                  'felis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('donec'),
                                id: 'accumsan',
                                likes: 0.29242210085974507,
                                tags: <String>[
                                  'facilisi',
                                  'suspendisse',
                                  'augue',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('orci'),
                                id: 'ligula',
                                likes: 0.5419259879710678,
                                tags: <String>[
                                  'auctor',
                                  'non',
                                  'nunc',
                                  'platea',
                                  'blandit',
                                  'bibendum',
                                  'sapien',
                                  'porttitor',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'erat': Union3<String, double, bool>.in2(
                          0.9379126094936924,
                        ),
                        'sociis': Union3<String, double, bool>.in1(
                          'condimentum',
                        ),
                        'congue': Union3<String, double, bool>.in2(
                          0.35925604522638643,
                        ),
                        'dictumst': Union3<String, double, bool>.in1(
                          'malesuada',
                        ),
                        'sodales': Union3<String, double, bool>.in2(
                          0.5817548129551289,
                        ),
                        'commodo': Union3<String, double, bool>.in1(
                          'convallis',
                        ),
                        'proin': Union3<String, double, bool>.in2(
                          0.8570628778837035,
                        ),
                        'egestas': Union3<String, double, bool>.in2(
                          0.9340927268558286,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'sodales'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('elementum'),
                                id: 'ridiculus',
                                likes: 0.5989526507082775,
                                tags: <String>[
                                  'gravida',
                                  'turpis',
                                  'senectus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('fermentum'),
                                id: 'elementum',
                                likes: 0.12290888303410885,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('imperdiet'),
                                id: 'euismod',
                                likes: 0.17270803805771562,
                                tags: <String>[
                                  'facilisi',
                                  'maecenas',
                                  'risus',
                                  'diam',
                                  'quis',
                                  'mi',
                                  'nibh',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('potenti'),
                                id: 'euismod',
                                likes: 0.27692171478318406,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vestibulum'),
                                id: 'praesent',
                                likes: 0.1370641389916365,
                                tags: <String>['quam'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('convallis'),
                                id: 'euismod',
                                likes: 0.42921221520742125,
                                tags: <String>[
                                  'parturient',
                                  'venenatis',
                                  'malesuada',
                                  'amet',
                                  'mauris',
                                  'nullam',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('viverra'),
                                id: 'sollicitudin',
                                likes: 0.11120145123137792,
                                tags: <String>[
                                  'at',
                                  'nibh',
                                  'habitasse',
                                  'id',
                                  'sociis',
                                  'suscipit',
                                  'libero',
                                  'vitae',
                                  'enim',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nulla'),
                                id: 'vivamus',
                                likes: 0.6488370084841504,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('varius'),
                                id: 'tincidunt',
                                likes: 0.5186984057641942,
                                tags: <String>[
                                  'imperdiet',
                                  'aliquam',
                                  'lectus',
                                  'luctus',
                                  'praesent',
                                  'in',
                                  'elementum',
                                  'ante',
                                  'consequat',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'sit': Union3<String, double, bool>.in2(
                          0.8736574471170276,
                        ),
                        'velit': Union3<String, double, bool>.in2(
                          0.577459112664673,
                        ),
                        'eleifend': Union3<String, double, bool>.in1('rhoncus'),
                        'eleifend': Union3<String, double, bool>.in2(
                          0.2234083811386519,
                        ),
                      }.lock,
                      profile: (avatar: Defined('velit'), name: 'magna'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('erat'),
                                id: 'justo',
                                likes: 0.5042142917251633,
                                tags: <String>[
                                  'quisque',
                                  'eu',
                                  'vel',
                                  'risus',
                                  'pulvinar',
                                  'non',
                                  'blandit',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('duis'),
                                id: 'erat',
                                likes: 0.3718691961432452,
                                tags: <String>['quam'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('non'),
                                id: 'velit',
                                likes: 0.7707442056893363,
                                tags: <String>[
                                  'commodo',
                                  'duis',
                                  'lacus',
                                  'iaculis',
                                  'magnis',
                                  'suspendisse',
                                  'luctus',
                                  'cum',
                                  'curabitur',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('enim'),
                                id: 'bibendum',
                                likes: 0.9936864240292114,
                                tags: <String>[
                                  'blandit',
                                  'lobortis',
                                  'cras',
                                  'habitant',
                                  'lectus',
                                  'fames',
                                  'ornare',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('aliquam'),
                                id: 'elementum',
                                likes: 0.7676170203029199,
                                tags: <String>[
                                  'ipsum',
                                  'mi',
                                  'potenti',
                                  'dictumst',
                                  'tincidunt',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('eu'),
                                id: 'aliquet',
                                likes: 0.4080265865099547,
                                tags: <String>[
                                  'nullam',
                                  'dui',
                                  'pharetra',
                                  'arcu',
                                  'feugiat',
                                  'et',
                                  'nibh',
                                  'amet',
                                  'eleifend',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dolor'),
                                id: 'amet',
                                likes: 0.0994326461633751,
                                tags: <String>['lacinia', 'convallis'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('leo'),
                                id: 'molestie',
                                likes: 0.027020341666216696,
                                tags: <String>['aenean', 'ut', 'nunc'].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'condimentum': Union3<String, double, bool>.in1(
                          'parturient',
                        ),
                        'ut': Union3<String, double, bool>.in2(
                          0.9049722967765066,
                        ),
                        'dolor': Union3<String, double, bool>.in2(
                          0.17248494524709534,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'porta'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nec'),
                                id: 'iaculis',
                                likes: 0.3979296611828669,
                                tags: <String>['ultricies'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('consequat'),
                                id: 'justo',
                                likes: 0.3779601766282207,
                                tags: <String>['fames', 'sit'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vivamus'),
                                id: 'lacus',
                                likes: 0.7307007755559659,
                                tags: <String>[
                                  'habitasse',
                                  'aliquet',
                                  'est',
                                  'lacus',
                                  'lacinia',
                                  'magnis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('duis'),
                                id: 'vitae',
                                likes: 0.30254256931889056,
                                tags: <String>[
                                  'dictumst',
                                  'montes',
                                  'lobortis',
                                  'pharetra',
                                  'aenean',
                                  'ultricies',
                                  'porttitor',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('praesent'),
                                id: 'netus',
                                likes: 0.304484050694969,
                                tags: <String>['mi'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('fusce'),
                                id: 'curabitur',
                                likes: 0.9060125222046617,
                                tags: <String>['massa'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('non'),
                                id: 'montes',
                                likes: 0.6136949254542262,
                                tags: <String>[
                                  'laoreet',
                                  'tellus',
                                  'sodales',
                                  'risus',
                                  'elit',
                                  'mollis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ipsum'),
                                id: 'pretium',
                                likes: 0.6511450137357981,
                                tags: <String>[
                                  'adipiscing',
                                  'nam',
                                  'massa',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sit'),
                                id: 'nullam',
                                likes: 0.7625407861388481,
                                tags: <String>[
                                  'condimentum',
                                  'nulla',
                                  'semper',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'nisi': Union3<String, double, bool>.in1('egestas'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'montes'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('varius'),
                                id: 'in',
                                likes: 0.9741338842867266,
                                tags: <String>[
                                  'ridiculus',
                                  'habitasse',
                                  'mi',
                                  'libero',
                                  'platea',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('mi'),
                                id: 'hendrerit',
                                likes: 0.7846792878497316,
                                tags: <String>[
                                  'ipsum',
                                  'congue',
                                  'non',
                                  'facilisi',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('congue'),
                                id: 'imperdiet',
                                likes: 0.6136970811415641,
                                tags: <String>[
                                  'nunc',
                                  'turpis',
                                  'tristique',
                                  'in',
                                  'scelerisque',
                                  'viverra',
                                  'consectetur',
                                  'suscipit',
                                  'nulla',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sapien'),
                                id: 'id',
                                likes: 0.23217153121990874,
                                tags: <String>[
                                  'ut',
                                  'tellus',
                                  'risus',
                                  'consectetur',
                                  'habitasse',
                                  'enim',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('egestas'),
                                id: 'blandit',
                                likes: 0.24385945704337364,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('adipiscing'),
                                id: 'semper',
                                likes: 0.8497324586606225,
                                tags: <String>[
                                  'leo',
                                  'nullam',
                                  'fringilla',
                                  'sociis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('mollis'),
                                id: 'pulvinar',
                                likes: 0.3259933696237831,
                                tags: <String>[
                                  'sem',
                                  'porta',
                                  'vestibulum',
                                  'eget',
                                  'accumsan',
                                  'augue',
                                  'nisl',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'blandit': Union3<String, double, bool>.in1('faucibus'),
                        'vestibulum': Union3<String, double, bool>.in1('augue'),
                        'curabitur': Union3<String, double, bool>.in1('proin'),
                        'etiam': Union3<String, double, bool>.in1(
                          'suspendisse',
                        ),
                        'tortor': Union3<String, double, bool>.in1('pharetra'),
                        'maecenas': Union3<String, double, bool>.in1('morbi'),
                      }.lock,
                      profile: (avatar: Defined('consequat'), name: 'aliquam'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('quisque'),
                                id: 'ornare',
                                likes: 0.4516034472666416,
                                tags: <String>[
                                  'potenti',
                                  'montes',
                                  'cursus',
                                  'lacus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('integer'),
                                id: 'mauris',
                                likes: 0.4097944808474854,
                                tags: <String>[
                                  'facilisis',
                                  'consequat',
                                  'sit',
                                  'duis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('felis'),
                                id: 'libero',
                                likes: 0.517245748492406,
                                tags: <String>[
                                  'orci',
                                  'fringilla',
                                  'arcu',
                                  'donec',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('varius'),
                                id: 'duis',
                                likes: 0.9685811071009028,
                                tags: <String>['velit'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dis'),
                                id: 'vivamus',
                                likes: 0.8705020857697117,
                                tags: <String>[
                                  'adipiscing',
                                  'ultrices',
                                  'justo',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'vel': Union3<String, double, bool>.in2(
                          0.7886251344440973,
                        ),
                        'vivamus': Union3<String, double, bool>.in1('laoreet'),
                        'quis': Union3<String, double, bool>.in1('urna'),
                        'montes': Union3<String, double, bool>.in2(
                          0.8716406930487807,
                        ),
                        'fringilla': Union3<String, double, bool>.in2(
                          0.06747807966210262,
                        ),
                        'molestie': Union3<String, double, bool>.in2(
                          0.055930950742636654,
                        ),
                        'sit': Union3<String, double, bool>.in2(
                          0.07877515355247422,
                        ),
                        'hendrerit': Union3<String, double, bool>.in2(
                          0.24780090548895772,
                        ),
                      }.lock,
                      profile: (avatar: Defined('sed'), name: 'volutpat'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('cras'),
                                id: 'neque',
                                likes: 0.43239514738280493,
                                tags: <String>[
                                  'pulvinar',
                                  'integer',
                                  'pulvinar',
                                  'ridiculus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('fringilla'),
                                id: 'purus',
                                likes: 0.42934463722502636,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('curabitur'),
                                id: 'mollis',
                                likes: 0.4655068295228293,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('eu'),
                                id: 'urna',
                                likes: 0.6969176762349445,
                                tags: <String>['pharetra', 'eu', 'cras'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('scelerisque'),
                                id: 'felis',
                                likes: 0.06759511899453097,
                                tags: <String>[
                                  'porttitor',
                                  'erat',
                                  'dui',
                                  'tempor',
                                  'dis',
                                  'bibendum',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('placerat'),
                                id: 'duis',
                                likes: 0.9180067752678859,
                                tags: <String>[
                                  'hac',
                                  'tristique',
                                  'urna',
                                  'dignissim',
                                  'dictumst',
                                  'pretium',
                                  'quisque',
                                  'pharetra',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('hendrerit'),
                                id: 'libero',
                                likes: 0.45187942579143003,
                                tags: <String>['venenatis'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('est'),
                                id: 'nullam',
                                likes: 0.2135432536614863,
                                tags: <String>[
                                  'amet',
                                  'urna',
                                  'pellentesque',
                                  'tempus',
                                  'quis',
                                  'montes',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'nulla': Union3<String, double, bool>.in2(
                          0.5555971846643103,
                        ),
                        'et': Union3<String, double, bool>.in2(
                          0.8123416224757132,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'morbi'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('curabitur'),
                                id: 'sagittis',
                                likes: 0.6132675873957687,
                                tags: <String>[
                                  'molestie',
                                  'adipiscing',
                                  'laoreet',
                                  'lobortis',
                                  'aliquet',
                                  'tempus',
                                  'amet',
                                  'facilisi',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'nascetur': Union3<String, double, bool>.in2(
                          0.3814568913920162,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'pellentesque'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('accumsan'),
                                id: 'tempus',
                                likes: 0.9691524120786215,
                                tags: <String>[
                                  'at',
                                  'augue',
                                  'sagittis',
                                  'tincidunt',
                                  'leo',
                                  'condimentum',
                                  'sed',
                                  'tempus',
                                  'sagittis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('varius'),
                                id: 'lacinia',
                                likes: 0.9124808312717165,
                                tags: <String>[
                                  'felis',
                                  'venenatis',
                                  'ante',
                                  'curabitur',
                                  'sapien',
                                  'neque',
                                  'a',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vestibulum'),
                                id: 'posuere',
                                likes: 0.1723672863793555,
                                tags: <String>[
                                  'curabitur',
                                  'suscipit',
                                  'sem',
                                  'dolor',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('mauris'),
                                id: 'magna',
                                likes: 0.0026729231435499434,
                                tags: <String>['velit'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('luctus'),
                                id: 'blandit',
                                likes: 0.592472066248127,
                                tags: <String>['id', 'mi'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('laoreet'),
                                id: 'ridiculus',
                                likes: 0.2510053489500814,
                                tags: <String>[
                                  'eros',
                                  'arcu',
                                  'nullam',
                                  'natoque',
                                  'lobortis',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'netus': Union3<String, double, bool>.in2(
                          0.4204610771502447,
                        ),
                        'sociis': Union3<String, double, bool>.in2(
                          0.5985750752119985,
                        ),
                        'mus': Union3<String, double, bool>.in2(
                          0.8731711550788954,
                        ),
                        'vivamus': Union3<String, double, bool>.in1(
                          'vulputate',
                        ),
                        'vel': Union3<String, double, bool>.in1('ridiculus'),
                        'ut': Union3<String, double, bool>.in2(
                          0.7442627193487668,
                        ),
                        'posuere': Union3<String, double, bool>.in2(
                          0.5935800027584861,
                        ),
                        'ultricies': Union3<String, double, bool>.in1('lacus'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'felis'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('montes'),
                                id: 'interdum',
                                likes: 0.16822307006506032,
                                tags: <String>[
                                  'praesent',
                                  'sed',
                                  'laoreet',
                                  'adipiscing',
                                  'at',
                                  'dis',
                                  'facilisi',
                                  'fames',
                                  'orci',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'phasellus': Union3<String, double, bool>.in1('at'),
                        'semper': Union3<String, double, bool>.in1('euismod'),
                        'lectus': Union3<String, double, bool>.in1('ridiculus'),
                      }.lock,
                      profile: (avatar: Defined('dictumst'), name: 'urna'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('metus'),
                                id: 'erat',
                                likes: 0.75124046324346,
                                tags: <String>[
                                  'cursus',
                                  'pulvinar',
                                  'imperdiet',
                                  'dictum',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('aliquet'),
                                id: 'suscipit',
                                likes: 0.2836054998705072,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sem'),
                                id: 'habitant',
                                likes: 0.40871891015608364,
                                tags: <String>[
                                  'ultrices',
                                  'porta',
                                  'praesent',
                                  'duis',
                                  'dolor',
                                  'lacinia',
                                  'magna',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('varius'),
                                id: 'ultrices',
                                likes: 0.35276215873101235,
                                tags: <String>[
                                  'hac',
                                  'lacus',
                                  'cras',
                                  'vivamus',
                                  'ligula',
                                  'volutpat',
                                  'fusce',
                                  'id',
                                  'mollis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('commodo'),
                                id: 'sit',
                                likes: 0.5845265068499145,
                                tags: <String>[
                                  'facilisi',
                                  'consequat',
                                  'suscipit',
                                  'varius',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'pretium': Union3<String, double, bool>.in1(
                          'imperdiet',
                        ),
                        'nullam': Union3<String, double, bool>.in2(
                          0.6548854416443434,
                        ),
                        'platea': Union3<String, double, bool>.in1('gravida'),
                        'vivamus': Union3<String, double, bool>.in2(
                          0.3140241278556448,
                        ),
                        'mauris': Union3<String, double, bool>.in1(
                          'scelerisque',
                        ),
                        'sagittis': Union3<String, double, bool>.in1(
                          'tincidunt',
                        ),
                        'tincidunt': Union3<String, double, bool>.in2(
                          0.2913923397846434,
                        ),
                        'placerat': Union3<String, double, bool>.in2(
                          0.8928915368102182,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'purus'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('rhoncus'),
                                id: 'dignissim',
                                likes: 0.04574683438043092,
                                tags: <String>[
                                  'dapibus',
                                  'netus',
                                  'molestie',
                                  'montes',
                                  'integer',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tellus'),
                                id: 'nulla',
                                likes: 0.009560843658457663,
                                tags: <String>['varius', 'vestibulum'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('fames'),
                                id: 'leo',
                                likes: 0.5947622900516925,
                                tags: <String>['venenatis', 'est'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('luctus'),
                                id: 'mattis',
                                likes: 0.7755427781015558,
                                tags: <String>[
                                  'elementum',
                                  'sapien',
                                  'semper',
                                  'faucibus',
                                  'dictum',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('non'),
                                id: 'mus',
                                likes: 0.8183111114396708,
                                tags: <String>['lacus'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('aliquam'),
                                id: 'nec',
                                likes: 0.7670667784478512,
                                tags: <String>['quis', 'vel'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tristique'),
                                id: 'accumsan',
                                likes: 0.31980899563085785,
                                tags: <String>[
                                  'sit',
                                  'laoreet',
                                  'diam',
                                  'blandit',
                                  'lacus',
                                  'sociis',
                                  'senectus',
                                  'netus',
                                  'magna',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('turpis'),
                                id: 'tempus',
                                likes: 0.6100886296617317,
                                tags: <String>[
                                  'enim',
                                  'ante',
                                  'mus',
                                  'odio',
                                  'odio',
                                  'pulvinar',
                                  'velit',
                                  'condimentum',
                                  'convallis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tempus'),
                                id: 'habitant',
                                likes: 0.8636958883045207,
                                tags: <String>[
                                  'vitae',
                                  'sit',
                                  'elit',
                                  'ornare',
                                  'ac',
                                  'vel',
                                  'malesuada',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'magnis': Union3<String, double, bool>.in1('lectus'),
                        'metus': Union3<String, double, bool>.in1('molestie'),
                        'ut': Union3<String, double, bool>.in2(
                          0.3459481100776487,
                        ),
                      }.lock,
                      profile: (
                        avatar: Defined('malesuada'),
                        name: 'ullamcorper',
                      ),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('aenean'),
                                id: 'auctor',
                                likes: 0.8396082283322209,
                                tags: <String>[
                                  'habitant',
                                  'suscipit',
                                  'habitant',
                                  'mus',
                                  'massa',
                                  'vestibulum',
                                  'aliquet',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('leo'),
                                id: 'montes',
                                likes: 0.8289808975384058,
                                tags: <String>['luctus'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('habitant'),
                                id: 'platea',
                                likes: 0.14516705303486743,
                                tags: <String>[
                                  'ornare',
                                  'est',
                                  'scelerisque',
                                  'sollicitudin',
                                  'hac',
                                  'metus',
                                  'varius',
                                  'fermentum',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sem'),
                                id: 'mollis',
                                likes: 0.02186890424137733,
                                tags: <String>[
                                  'cras',
                                  'mollis',
                                  'nec',
                                  'feugiat',
                                  'condimentum',
                                  'ipsum',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'sem': Union3<String, double, bool>.in1('dolor'),
                        'montes': Union3<String, double, bool>.in2(
                          0.8583520084246012,
                        ),
                        'consectetur': Union3<String, double, bool>.in2(
                          0.8045625013909077,
                        ),
                        'molestie': Union3<String, double, bool>.in2(
                          0.9724729167861381,
                        ),
                        'sodales': Union3<String, double, bool>.in2(
                          0.6642659484812284,
                        ),
                        'luctus': Union3<String, double, bool>.in2(
                          0.3339527381345144,
                        ),
                        'metus': Union3<String, double, bool>.in2(
                          0.46630645210047594,
                        ),
                        'malesuada': Union3<String, double, bool>.in2(
                          0.6768079458939549,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'iaculis'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sagittis'),
                                id: 'elementum',
                                likes: 0.05648556432693941,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dolor'),
                                id: 'imperdiet',
                                likes: 0.9404910424583789,
                                tags: <String>['natoque', 'gravida'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('fermentum'),
                                id: 'erat',
                                likes: 0.03775299146239053,
                                tags: <String>['nam', 'penatibus'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('adipiscing'),
                                id: 'curabitur',
                                likes: 0.8523214603800163,
                                tags: <String>[
                                  'vulputate',
                                  'sagittis',
                                  'cum',
                                  'mollis',
                                  'nunc',
                                  'proin',
                                  'habitant',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('mattis'),
                                id: 'eget',
                                likes: 0.2093464372473488,
                                tags: <String>[
                                  'porta',
                                  'cras',
                                  'morbi',
                                  'pulvinar',
                                  'blandit',
                                  'facilisis',
                                  'habitasse',
                                  'condimentum',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ligula'),
                                id: 'viverra',
                                likes: 0.5423570961986135,
                                tags: <String>[
                                  'condimentum',
                                  'sapien',
                                  'habitant',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('convallis'),
                                id: 'vestibulum',
                                likes: 0.7753149985297875,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('pulvinar'),
                                id: 'erat',
                                likes: 0.6596000189550322,
                                tags: <String>[
                                  'sociis',
                                  'est',
                                  'pharetra',
                                  'nibh',
                                  'leo',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('neque'),
                                id: 'hendrerit',
                                likes: 0.9319230310268908,
                                tags: <String>[
                                  'eget',
                                  'quam',
                                  'felis',
                                  'dictum',
                                  'vitae',
                                  'magna',
                                  'et',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'lectus': Union3<String, double, bool>.in2(
                          0.1337295995614146,
                        ),
                        'vel': Union3<String, double, bool>.in2(
                          0.000511879268154769,
                        ),
                        'bibendum': Union3<String, double, bool>.in2(
                          0.3488884316568087,
                        ),
                        'dictum': Union3<String, double, bool>.in2(
                          0.8148817401048424,
                        ),
                        'fames': Union3<String, double, bool>.in1('ipsum'),
                        'pulvinar': Union3<String, double, bool>.in1(
                          'malesuada',
                        ),
                        'non': Union3<String, double, bool>.in1('commodo'),
                      }.lock,
                      profile: (
                        avatar: Defined('pellentesque'),
                        name: 'ultricies',
                      ),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'vulputate': Union3<String, double, bool>.in1('est'),
                        'pharetra': Union3<String, double, bool>.in1(
                          'venenatis',
                        ),
                      }.lock,
                      profile: (avatar: Defined('euismod'), name: 'pulvinar'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tellus'),
                                id: 'penatibus',
                                likes: 0.8831595329814212,
                                tags: <String>[
                                  'ipsum',
                                  'congue',
                                  'faucibus',
                                  'nam',
                                  'sagittis',
                                  'sem',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('a'),
                                id: 'nec',
                                likes: 0.1948563859185486,
                                tags: <String>[
                                  'placerat',
                                  'phasellus',
                                  'risus',
                                  'augue',
                                  'etiam',
                                  'eleifend',
                                  'facilisi',
                                  'suscipit',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('auctor'),
                                id: 'mollis',
                                likes: 0.03463316547956097,
                                tags: <String>[
                                  'malesuada',
                                  'sagittis',
                                  'nibh',
                                  'vestibulum',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('iaculis'),
                                id: 'aliquet',
                                likes: 0.11538731434770289,
                                tags: <String>[
                                  'ligula',
                                  'blandit',
                                  'habitasse',
                                  'tempor',
                                  'porta',
                                  'ornare',
                                  'aliquet',
                                  'id',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'dictum': Union3<String, double, bool>.in1('morbi'),
                        'est': Union3<String, double, bool>.in1('urna'),
                        'interdum': Union3<String, double, bool>.in1('congue'),
                        'porta': Union3<String, double, bool>.in2(
                          0.04276556772158602,
                        ),
                        'tellus': Union3<String, double, bool>.in1('blandit'),
                        'nulla': Union3<String, double, bool>.in2(
                          0.18117711371571232,
                        ),
                        'vestibulum': Union3<String, double, bool>.in1(
                          'aliquet',
                        ),
                      }.lock,
                      profile: (avatar: Defined('consequat'), name: 'arcu'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('bibendum'),
                                id: 'elit',
                                likes: 0.11523872129499724,
                                tags: <String>[
                                  'fames',
                                  'varius',
                                  'turpis',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'gravida': Union3<String, double, bool>.in1('gravida'),
                        'vulputate': Union3<String, double, bool>.in2(
                          0.8204704887782295,
                        ),
                        'dictum': Union3<String, double, bool>.in1('iaculis'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'eros'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sed'),
                                id: 'eleifend',
                                likes: 0.14913809919510268,
                                tags: <String>[
                                  'suspendisse',
                                  'urna',
                                  'ullamcorper',
                                  'nulla',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('metus'),
                                id: 'faucibus',
                                likes: 0.7003791917043132,
                                tags: <String>[
                                  'pellentesque',
                                  'pulvinar',
                                  'magna',
                                  'interdum',
                                  'ante',
                                  'ultricies',
                                  'natoque',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('et'),
                                id: 'pharetra',
                                likes: 0.1472492724504083,
                                tags: <String>[
                                  'tellus',
                                  'ornare',
                                  'dapibus',
                                  'quisque',
                                  'maecenas',
                                  'nisl',
                                  'diam',
                                  'erat',
                                  'auctor',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('est'),
                                id: 'sit',
                                likes: 0.011309809107936664,
                                tags: <String>[
                                  'nunc',
                                  'eu',
                                  'auctor',
                                  'sit',
                                  'elit',
                                  'hac',
                                  'cursus',
                                  'dui',
                                  'cursus',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'nunc': Union3<String, double, bool>.in2(
                          0.27494166228191574,
                        ),
                        'turpis': Union3<String, double, bool>.in1('maecenas'),
                        'tempus': Union3<String, double, bool>.in1('egestas'),
                        'ornare': Union3<String, double, bool>.in2(
                          0.11997841653282137,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'nisi'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('orci'),
                                id: 'sociis',
                                likes: 0.5064512154155694,
                                tags: <String>[
                                  'ridiculus',
                                  'rhoncus',
                                  'fringilla',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('euismod'),
                                id: 'fusce',
                                likes: 0.2045293766725157,
                                tags: <String>[
                                  'at',
                                  'magnis',
                                  'neque',
                                  'netus',
                                  'dis',
                                  'pellentesque',
                                  'id',
                                  'nisi',
                                  'facilisi',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tristique'),
                                id: 'mauris',
                                likes: 0.768084699707798,
                                tags: <String>['fusce', 'nibh', 'viverra'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('fames'),
                                id: 'varius',
                                likes: 0.29101269991022405,
                                tags: <String>['erat', 'faucibus', 'amet'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('arcu'),
                                id: 'mi',
                                likes: 0.5492740963020893,
                                tags: <String>[
                                  'ultricies',
                                  'potenti',
                                  'sapien',
                                  'ultrices',
                                  'dis',
                                  'cursus',
                                  'nunc',
                                  'tempus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dignissim'),
                                id: 'amet',
                                likes: 0.14429083344360139,
                                tags: <String>[
                                  'eget',
                                  'potenti',
                                  'posuere',
                                  'aliquet',
                                  'pellentesque',
                                  'varius',
                                  'cursus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('placerat'),
                                id: 'quisque',
                                likes: 0.9872205013777857,
                                tags: <String>[
                                  'odio',
                                  'nisi',
                                  'tempor',
                                  'sollicitudin',
                                  'nullam',
                                  'mattis',
                                  'felis',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'est': Union3<String, double, bool>.in2(
                          0.005191729824909674,
                        ),
                        'non': Union3<String, double, bool>.in1('fames'),
                        'volutpat': Union3<String, double, bool>.in1('cursus'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'semper'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('lobortis'),
                                id: 'semper',
                                likes: 0.3971332159146105,
                                tags: <String>[
                                  'magna',
                                  'varius',
                                  'aliquet',
                                  'lacinia',
                                  'fusce',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('cum'),
                                id: 'sagittis',
                                likes: 0.22238277254930172,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('habitant'),
                                id: 'platea',
                                likes: 0.5515030401852626,
                                tags: <String>[
                                  'cras',
                                  'auctor',
                                  'tempor',
                                  'adipiscing',
                                  'nunc',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('pretium'),
                                id: 'mauris',
                                likes: 0.46677726805870956,
                                tags: <String>['velit', 'a', 'velit'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('quam'),
                                id: 'accumsan',
                                likes: 0.7412060495468182,
                                tags: <String>['vitae', 'amet'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('metus'),
                                id: 'senectus',
                                likes: 0.03002572668100234,
                                tags: <String>[
                                  'porta',
                                  'morbi',
                                  'lacus',
                                  'bibendum',
                                  'elementum',
                                  'augue',
                                  'condimentum',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'volutpat': Union3<String, double, bool>.in1('porta'),
                        'mollis': Union3<String, double, bool>.in1('dolor'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'ridiculus'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('urna'),
                                id: 'mi',
                                likes: 0.5907605868624939,
                                tags: <String>[
                                  'ligula',
                                  'euismod',
                                  'erat',
                                  'id',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('potenti'),
                                id: 'rhoncus',
                                likes: 0.22044680102720204,
                                tags: <String>[
                                  'diam',
                                  'est',
                                  'mollis',
                                  'orci',
                                  'suscipit',
                                  'fames',
                                  'feugiat',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('hendrerit'),
                                id: 'duis',
                                likes: 0.013605888003835775,
                                tags: <String>['velit', 'nulla'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('bibendum'),
                                id: 'nec',
                                likes: 0.1654022991439159,
                                tags: <String>[
                                  'maecenas',
                                  'donec',
                                  'amet',
                                  'feugiat',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'nec': Union3<String, double, bool>.in2(
                          0.27715480238165136,
                        ),
                        'dis': Union3<String, double, bool>.in1('mauris'),
                        'mauris': Union3<String, double, bool>.in2(
                          0.23014626530857962,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'ipsum'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dolor'),
                                id: 'fermentum',
                                likes: 0.38646856041272004,
                                tags: <String>[
                                  'suspendisse',
                                  'porta',
                                  'pretium',
                                  'habitasse',
                                  'sed',
                                  'condimentum',
                                  'bibendum',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nec'),
                                id: 'arcu',
                                likes: 0.30806435685539113,
                                tags: <String>[
                                  'dictumst',
                                  'eget',
                                  'dapibus',
                                  'sollicitudin',
                                  'sociis',
                                  'blandit',
                                  'fusce',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('penatibus'),
                                id: 'nisi',
                                likes: 0.708006358798576,
                                tags: <String>[
                                  'commodo',
                                  'viverra',
                                  'nisl',
                                  'dui',
                                  'lectus',
                                  'nunc',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('eu'),
                                id: 'egestas',
                                likes: 0.6333325428729463,
                                tags: <String>[
                                  'non',
                                  'sapien',
                                  'convallis',
                                  'at',
                                  'varius',
                                  'euismod',
                                  'ac',
                                  'aliquam',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('mollis'),
                                id: 'lacus',
                                likes: 0.6828487659649577,
                                tags: <String>[
                                  'nascetur',
                                  'suscipit',
                                  'penatibus',
                                  'quam',
                                  'elit',
                                  'odio',
                                  'sapien',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('aliquam'),
                                id: 'lectus',
                                likes: 0.5291926971094694,
                                tags: <String>[
                                  'nullam',
                                  'ullamcorper',
                                  'lectus',
                                  'nascetur',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('risus'),
                                id: 'cum',
                                likes: 0.17310496400298847,
                                tags: <String>[
                                  'tellus',
                                  'consectetur',
                                  'mollis',
                                  'metus',
                                  'suscipit',
                                  'dictumst',
                                  'egestas',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('eleifend'),
                                id: 'adipiscing',
                                likes: 0.8265936852720687,
                                tags: <String>[
                                  'potenti',
                                  'placerat',
                                  'viverra',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'sodales': Union3<String, double, bool>.in2(
                          0.9027935279930878,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'erat'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('aenean'),
                                id: 'leo',
                                likes: 0.7243531270499375,
                                tags: <String>[
                                  'quam',
                                  'venenatis',
                                  'a',
                                  'luctus',
                                  'ac',
                                  'egestas',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('maecenas'),
                                id: 'metus',
                                likes: 0.35278557426012414,
                                tags: <String>[
                                  'in',
                                  'ullamcorper',
                                  'magnis',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'magnis': Union3<String, double, bool>.in2(
                          0.8842068193947084,
                        ),
                        'venenatis': Union3<String, double, bool>.in1(
                          'euismod',
                        ),
                        'ultricies': Union3<String, double, bool>.in1(
                          'malesuada',
                        ),
                        'fames': Union3<String, double, bool>.in2(
                          0.5031557187370896,
                        ),
                        'fringilla': Union3<String, double, bool>.in1('platea'),
                        'mollis': Union3<String, double, bool>.in2(
                          0.7510363071850443,
                        ),
                        'mollis': Union3<String, double, bool>.in2(
                          0.09549958436572992,
                        ),
                        'aenean': Union3<String, double, bool>.in2(
                          0.9586202917769009,
                        ),
                      }.lock,
                      profile: (avatar: Defined('tortor'), name: 'porttitor'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('accumsan'),
                                id: 'neque',
                                likes: 0.044542053766737144,
                                tags: <String>[
                                  'nullam',
                                  'duis',
                                  'rhoncus',
                                  'ipsum',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('condimentum'),
                                id: 'ante',
                                likes: 0.7619385239843476,
                                tags: <String>['lobortis'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('venenatis'),
                                id: 'cras',
                                likes: 0.13772022367204384,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sapien'),
                                id: 'nullam',
                                likes: 0.3695079789774859,
                                tags: <String>[].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'arcu': Union3<String, double, bool>.in2(
                          0.9965982510824053,
                        ),
                        'mauris': Union3<String, double, bool>.in1('praesent'),
                        'interdum': Union3<String, double, bool>.in1(
                          'habitant',
                        ),
                        'neque': Union3<String, double, bool>.in1('lacinia'),
                        'sollicitudin': Union3<String, double, bool>.in2(
                          0.5441846697030366,
                        ),
                      }.lock,
                      profile: (avatar: Defined('lectus'), name: 'dictum'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'nisl': Union3<String, double, bool>.in2(
                          0.7153045146561507,
                        ),
                        'ac': Union3<String, double, bool>.in2(
                          0.6055522621419317,
                        ),
                        'bibendum': Union3<String, double, bool>.in2(
                          0.7031265511036335,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'viverra'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'praesent': Union3<String, double, bool>.in1('tempus'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'tristique'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nec'),
                                id: 'sed',
                                likes: 0.20478614946041263,
                                tags: <String>['dolor'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('feugiat'),
                                id: 'semper',
                                likes: 0.14425028772613369,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('platea'),
                                id: 'vulputate',
                                likes: 0.07168201041056077,
                                tags: <String>[
                                  'dui',
                                  'massa',
                                  'elementum',
                                  'nec',
                                  'aliquet',
                                  'tellus',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'augue': Union3<String, double, bool>.in1('facilisi'),
                        'phasellus': Union3<String, double, bool>.in1(
                          'praesent',
                        ),
                        'cras': Union3<String, double, bool>.in1('quis'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'viverra'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('cum'),
                                id: 'egestas',
                                likes: 0.846320344664487,
                                tags: <String>['cum', 'cursus'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('eget'),
                                id: 'varius',
                                likes: 0.9032278344673293,
                                tags: <String>[
                                  'porta',
                                  'elit',
                                  'sollicitudin',
                                  'magna',
                                  'placerat',
                                  'nam',
                                  'nunc',
                                  'pretium',
                                  'felis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sodales'),
                                id: 'felis',
                                likes: 0.7258120828792471,
                                tags: <String>[
                                  'ante',
                                  'vulputate',
                                  'habitasse',
                                  'mus',
                                  'natoque',
                                  'nec',
                                  'tristique',
                                  'facilisis',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'ultricies': Union3<String, double, bool>.in2(
                          0.4006532613486039,
                        ),
                        'lacinia': Union3<String, double, bool>.in2(
                          0.08184593299163812,
                        ),
                        'sagittis': Union3<String, double, bool>.in1('a'),
                        'sollicitudin': Union3<String, double, bool>.in2(
                          0.06714040772608709,
                        ),
                        'montes': Union3<String, double, bool>.in1('turpis'),
                        'euismod': Union3<String, double, bool>.in2(
                          0.7629166988219582,
                        ),
                        'aenean': Union3<String, double, bool>.in1('ridiculus'),
                        'vulputate': Union3<String, double, bool>.in2(
                          0.3898699824488846,
                        ),
                        'tincidunt': Union3<String, double, bool>.in1('nunc'),
                      }.lock,
                      profile: (avatar: Defined('magnis'), name: 'ultricies'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('adipiscing'),
                                id: 'nisl',
                                likes: 0.45314979182590187,
                                tags: <String>[
                                  'convallis',
                                  'quis',
                                  'urna',
                                  'feugiat',
                                  'nunc',
                                  'varius',
                                  'odio',
                                  'fames',
                                  'ultricies',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('porttitor'),
                                id: 'habitant',
                                likes: 0.8353671109972224,
                                tags: <String>['at'].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'accumsan': Union3<String, double, bool>.in1('sem'),
                        'commodo': Union3<String, double, bool>.in2(
                          0.8812927294434114,
                        ),
                        'euismod': Union3<String, double, bool>.in1('magnis'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'phasellus'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('consequat'),
                                id: 'aliquam',
                                likes: 0.5705941416644673,
                                tags: <String>[
                                  'mi',
                                  'orci',
                                  'tortor',
                                  'nullam',
                                  'dignissim',
                                  'praesent',
                                  'fames',
                                  'nullam',
                                  'facilisi',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ornare'),
                                id: 'egestas',
                                likes: 0.42456032585342307,
                                tags: <String>[
                                  'luctus',
                                  'laoreet',
                                  'cursus',
                                  'quisque',
                                  'metus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vivamus'),
                                id: 'quisque',
                                likes: 0.2806712902576799,
                                tags: <String>['magnis'].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'dignissim': Union3<String, double, bool>.in2(
                          0.618741549478417,
                        ),
                        'duis': Union3<String, double, bool>.in2(
                          0.5791209784147604,
                        ),
                        'dignissim': Union3<String, double, bool>.in2(
                          0.9963492236014402,
                        ),
                        'potenti': Union3<String, double, bool>.in2(
                          0.5794847194254692,
                        ),
                        'molestie': Union3<String, double, bool>.in2(
                          0.14310357030437015,
                        ),
                        'augue': Union3<String, double, bool>.in2(
                          0.5746989374868484,
                        ),
                        'lacinia': Union3<String, double, bool>.in2(
                          0.8427880373643478,
                        ),
                        'magnis': Union3<String, double, bool>.in2(
                          0.6125244908104157,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'consequat'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('quisque'),
                                id: 'dictumst',
                                likes: 0.8742941879808395,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vel'),
                                id: 'nisl',
                                likes: 0.9253082388827761,
                                tags: <String>[
                                  'pulvinar',
                                  'ante',
                                  'sit',
                                  'sit',
                                  'aliquam',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('odio'),
                                id: 'blandit',
                                likes: 0.04435710130701753,
                                tags: <String>[
                                  'elementum',
                                  'cursus',
                                  'sed',
                                  'senectus',
                                  'venenatis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('consequat'),
                                id: 'tellus',
                                likes: 0.028996006554801723,
                                tags: <String>[
                                  'placerat',
                                  'at',
                                  'molestie',
                                  'scelerisque',
                                  'parturient',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'accumsan': Union3<String, double, bool>.in1('hac'),
                        'fusce': Union3<String, double, bool>.in2(
                          0.19273255747734186,
                        ),
                        'venenatis': Union3<String, double, bool>.in2(
                          0.03332996519539344,
                        ),
                        'iaculis': Union3<String, double, bool>.in1('viverra'),
                        'aenean': Union3<String, double, bool>.in2(
                          0.6842604485265001,
                        ),
                        'neque': Union3<String, double, bool>.in1('fringilla'),
                        'malesuada': Union3<String, double, bool>.in1(
                          'posuere',
                        ),
                        'at': Union3<String, double, bool>.in2(
                          0.4038519381612977,
                        ),
                        'turpis': Union3<String, double, bool>.in1('imperdiet'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'nulla'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'sem': Union3<String, double, bool>.in2(
                          0.814435065799205,
                        ),
                        'purus': Union3<String, double, bool>.in2(
                          0.005743980314675157,
                        ),
                        'proin': Union3<String, double, bool>.in2(
                          0.5016053331345636,
                        ),
                        'montes': Union3<String, double, bool>.in1('imperdiet'),
                        'eget': Union3<String, double, bool>.in2(
                          0.2282013827433622,
                        ),
                      }.lock,
                      profile: (avatar: Defined('pulvinar'), name: 'tellus'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('leo'),
                                id: 'iaculis',
                                likes: 0.19622219778597838,
                                tags: <String>[
                                  'ullamcorper',
                                  'auctor',
                                  'cum',
                                  'risus',
                                  'vitae',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('metus'),
                                id: 'cum',
                                likes: 0.29695155326116085,
                                tags: <String>[
                                  'felis',
                                  'risus',
                                  'dapibus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tortor'),
                                id: 'sapien',
                                likes: 0.5761826659912176,
                                tags: <String>[
                                  'porttitor',
                                  'aliquet',
                                  'sodales',
                                  'vestibulum',
                                  'habitant',
                                  'fusce',
                                  'vel',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('arcu'),
                                id: 'vulputate',
                                likes: 0.412696094218439,
                                tags: <String>[
                                  'libero',
                                  'vitae',
                                  'luctus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dui'),
                                id: 'elementum',
                                likes: 0.686868354845353,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('penatibus'),
                                id: 'nunc',
                                likes: 0.14440298368841986,
                                tags: <String>[
                                  'nisl',
                                  'facilisi',
                                  'tempor',
                                  'aenean',
                                  'sagittis',
                                  'commodo',
                                  'at',
                                  'nisl',
                                  'rhoncus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tristique'),
                                id: 'egestas',
                                likes: 0.2316680367216173,
                                tags: <String>[
                                  'ligula',
                                  'magna',
                                  'maecenas',
                                  'mus',
                                  'fusce',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('condimentum'),
                                id: 'hac',
                                likes: 0.31385896936587643,
                                tags: <String>[
                                  'congue',
                                  'faucibus',
                                  'tellus',
                                  'fermentum',
                                  'pharetra',
                                  'orci',
                                  'porta',
                                  'magnis',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('sagittis'),
                                id: 'sit',
                                likes: 0.2683775854145467,
                                tags: <String>[
                                  'scelerisque',
                                  'amet',
                                  'dolor',
                                  'tristique',
                                  'etiam',
                                  'mi',
                                  'lobortis',
                                  'ac',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'fusce': Union3<String, double, bool>.in1('adipiscing'),
                        'tortor': Union3<String, double, bool>.in2(
                          0.29128393479117054,
                        ),
                        'morbi': Union3<String, double, bool>.in1('sociis'),
                      }.lock,
                      profile: (avatar: Defined('faucibus'), name: 'eleifend'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('eros'),
                                id: 'porta',
                                likes: 0.25077208861897893,
                                tags: <String>[
                                  'eu',
                                  'ridiculus',
                                  'netus',
                                  'eu',
                                  'arcu',
                                  'erat',
                                  'et',
                                  'dolor',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('lorem'),
                                id: 'penatibus',
                                likes: 0.9925139975931977,
                                tags: <String>['eget', 'massa'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('quis'),
                                id: 'ultrices',
                                likes: 0.38779740817605723,
                                tags: <String>[
                                  'ultricies',
                                  'lobortis',
                                  'cras',
                                  'donec',
                                  'volutpat',
                                  'consequat',
                                  'non',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('dictum'),
                                id: 'auctor',
                                likes: 0.5106444455129788,
                                tags: <String>[
                                  'consectetur',
                                  'mauris',
                                  'dictum',
                                  'pretium',
                                  'arcu',
                                  'non',
                                  'viverra',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'parturient': Union3<String, double, bool>.in1(
                          'elementum',
                        ),
                        'ornare': Union3<String, double, bool>.in2(
                          0.38590373834101277,
                        ),
                        'hac': Union3<String, double, bool>.in1('adipiscing'),
                        'eget': Union3<String, double, bool>.in2(
                          0.6870632657455944,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'quis'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'at': Union3<String, double, bool>.in1('tempor'),
                      }.lock,
                      profile: (avatar: Defined('ridiculus'), name: 'habitant'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('libero'),
                                id: 'scelerisque',
                                likes: 0.49122736076088114,
                                tags: <String>[
                                  'venenatis',
                                  'fames',
                                  'libero',
                                  'natoque',
                                  'metus',
                                  'auctor',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('semper'),
                                id: 'viverra',
                                likes: 0.8323544728326325,
                                tags: <String>['amet', 'etiam', 'ac'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tincidunt'),
                                id: 'magna',
                                likes: 0.13875589404038602,
                                tags: <String>[
                                  'purus',
                                  'elit',
                                  'dictumst',
                                  'aliquam',
                                  'habitasse',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('id'),
                                id: 'ligula',
                                likes: 0.43942129627387905,
                                tags: <String>['netus'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('convallis'),
                                id: 'metus',
                                likes: 0.9449064249889536,
                                tags: <String>[
                                  'posuere',
                                  'ut',
                                  'vestibulum',
                                  'tellus',
                                  'velit',
                                  'justo',
                                  'felis',
                                  'platea',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ullamcorper'),
                                id: 'mattis',
                                likes: 0.5051230311690141,
                                tags: <String>['amet', 'dapibus'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('malesuada'),
                                id: 'sem',
                                likes: 0.6056157593113212,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('maecenas'),
                                id: 'ultrices',
                                likes: 0.6212789133632894,
                                tags: <String>[
                                  'porta',
                                  'justo',
                                  'sollicitudin',
                                  'phasellus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('potenti'),
                                id: 'vel',
                                likes: 0.42182728830319993,
                                tags: <String>[
                                  'montes',
                                  'ut',
                                  'etiam',
                                  'netus',
                                  'lectus',
                                  'tempus',
                                  'sem',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'egestas': Union3<String, double, bool>.in2(
                          0.06413146998466746,
                        ),
                        'eu': Union3<String, double, bool>.in2(
                          0.9302285480996574,
                        ),
                        'amet': Union3<String, double, bool>.in1('sit'),
                        'iaculis': Union3<String, double, bool>.in2(
                          0.797688730891348,
                        ),
                        'tellus': Union3<String, double, bool>.in2(
                          0.5105033691652954,
                        ),
                        'nibh': Union3<String, double, bool>.in2(
                          0.9674117241302312,
                        ),
                        'suscipit': Union3<String, double, bool>.in1(
                          'facilisi',
                        ),
                      }.lock,
                      profile: (avatar: Defined('mattis'), name: 'tempus'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('odio'),
                                id: 'platea',
                                likes: 0.5719403334266631,
                                tags: <String>['neque', 'eros'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('aliquet'),
                                id: 'odio',
                                likes: 0.1761411895855869,
                                tags: <String>[
                                  'senectus',
                                  'massa',
                                  'cum',
                                  'iaculis',
                                  'tempus',
                                  'molestie',
                                  'parturient',
                                  'montes',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('feugiat'),
                                id: 'ultrices',
                                likes: 0.20669607850899174,
                                tags: <String>[
                                  'dignissim',
                                  'porttitor',
                                  'magna',
                                  'fusce',
                                  'ultrices',
                                  'ultrices',
                                  'libero',
                                  'condimentum',
                                  'etiam',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('auctor'),
                                id: 'integer',
                                likes: 0.5623008060636447,
                                tags: <String>[
                                  'dignissim',
                                  'quam',
                                  'tortor',
                                  'auctor',
                                  'phasellus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('tristique'),
                                id: 'ut',
                                likes: 0.5871254545490556,
                                tags: <String>[
                                  'sed',
                                  'laoreet',
                                  'at',
                                  'orci',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('leo'),
                                id: 'ullamcorper',
                                likes: 0.9025212904044556,
                                tags: <String>[
                                  'posuere',
                                  'habitant',
                                  'congue',
                                  'adipiscing',
                                  'tempor',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vulputate'),
                                id: 'justo',
                                likes: 0.04492288128492972,
                                tags: <String>[
                                  'elementum',
                                  'metus',
                                  'laoreet',
                                  'mattis',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences:
                          <String, Union3<String, double, bool>>{}.lock,
                      profile: (avatar: Undefined(), name: 'risus'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'est': Union3<String, double, bool>.in1('phasellus'),
                        'suspendisse': Union3<String, double, bool>.in1('dis'),
                        'nisi': Union3<String, double, bool>.in1('commodo'),
                      }.lock,
                      profile: (avatar: Defined('metus'), name: 'dignissim'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('interdum'),
                                id: 'ullamcorper',
                                likes: 0.986221992279503,
                                tags: <String>['dictum'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('bibendum'),
                                id: 'justo',
                                likes: 0.18897691347106427,
                                tags: <String>[
                                  'risus',
                                  'ante',
                                  'luctus',
                                  'purus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('senectus'),
                                id: 'fames',
                                likes: 0.6717964882709649,
                                tags: <String>[
                                  'etiam',
                                  'vestibulum',
                                  'malesuada',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('enim'),
                                id: 'aliquam',
                                likes: 0.8636013892957888,
                                tags: <String>[
                                  'fringilla',
                                  'proin',
                                  'hendrerit',
                                  'blandit',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('elit'),
                                id: 'volutpat',
                                likes: 0.6049181214914754,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('et'),
                                id: 'lectus',
                                likes: 0.29720077617177787,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('quis'),
                                id: 'praesent',
                                likes: 0.20239408093525046,
                                tags: <String>['blandit'].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'justo': Union3<String, double, bool>.in2(
                          0.7813611132978674,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'convallis'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ridiculus'),
                                id: 'interdum',
                                likes: 0.46047203503846135,
                                tags: <String>[
                                  'quam',
                                  'mus',
                                  'justo',
                                  'lectus',
                                  'vivamus',
                                  'erat',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vel'),
                                id: 'suspendisse',
                                likes: 0.3198233933647787,
                                tags: <String>[
                                  'sagittis',
                                  'sit',
                                  'odio',
                                  'tortor',
                                  'vestibulum',
                                  'vel',
                                  'nam',
                                  'in',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vitae'),
                                id: 'accumsan',
                                likes: 0.043530739480797775,
                                tags: <String>['amet', 'elit'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vel'),
                                id: 'parturient',
                                likes: 0.5161780810075112,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vestibulum'),
                                id: 'pretium',
                                likes: 0.5646526752928134,
                                tags: <String>[
                                  'facilisi',
                                  'integer',
                                  'massa',
                                  'penatibus',
                                  'ornare',
                                  'morbi',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('bibendum'),
                                id: 'risus',
                                likes: 0.7652991369079732,
                                tags: <String>[
                                  'malesuada',
                                  'aliquam',
                                  'lectus',
                                  'etiam',
                                  'lorem',
                                  'ullamcorper',
                                  'eu',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('lobortis'),
                                id: 'dis',
                                likes: 0.7453850135585158,
                                tags: <String>[
                                  'laoreet',
                                  'ultrices',
                                  'posuere',
                                  'natoque',
                                  'quisque',
                                  'fringilla',
                                  'magna',
                                  'habitasse',
                                  'sociis',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'ipsum': Union3<String, double, bool>.in1('enim'),
                      }.lock,
                      profile: (avatar: Defined('tristique'), name: 'dis'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ut'),
                                id: 'dis',
                                likes: 0.6452659224388312,
                                tags: <String>[
                                  'urna',
                                  'velit',
                                  'neque',
                                  'nam',
                                  'mi',
                                  'ultricies',
                                  'penatibus',
                                  'mi',
                                  'eros',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ullamcorper'),
                                id: 'porta',
                                likes: 0.46522370625977627,
                                tags: <String>[
                                  'commodo',
                                  'ante',
                                  'sociis',
                                  'egestas',
                                  'euismod',
                                  'nunc',
                                  'porta',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ridiculus'),
                                id: 'pharetra',
                                likes: 0.6512864413472437,
                                tags: <String>['amet'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('commodo'),
                                id: 'mauris',
                                likes: 0.44732468687678806,
                                tags: <String>['bibendum', 'convallis'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('rhoncus'),
                                id: 'mollis',
                                likes: 0.18035243368999987,
                                tags: <String>['sagittis', 'est'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('convallis'),
                                id: 'dignissim',
                                likes: 0.7831136192750223,
                                tags: <String>[
                                  'amet',
                                  'parturient',
                                  'magna',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('iaculis'),
                                id: 'morbi',
                                likes: 0.014999117064104728,
                                tags: <String>['fringilla'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('blandit'),
                                id: 'pellentesque',
                                likes: 0.5794709668764132,
                                tags: <String>['phasellus', 'ante'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('aliquet'),
                                id: 'quis',
                                likes: 0.4123823502823998,
                                tags: <String>[
                                  'etiam',
                                  'potenti',
                                  'justo',
                                  'laoreet',
                                  'est',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'sapien': Union3<String, double, bool>.in2(
                          0.1548685426640971,
                        ),
                        'ornare': Union3<String, double, bool>.in2(
                          0.683469862621824,
                        ),
                        'accumsan': Union3<String, double, bool>.in1('lorem'),
                        'nullam': Union3<String, double, bool>.in2(
                          0.3591482781310569,
                        ),
                        'augue': Union3<String, double, bool>.in1('vel'),
                      }.lock,
                      profile: (avatar: Defined('duis'), name: 'odio'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'aenean': Union3<String, double, bool>.in2(
                          0.1911944920763582,
                        ),
                        'libero': Union3<String, double, bool>.in2(
                          0.5790428765762761,
                        ),
                        'cum': Union3<String, double, bool>.in1('natoque'),
                        'sollicitudin': Union3<String, double, bool>.in1(
                          'rhoncus',
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'fusce'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('vulputate'),
                                id: 'in',
                                likes: 0.886159432213582,
                                tags: <String>[
                                  'lacinia',
                                  'elementum',
                                  'auctor',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('faucibus'),
                                id: 'diam',
                                likes: 0.13253541661382073,
                                tags: <String>['a', 'netus', 'netus'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('integer'),
                                id: 'iaculis',
                                likes: 0.32086837547276226,
                                tags: <String>[
                                  'mauris',
                                  'risus',
                                  'commodo',
                                  'donec',
                                  'natoque',
                                  'et',
                                  'fames',
                                  'mi',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('orci'),
                                id: 'duis',
                                likes: 0.7417950529385519,
                                tags: <String>[
                                  'auctor',
                                  'dictumst',
                                  'platea',
                                  'quam',
                                  'tempus',
                                  'eros',
                                  'eleifend',
                                  'mus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('fringilla'),
                                id: 'enim',
                                likes: 0.3414172266426201,
                                tags: <String>[
                                  'vitae',
                                  'pulvinar',
                                  'eleifend',
                                  'nulla',
                                  'proin',
                                  'penatibus',
                                  'nascetur',
                                  'suspendisse',
                                  'velit',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('habitasse'),
                                id: 'cras',
                                likes: 0.11341075001655865,
                                tags: <String>['facilisi'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('urna'),
                                id: 'nunc',
                                likes: 0.26844272502063304,
                                tags: <String>[
                                  'eu',
                                  'aliquam',
                                  'nam',
                                  'tincidunt',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('auctor'),
                                id: 'euismod',
                                likes: 0.7999722246008003,
                                tags: <String>[].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'sollicitudin': Union3<String, double, bool>.in2(
                          0.049680268053686194,
                        ),
                      }.lock,
                      profile: (avatar: Defined('arcu'), name: 'auctor'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ultrices'),
                                id: 'aliquet',
                                likes: 0.4327247582061591,
                                tags: <String>[
                                  'hendrerit',
                                  'odio',
                                  'phasellus',
                                  'hendrerit',
                                  'est',
                                  'vulputate',
                                  'commodo',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('bibendum'),
                                id: 'lacus',
                                likes: 0.07381903310909321,
                                tags: <String>['vel', 'proin'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('habitant'),
                                id: 'maecenas',
                                likes: 0.3062058957244653,
                                tags: <String>[
                                  'accumsan',
                                  'proin',
                                  'eget',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'bibendum': Union3<String, double, bool>.in1('dapibus'),
                        'sollicitudin': Union3<String, double, bool>.in1(
                          'dolor',
                        ),
                        'aliquet': Union3<String, double, bool>.in1(
                          'condimentum',
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'lacinia'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('urna'),
                                id: 'nisi',
                                likes: 0.2293426681038554,
                                tags: <String>[
                                  'ipsum',
                                  'nisl',
                                  'congue',
                                  'sodales',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('aliquet'),
                                id: 'eros',
                                likes: 0.46213844719325226,
                                tags: <String>['vestibulum'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('hac'),
                                id: 'sociis',
                                likes: 0.4079615558983928,
                                tags: <String>[
                                  'velit',
                                  'cursus',
                                  'nisi',
                                  'hac',
                                  'molestie',
                                  'praesent',
                                  'sapien',
                                  'sed',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'metus': Union3<String, double, bool>.in2(
                          0.6750490473969013,
                        ),
                        'nunc': Union3<String, double, bool>.in1('nisi'),
                        'cum': Union3<String, double, bool>.in1('sem'),
                        'est': Union3<String, double, bool>.in1('nisl'),
                        'vestibulum': Union3<String, double, bool>.in1('ipsum'),
                        'proin': Union3<String, double, bool>.in1('pharetra'),
                        'mattis': Union3<String, double, bool>.in2(
                          0.10810762733737334,
                        ),
                        'morbi': Union3<String, double, bool>.in2(
                          0.9776689155319364,
                        ),
                      }.lock,
                      profile: (avatar: Defined('augue'), name: 'magnis'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('lobortis'),
                                id: 'eleifend',
                                likes: 0.3772783367608533,
                                tags: <String>[
                                  'lacinia',
                                  'aenean',
                                  'vivamus',
                                  'feugiat',
                                  'ac',
                                  'magna',
                                  'mollis',
                                  'eget',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('nibh'),
                                id: 'nullam',
                                likes: 0.14842383876674048,
                                tags: <String>[].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'sociis': Union3<String, double, bool>.in2(
                          0.9097738406852416,
                        ),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'integer'),
                    ),
                  ),
                ]
                .lock,
      ),
      (
        i:
            <
                  ({
                    IList<
                      ({
                        Union2<String, ({IList<String> media, String text})>
                        content,
                        String id,
                        double likes,
                        IList<String> tags,
                      })
                    >
                    posts,
                    ({
                      IMap<String, Union3<String, double, bool>> preferences,
                      ({Optional<String> avatar, String name}) profile,
                    })
                    user,
                  })
                >[
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('eu'),
                                id: 'lacus',
                                likes: 0.6217154582780763,
                                tags: <String>[
                                  'blandit',
                                  'nec',
                                  'montes',
                                  'fames',
                                  'nisl',
                                  'laoreet',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'duis': Union3<String, double, bool>.in1(
                          'sollicitudin',
                        ),
                        'faucibus': Union3<String, double, bool>.in2(
                          0.5539668584583153,
                        ),
                        'sociis': Union3<String, double, bool>.in1('magna'),
                        'feugiat': Union3<String, double, bool>.in2(
                          0.7427782882829491,
                        ),
                        'faucibus': Union3<String, double, bool>.in2(
                          0.00801958133482783,
                        ),
                        'aliquam': Union3<String, double, bool>.in2(
                          0.30802742881362666,
                        ),
                        'fermentum': Union3<String, double, bool>.in1('sed'),
                        'mus': Union3<String, double, bool>.in1('platea'),
                        'ultricies': Union3<String, double, bool>.in1('dis'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'magnis'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('habitant'),
                                id: 'magnis',
                                likes: 0.11875330551029961,
                                tags: <String>['parturient'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('commodo'),
                                id: 'odio',
                                likes: 0.3239135702300455,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('quisque'),
                                id: 'ullamcorper',
                                likes: 0.32891180972435896,
                                tags: <String>[
                                  'sit',
                                  'condimentum',
                                  'convallis',
                                  'molestie',
                                  'leo',
                                  'sed',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('ligula'),
                                id: 'est',
                                likes: 0.484130590877656,
                                tags: <String>[
                                  'pellentesque',
                                  'condimentum',
                                  'diam',
                                  'nisl',
                                  'sollicitudin',
                                  'quisque',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('proin'),
                                id: 'viverra',
                                likes: 0.21263005455541173,
                                tags: <String>[
                                  'eu',
                                  'augue',
                                  'mattis',
                                  'penatibus',
                                  'urna',
                                  'senectus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('pulvinar'),
                                id: 'parturient',
                                likes: 0.02679983508319439,
                                tags: <String>[
                                  'faucibus',
                                  'leo',
                                  'condimentum',
                                  'tristique',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'adipiscing': Union3<String, double, bool>.in2(
                          0.8700662158386981,
                        ),
                        'morbi': Union3<String, double, bool>.in1('quam'),
                        'suscipit': Union3<String, double, bool>.in2(
                          0.3775945024711205,
                        ),
                        'vivamus': Union3<String, double, bool>.in1('netus'),
                        'sollicitudin': Union3<String, double, bool>.in2(
                          0.4852024629923338,
                        ),
                      }.lock,
                      profile: (avatar: Defined('venenatis'), name: 'tempor'),
                    ),
                  ),
                  (
                    posts:
                        <
                              ({
                                Union2<
                                  String,
                                  ({IList<String> media, String text})
                                >
                                content,
                                String id,
                                double likes,
                                IList<String> tags,
                              })
                            >[
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('diam'),
                                id: 'quis',
                                likes: 0.15553963381820357,
                                tags: <String>[
                                  'fames',
                                  'tristique',
                                  'commodo',
                                  'curabitur',
                                  'duis',
                                  'mattis',
                                  'fusce',
                                  'penatibus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('egestas'),
                                id: 'fames',
                                likes: 0.6772581445712291,
                                tags: <String>['vivamus'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('iaculis'),
                                id: 'vulputate',
                                likes: 0.7539938083016358,
                                tags: <String>[].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('consectetur'),
                                id: 'enim',
                                likes: 0.3653848138308199,
                                tags: <String>[
                                  'dis',
                                  'fames',
                                  'senectus',
                                  'dictum',
                                  'pellentesque',
                                  'ridiculus',
                                  'sollicitudin',
                                  'aenean',
                                  'augue',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('senectus'),
                                id: 'molestie',
                                likes: 0.5954276312552929,
                                tags: <String>[
                                  'pellentesque',
                                  'nulla',
                                  'luctus',
                                ].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('aenean'),
                                id: 'et',
                                likes: 0.8749077395990994,
                                tags: <String>['habitant'].lock,
                              ),
                              (
                                content:
                                    Union2<
                                      String,
                                      ({IList<String> media, String text})
                                    >.in1('feugiat'),
                                id: 'integer',
                                likes: 0.8656665829953554,
                                tags: <String>[
                                  'varius',
                                  'congue',
                                  'eleifend',
                                ].lock,
                              ),
                            ]
                            .lock,
                    user: (
                      preferences: <String, Union3<String, double, bool>>{
                        'vulputate': Union3<String, double, bool>.in2(
                          0.6077893318754677,
                        ),
                        'nascetur': Union3<String, double, bool>.in1('tempus'),
                        'fermentum': Union3<String, double, bool>.in1('auctor'),
                        'quisque': Union3<String, double, bool>.in2(
                          0.9526094255618561,
                        ),
                        'mauris': Union3<String, double, bool>.in1('amet'),
                      }.lock,
                      profile: (avatar: Undefined(), name: 'nec'),
                    ),
                  ),
                ]
                .lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery121.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery121.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query122', () async {
    final datas = <tasksQuery122.Query122Args>[
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({$string$number$boolean primitive}),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    $primitive$object$array type,
                  })
                >{
                  'consequat': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'dictumst': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'lectus': 'tortor',
                            'penatibus': 'ipsum',
                            'neque': 'felis',
                            'nullam': 'accumsan',
                            'lectus': 'interdum',
                            'cras': 'sagittis',
                            'platea': 'cras',
                          }.lock,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'sagittis': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$stringMember,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'convallis': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'massa': 'massa',
                            'libero': 'lacus',
                            'phasellus': 'posuere',
                          }.lock,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'ultricies': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((fields: <String, String>{}.lock)),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'egestas': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{'dui': 'natoque'}.lock,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'ipsum': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$stringMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                }
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({$string$number$boolean primitive}),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    $primitive$object$array type,
                  })
                >{
                  'congue': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$stringMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'nullam': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'venenatis': 'egestas',
                            'risus': 'fusce',
                            'quam': 'facilisis',
                            'et': 'fermentum',
                            'sollicitudin': 'vestibulum',
                            'blandit': 'natoque',
                            'aliquet': 'cum',
                            'duis': 'a',
                          }.lock,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'pellentesque': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$stringMember,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'tempor': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'magna': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'mattis': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$stringMember,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                }
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({$string$number$boolean primitive}),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    $primitive$object$array type,
                  })
                >{}
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({$string$number$boolean primitive}),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    $primitive$object$array type,
                  })
                >{
                  'adipiscing': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$stringMember,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'sit': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'sodales': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'curabitur': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{'metus': 'gravida'}.lock,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'dapibus': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'tincidunt': 'ullamcorper',
                            'proin': 'habitasse',
                            'elit': 'eu',
                          }.lock,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'augue': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$stringMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                }
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({$string$number$boolean primitive}),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    $primitive$object$array type,
                  })
                >{
                  'laoreet': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$stringMember,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'orci': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'congue': 'consequat',
                            'nam': 'a',
                            'dignissim': 'hac',
                            'bibendum': 'volutpat',
                            'magnis': 'sociis',
                            'amet': 'donec',
                            'scelerisque': 'aliquam',
                            'accumsan': 'rhoncus',
                          }.lock,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'parturient': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'vivamus': 'quisque',
                            'nullam': 'tristique',
                            'lectus': 'lorem',
                            'erat': 'placerat',
                            'proin': 'lectus',
                          }.lock,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                }
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({$string$number$boolean primitive}),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    $primitive$object$array type,
                  })
                >{
                  'velit': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((fields: <String, String>{}.lock)),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'mi': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'congue': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'gravida': 'tristique',
                            'luctus': 'sapien',
                            'urna': 'egestas',
                            'metus': 'platea',
                            'id': 'vitae',
                            'gravida': 'vulputate',
                            'euismod': 'dictumst',
                            'libero': 'ante',
                            'fusce': 'arcu',
                          }.lock,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'porttitor': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'iaculis': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                }
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({$string$number$boolean primitive}),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    $primitive$object$array type,
                  })
                >{}
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({$string$number$boolean primitive}),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    $primitive$object$array type,
                  })
                >{
                  'natoque': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'justo': 'non',
                            'facilisi': 'proin',
                            'laoreet': 'iaculis',
                            'cum': 'enim',
                            'sit': 'felis',
                            'cum': 'commodo',
                          }.lock,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'hac': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'nibh': 'a',
                            'sagittis': 'vestibulum',
                            'elementum': 'leo',
                            'sodales': 'iaculis',
                          }.lock,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'lectus': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'rhoncus': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'posuere': 'facilisis',
                            'sapien': 'justo',
                            'lectus': 'euismod',
                            'eu': 'porta',
                          }.lock,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'mattis': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{'habitant': 'ac'}.lock,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'fermentum': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$stringMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'ridiculus': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$stringMember,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                }
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({$string$number$boolean primitive}),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    $primitive$object$array type,
                  })
                >{
                  'erat': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'mattis': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'aliquam': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'luctus': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'morbi': 'lorem',
                            'praesent': 'enim',
                            'duis': 'massa',
                            'tristique': 'arcu',
                          }.lock,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'facilisi': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'ultrices': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'venenatis': 'faucibus',
                            'maecenas': 'nam',
                            'erat': 'viverra',
                            'ligula': 'fermentum',
                            'sociis': 'dui',
                            'cum': 'dui',
                          }.lock,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'blandit': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$stringMember,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'suscipit': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'dapibus': 'mattis',
                            'integer': 'posuere',
                          }.lock,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                }
                .lock,
      ),
      (
        i:
            <
                  String,
                  ({
                    bool required,
                    Union3<
                      ({$string$number$boolean primitive}),
                      ({IMap<String, String> fields}),
                      ({String elementType})
                    >
                    schema,
                    $primitive$object$array type,
                  })
                >{
                  'rhoncus': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'eget': 'consequat',
                            'tempor': 'duis',
                            'magnis': 'vitae',
                          }.lock,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'justo': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$numberMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'nec': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{'ante': 'aliquet'}.lock,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'fames': (
                    required: false,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{
                            'leo': 'in',
                            'molestie': 'nibh',
                            'hac': 'pharetra',
                            'iaculis': 'eu',
                          }.lock,
                        )),
                    type: $primitive$object$array.$objectMember,
                  ),
                  'mattis': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in1((
                          primitive: $string$number$boolean.$stringMember,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                  'convallis': (
                    required: true,
                    schema:
                        Union3<
                          ({$string$number$boolean primitive}),
                          ({IMap<String, String> fields}),
                          ({String elementType})
                        >.in2((
                          fields: <String, String>{'auctor': 'tincidunt'}.lock,
                        )),
                    type: $primitive$object$array.$primitiveMember,
                  ),
                }
                .lock,
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery122.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery122.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query123', () async {
    final datas = <tasksQuery123.Query123Args>[
      (
        i:
            Union3<
              ({
                String content,
                Optional<({bool bold, $red$blue$green color, bool italic})>
                formatting,
                $text type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $image type,
                String url,
              }),
              ({IList<String> items, bool ordered, $list type})
            >.in2((
              alt: Defined('feugiat'),
              dimensions: (
                height: 0.03950970623756467,
                width: 0.40745609846316333,
              ),
              type: $image(),
              url: 'mi',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<({bool bold, $red$blue$green color, bool italic})>
                formatting,
                $text type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $image type,
                String url,
              }),
              ({IList<String> items, bool ordered, $list type})
            >.in2((
              alt: Undefined(),
              dimensions: (
                height: 0.8825535935226244,
                width: 0.8116459190773024,
              ),
              type: $image(),
              url: 'sociis',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<({bool bold, $red$blue$green color, bool italic})>
                formatting,
                $text type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $image type,
                String url,
              }),
              ({IList<String> items, bool ordered, $list type})
            >.in1((content: 'sapien', formatting: Undefined(), type: $text())),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<({bool bold, $red$blue$green color, bool italic})>
                formatting,
                $text type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $image type,
                String url,
              }),
              ({IList<String> items, bool ordered, $list type})
            >.in2((
              alt: Undefined(),
              dimensions: (
                height: 0.7018305537916034,
                width: 0.6525440344169396,
              ),
              type: $image(),
              url: 'parturient',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<({bool bold, $red$blue$green color, bool italic})>
                formatting,
                $text type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $image type,
                String url,
              }),
              ({IList<String> items, bool ordered, $list type})
            >.in1((
              content: 'eu',
              formatting: Defined((
                bold: false,
                color: $red$blue$green.$blueMember,
                italic: false,
              )),
              type: $text(),
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<({bool bold, $red$blue$green color, bool italic})>
                formatting,
                $text type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $image type,
                String url,
              }),
              ({IList<String> items, bool ordered, $list type})
            >.in2((
              alt: Undefined(),
              dimensions: (
                height: 0.12303015017750774,
                width: 0.6116220332723854,
              ),
              type: $image(),
              url: 'mollis',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<({bool bold, $red$blue$green color, bool italic})>
                formatting,
                $text type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $image type,
                String url,
              }),
              ({IList<String> items, bool ordered, $list type})
            >.in2((
              alt: Defined('auctor'),
              dimensions: (
                height: 0.012478717454311061,
                width: 0.06806444061102124,
              ),
              type: $image(),
              url: 'nascetur',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<({bool bold, $red$blue$green color, bool italic})>
                formatting,
                $text type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $image type,
                String url,
              }),
              ({IList<String> items, bool ordered, $list type})
            >.in1((
              content: 'eleifend',
              formatting: Undefined(),
              type: $text(),
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<({bool bold, $red$blue$green color, bool italic})>
                formatting,
                $text type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $image type,
                String url,
              }),
              ({IList<String> items, bool ordered, $list type})
            >.in2((
              alt: Undefined(),
              dimensions: (
                height: 0.9614903114655262,
                width: 0.3083203484539183,
              ),
              type: $image(),
              url: 'sagittis',
            )),
      ),
      (
        i:
            Union3<
              ({
                String content,
                Optional<({bool bold, $red$blue$green color, bool italic})>
                formatting,
                $text type,
              }),
              ({
                Optional<String> alt,
                ({double height, double width}) dimensions,
                $image type,
                String url,
              }),
              ({IList<String> items, bool ordered, $list type})
            >.in2((
              alt: Undefined(),
              dimensions: (
                height: 0.905371446889073,
                width: 0.1512580426878668,
              ),
              type: $image(),
              url: 'viverra',
            )),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery123.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery123.deserialize(value1);
      expect(deserialized, data);
    }
  });

  test('query124', () async {
    final datas = <tasksQuery124.Query124Args>[
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        $get$post$put$delete method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'morbi': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'integer': Union3<String, double, bool>.in2(
                            0.6246804105638981,
                          ),
                          'dui': Union3<String, double, bool>.in1('facilisis'),
                          'urna': Union3<String, double, bool>.in1('porta'),
                          'erat': Union3<String, double, bool>.in2(
                            0.0697383696075532,
                          ),
                          'risus': Union3<String, double, bool>.in2(
                            0.6981010553455671,
                          ),
                          'non': Union3<String, double, bool>.in1('vulputate'),
                        }.lock,
                        path: 'turpis',
                        response: false,
                      ),
                      'volutpat': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'eleifend': Union3<String, double, bool>.in2(
                            0.07735084764769962,
                          ),
                          'aliquam': Union3<String, double, bool>.in2(
                            0.02783125431941691,
                          ),
                          'nunc': Union3<String, double, bool>.in2(
                            0.48917165630811055,
                          ),
                          'tincidunt': Union3<String, double, bool>.in2(
                            0.8443167503182736,
                          ),
                          'sollicitudin': Union3<String, double, bool>.in2(
                            0.4364945426197909,
                          ),
                          'congue': Union3<String, double, bool>.in2(
                            0.989988531208244,
                          ),
                          'lorem': Union3<String, double, bool>.in2(
                            0.24811318896350443,
                          ),
                          'magnis': Union3<String, double, bool>.in1('mattis'),
                        }.lock,
                        path: 'pretium',
                        response: true,
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.6373730258414819,
              window: $minute$hour$day.$hourMember,
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<String, $string$number$boolean$date> schema,
                      })
                    >{
                      'eget': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'pretium',
                                      'venenatis',
                                      'luctus',
                                      'porttitor',
                                      'condimentum',
                                      'montes',
                                    ].lock,
                                    name: 'lobortis',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'molestie',
                                      'vestibulum',
                                      'fringilla',
                                    ].lock,
                                    name: 'mus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'blandit',
                                      'integer',
                                      'platea',
                                      'tincidunt',
                                      'suspendisse',
                                      'vestibulum',
                                      'libero',
                                      'bibendum',
                                    ].lock,
                                    name: 'nulla',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'praesent',
                                      'parturient',
                                      'nullam',
                                      'magna',
                                      'amet',
                                      'commodo',
                                      'nascetur',
                                    ].lock,
                                    name: 'habitant',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'dis',
                                      'eu',
                                      'ante',
                                      'arcu',
                                      'ligula',
                                      'dignissim',
                                      'vivamus',
                                      'feugiat',
                                    ].lock,
                                    name: 'elit',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'tempus': $string$number$boolean$date.$stringMember,
                          'condimentum':
                              $string$number$boolean$date.$stringMember,
                          'diam': $string$number$boolean$date.$booleanMember,
                          'mi': $string$number$boolean$date.$numberMember,
                          'adipiscing':
                              $string$number$boolean$date.$stringMember,
                          'pretium': $string$number$boolean$date.$stringMember,
                          'aliquam': $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                      'ullamcorper': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'mauris': $string$number$boolean$date.$numberMember,
                          'vitae': $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                      'habitant': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'tincidunt',
                                      'cursus',
                                      'nisi',
                                      'mattis',
                                      'dictumst',
                                    ].lock,
                                    name: 'varius',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'pretium',
                                      'accumsan',
                                      'nam',
                                      'ante',
                                      'condimentum',
                                    ].lock,
                                    name: 'at',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'eleifend',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['augue'].lock,
                                    name: 'hendrerit',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'dis',
                                      'ut',
                                      'adipiscing',
                                      'eleifend',
                                      'sagittis',
                                      'platea',
                                    ].lock,
                                    name: 'feugiat',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'mauris',
                                      'aliquam',
                                      'consectetur',
                                      'faucibus',
                                      'cursus',
                                    ].lock,
                                    name: 'dui',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'pharetra',
                                      'parturient',
                                      'ornare',
                                      'dis',
                                      'blandit',
                                      'fames',
                                      'dapibus',
                                      'blandit',
                                    ].lock,
                                    name: 'a',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'mollis': $string$number$boolean$date.$booleanMember,

                          'mus': $string$number$boolean$date.$booleanMember,

                          'at': $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        $get$post$put$delete method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'ornare': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'pharetra': Union3<String, double, bool>.in2(
                            0.7342229297578315,
                          ),
                          'interdum': Union3<String, double, bool>.in1(
                            'tortor',
                          ),
                          'montes': Union3<String, double, bool>.in2(
                            0.425904706829191,
                          ),
                          'tempus': Union3<String, double, bool>.in2(
                            0.12027419481670398,
                          ),
                        }.lock,
                        path: 'consequat',
                        response: 0.5022600552127682,
                      ),
                      'enim': (
                        auth: Defined(false),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'natoque': Union3<String, double, bool>.in1('elit'),
                          'volutpat': Union3<String, double, bool>.in1('a'),
                          'imperdiet': Union3<String, double, bool>.in2(
                            0.14163874335446702,
                          ),
                          'habitant': Union3<String, double, bool>.in1(
                            'platea',
                          ),
                          'dictumst': Union3<String, double, bool>.in2(
                            0.8255867797170944,
                          ),
                          'tempus': Union3<String, double, bool>.in2(
                            0.6492831777394804,
                          ),
                          'ridiculus': Union3<String, double, bool>.in2(
                            0.44201036299297525,
                          ),
                          'a': Union3<String, double, bool>.in1('nam'),
                        }.lock,
                        path: 'porta',
                        response: 0.22115505795895907,
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.8617487864029679,
              window: $minute$hour$day.$minuteMember,
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<String, $string$number$boolean$date> schema,
                      })
                    >{
                      'potenti': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['volutpat'].lock,
                                    name: 'potenti',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'quisque': $string$number$boolean$date.$numberMember,

                          'vel': $string$number$boolean$date.$booleanMember,
                          'iaculis': $string$number$boolean$date.$stringMember,
                          'nisl': $string$number$boolean$date.$numberMember,
                          'vestibulum':
                              $string$number$boolean$date.$numberMember,
                          'id': $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                      'eros': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'ultricies',
                                      'maecenas',
                                      'montes',
                                      'imperdiet',
                                      'congue',
                                      'ac',
                                    ].lock,
                                    name: 'senectus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'lacinia',
                                      'dis',
                                      'volutpat',
                                      'quam',
                                      'felis',
                                      'nullam',
                                      'mi',
                                      'orci',
                                      'integer',
                                    ].lock,
                                    name: 'erat',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'praesent':
                              $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                      'integer': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[].lock,
                                    name: 'morbi',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'enim': $string$number$boolean$date.$numberMember,
                          'posuere': $string$number$boolean$date.$stringMember,
                          'sociis': $string$number$boolean$date.$numberMember,
                          'justo': $string$number$boolean$date.$stringMember,
                          'tellus': $string$number$boolean$date.$booleanMember,
                          'arcu': $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                      'bibendum': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[].lock,
                                    name: 'nibh',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'tincidunt',
                                      'lobortis',
                                      'vestibulum',
                                      'tellus',
                                      'praesent',
                                    ].lock,
                                    name: 'lobortis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'tellus',
                                      'id',
                                      'faucibus',
                                      'pharetra',
                                      'congue',
                                      'nullam',
                                    ].lock,
                                    name: 'sodales',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'ultrices',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'praesent',
                                      'varius',
                                      'ac',
                                      'tempus',
                                      'duis',
                                      'eleifend',
                                      'curabitur',
                                      'volutpat',
                                      'varius',
                                    ].lock,
                                    name: 'sagittis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'felis',
                                      'mus',
                                      'nunc',
                                      'varius',
                                      'vulputate',
                                      'sed',
                                      'curabitur',
                                      'scelerisque',
                                      'sociis',
                                    ].lock,
                                    name: 'ut',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'augue',
                                      'leo',
                                      'libero',
                                    ].lock,
                                    name: 'morbi',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'fames',
                                      'euismod',
                                      'amet',
                                      'platea',
                                    ].lock,
                                    name: 'erat',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['augue'].lock,
                                    name: 'lacus',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'vitae': $string$number$boolean$date.$numberMember,
                          'sem': $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                      'ultricies': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'metus',
                                      'facilisi',
                                      'dis',
                                      'laoreet',
                                      'justo',
                                      'curabitur',
                                      'duis',
                                      'enim',
                                    ].lock,
                                    name: 'lectus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'vivamus',
                                      'dignissim',
                                      'luctus',
                                      'ridiculus',
                                      'tempus',
                                      'in',
                                    ].lock,
                                    name: 'eget',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'ultrices',
                                      'leo',
                                      'ornare',
                                      'aliquam',
                                      'iaculis',
                                    ].lock,
                                    name: 'in',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'sollicitudin',
                                      'eros',
                                      'odio',
                                      'nisi',
                                      'et',
                                      'volutpat',
                                      'blandit',
                                      'risus',
                                    ].lock,
                                    name: 'maecenas',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'scelerisque',
                                      'lacinia',
                                      'erat',
                                      'tempor',
                                      'nam',
                                    ].lock,
                                    name: 'placerat',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'congue',
                                      'ante',
                                      'morbi',
                                      'dictumst',
                                      'placerat',
                                      'odio',
                                    ].lock,
                                    name: 'lacus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'dui',
                                      'at',
                                      'semper',
                                      'proin',
                                      'ac',
                                    ].lock,
                                    name: 'elit',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['dis', 'massa'].lock,
                                    name: 'consectetur',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'egestas',
                                      'sed',
                                      'risus',
                                      'orci',
                                      'consequat',
                                    ].lock,
                                    name: 'porta',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'tincidunt':
                              $string$number$boolean$date.$numberMember,
                          'sociis': $string$number$boolean$date.$stringMember,
                          'suscipit':
                              $string$number$boolean$date.$booleanMember,
                          'erat': $string$number$boolean$date.$booleanMember,
                          'elementum':
                              $string$number$boolean$date.$stringMember,
                          'tempor': $string$number$boolean$date.$booleanMember,
                          'quis': $string$number$boolean$date.$booleanMember,
                          'nullam': $string$number$boolean$date.$booleanMember,
                          'convallis':
                              $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                      'hac': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['tellus'].lock,
                                    name: 'potenti',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'augue',
                                      'hac',
                                      'varius',
                                    ].lock,
                                    name: 'pulvinar',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'netus': $string$number$boolean$date.$stringMember,
                          'habitasse':
                              $string$number$boolean$date.$stringMember,
                          'eleifend':
                              $string$number$boolean$date.$booleanMember,
                          'parturient':
                              $string$number$boolean$date.$booleanMember,
                          'convallis':
                              $string$number$boolean$date.$stringMember,
                          'risus': $string$number$boolean$date.$stringMember,
                          'vivamus': $string$number$boolean$date.$stringMember,
                          'ante': $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                      'tincidunt': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'at',
                                      'cum',
                                      'metus',
                                      'at',
                                      'fermentum',
                                    ].lock,
                                    name: 'viverra',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'bibendum',
                                      'parturient',
                                      'consequat',
                                      'porta',
                                      'aliquam',
                                    ].lock,
                                    name: 'dignissim',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['fermentum'].lock,
                                    name: 'platea',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'cum',
                                      'mi',
                                      'nascetur',
                                    ].lock,
                                    name: 'netus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'nisi',
                                      'varius',
                                      'tortor',
                                      'sem',
                                    ].lock,
                                    name: 'amet',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'consequat',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'justo',
                                      'aliquam',
                                      'euismod',
                                      'habitasse',
                                      'cum',
                                      'facilisi',
                                      'bibendum',
                                      'lacus',
                                    ].lock,
                                    name: 'adipiscing',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['leo', 'augue'].lock,
                                    name: 'vivamus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'libero',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'condimentum':
                              $string$number$boolean$date.$booleanMember,
                          'vel': $string$number$boolean$date.$booleanMember,
                          'cras': $string$number$boolean$date.$booleanMember,
                          'nullam': $string$number$boolean$date.$booleanMember,
                          'penatibus':
                              $string$number$boolean$date.$stringMember,
                          'consectetur':
                              $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        $get$post$put$delete method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'venenatis': (
                        auth: Defined(false),
                        method: $get$post$put$delete.$PUTMember,
                        params: <String, Union3<String, double, bool>>{
                          'vulputate': Union3<String, double, bool>.in2(
                            0.18515035066838592,
                          ),
                          'lorem': Union3<String, double, bool>.in1('gravida'),
                        }.lock,
                        path: 'id',
                        response: 'quam',
                      ),
                      'lacinia': (
                        auth: Defined(false),
                        method: $get$post$put$delete.$PUTMember,
                        params: <String, Union3<String, double, bool>>{
                          'sodales': Union3<String, double, bool>.in1('nibh'),
                          'ipsum': Union3<String, double, bool>.in2(
                            0.5039927201762511,
                          ),
                          'felis': Union3<String, double, bool>.in1('habitant'),
                          'etiam': Union3<String, double, bool>.in2(
                            0.5612593151485773,
                          ),
                          'turpis': Union3<String, double, bool>.in2(
                            0.33652612230414525,
                          ),
                          'nec': Union3<String, double, bool>.in2(
                            0.9847410793423168,
                          ),
                          'vel': Union3<String, double, bool>.in1('pharetra'),
                        }.lock,
                        path: 'rhoncus',
                        response: false,
                      ),
                      'habitasse': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$PUTMember,
                        params: <String, Union3<String, double, bool>>{
                          'augue': Union3<String, double, bool>.in1('ipsum'),
                          'ut': Union3<String, double, bool>.in2(
                            0.7604708380487062,
                          ),
                          'consequat': Union3<String, double, bool>.in1(
                            'tristique',
                          ),
                          'netus': Union3<String, double, bool>.in1(
                            'dignissim',
                          ),
                          'blandit': Union3<String, double, bool>.in1(
                            'consequat',
                          ),
                          'lobortis': Union3<String, double, bool>.in2(
                            0.8284233853468778,
                          ),
                          'elit': Union3<String, double, bool>.in2(
                            0.3084285561918225,
                          ),
                          'rhoncus': Union3<String, double, bool>.in1('odio'),
                        }.lock,
                        path: 'sociis',
                        response: 0.09879338394313353,
                      ),
                      'sollicitudin': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'gravida': Union3<String, double, bool>.in2(
                            0.13577651363061305,
                          ),
                          'faucibus': Union3<String, double, bool>.in1(
                            'elementum',
                          ),
                          'interdum': Union3<String, double, bool>.in2(
                            0.49688414027720806,
                          ),
                          'gravida': Union3<String, double, bool>.in1('etiam'),
                          'lacinia': Union3<String, double, bool>.in2(
                            0.7735371576790478,
                          ),
                        }.lock,
                        path: 'senectus',
                        response: 0.3749104952507596,
                      ),
                      'augue': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$PUTMember,
                        params: <String, Union3<String, double, bool>>{
                          'proin': Union3<String, double, bool>.in2(
                            0.2463381817600354,
                          ),
                          'dignissim': Union3<String, double, bool>.in2(
                            0.7279839758518113,
                          ),
                          'ipsum': Union3<String, double, bool>.in2(
                            0.18586782366377608,
                          ),
                        }.lock,
                        path: 'dui',
                        response: false,
                      ),
                      'habitant': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'montes': Union3<String, double, bool>.in1('feugiat'),
                          'metus': Union3<String, double, bool>.in2(
                            0.27376617642112544,
                          ),
                          'ipsum': Union3<String, double, bool>.in1('dictumst'),
                          'sollicitudin': Union3<String, double, bool>.in2(
                            0.8813164944802985,
                          ),
                          'ultricies': Union3<String, double, bool>.in1(
                            'lobortis',
                          ),
                          'in': Union3<String, double, bool>.in2(
                            0.694090980316242,
                          ),
                        }.lock,
                        path: 'congue',
                        response: 699959,
                      ),
                      'malesuada': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$PUTMember,
                        params: <String, Union3<String, double, bool>>{
                          'tempor': Union3<String, double, bool>.in2(
                            0.19337056554821797,
                          ),
                          'auctor': Union3<String, double, bool>.in2(
                            0.4459984246250457,
                          ),
                          'libero': Union3<String, double, bool>.in1('justo'),
                          'convallis': Union3<String, double, bool>.in2(
                            0.8108777801410266,
                          ),
                        }.lock,
                        path: 'habitant',
                        response: 0.24647157571146738,
                      ),
                      'montes': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'posuere': Union3<String, double, bool>.in2(
                            0.7523764561668164,
                          ),
                          'aenean': Union3<String, double, bool>.in1('euismod'),
                          'fames': Union3<String, double, bool>.in1('eleifend'),
                          'tortor': Union3<String, double, bool>.in2(
                            0.514850781101678,
                          ),
                          'pharetra': Union3<String, double, bool>.in2(
                            0.14794262348953346,
                          ),
                          'quisque': Union3<String, double, bool>.in2(
                            0.06196508942474066,
                          ),
                          'mus': Union3<String, double, bool>.in1('porta'),
                          'ultricies': Union3<String, double, bool>.in2(
                            0.3409980524864793,
                          ),
                          'senectus': Union3<String, double, bool>.in2(
                            0.7797099343238956,
                          ),
                        }.lock,
                        path: 'justo',
                        response: 'duis',
                      ),
                      'aenean': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'nisi': Union3<String, double, bool>.in1('interdum'),
                          'dictum': Union3<String, double, bool>.in1('dictum'),
                          'mauris': Union3<String, double, bool>.in1(
                            'tristique',
                          ),
                          'donec': Union3<String, double, bool>.in2(
                            0.7092704064547213,
                          ),
                          'ligula': Union3<String, double, bool>.in2(
                            0.960095859155903,
                          ),
                          'auctor': Union3<String, double, bool>.in1('ut'),
                        }.lock,
                        path: 'diam',
                        response: 650037,
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.9187285577097377,
              window: $minute$hour$day.$minuteMember,
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<String, $string$number$boolean$date> schema,
                      })
                    >{
                      'adipiscing': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'imperdiet',
                                      'congue',
                                      'pellentesque',
                                      'tristique',
                                      'tellus',
                                    ].lock,
                                    name: 'lacinia',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'gravida': $string$number$boolean$date.$booleanMember,
                          'nullam': $string$number$boolean$date.$booleanMember,
                          'elit': $string$number$boolean$date.$booleanMember,
                          'senectus': $string$number$boolean$date.$stringMember,
                        }.lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        $get$post$put$delete method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'lobortis': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$PUTMember,
                        params: <String, Union3<String, double, bool>>{}.lock,
                        path: 'cum',
                        response: false,
                      ),
                      'lobortis': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$PUTMember,
                        params: <String, Union3<String, double, bool>>{
                          'ridiculus': Union3<String, double, bool>.in2(
                            0.3747989175404546,
                          ),
                          'nulla': Union3<String, double, bool>.in1('morbi'),
                        }.lock,
                        path: 'congue',
                        response: 498449,
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.6121170089961255,
              window: $minute$hour$day.$minuteMember,
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<String, $string$number$boolean$date> schema,
                      })
                    >{
                      'parturient': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['penatibus', 'sed'].lock,
                                    name: 'iaculis',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'gravida',
                                      'mauris',
                                      'blandit',
                                      'fames',
                                      'orci',
                                      'natoque',
                                      'nulla',
                                    ].lock,
                                    name: 'bibendum',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'vitae',
                                      'curabitur',
                                      'nisi',
                                      'sagittis',
                                      'velit',
                                      'neque',
                                      'suscipit',
                                      'vulputate',
                                      'natoque',
                                    ].lock,
                                    name: 'maecenas',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'sit',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'eu',
                                      'imperdiet',
                                      'mattis',
                                    ].lock,
                                    name: 'luctus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'nam',
                                      'bibendum',
                                      'maecenas',
                                    ].lock,
                                    name: 'dis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'duis',
                                      'risus',
                                      'posuere',
                                      'platea',
                                      'lectus',
                                      'sociis',
                                    ].lock,
                                    name: 'ornare',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'dictumst',
                                      'ligula',
                                      'orci',
                                      'mi',
                                      'sapien',
                                      'ipsum',
                                      'convallis',
                                      'id',
                                      'hac',
                                    ].lock,
                                    name: 'magna',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'pellentesque':
                              $string$number$boolean$date.$numberMember,
                          'tristique':
                              $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                      'metus': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'a',
                                      'velit',
                                      'vel',
                                      'felis',
                                      'dapibus',
                                      'odio',
                                      'nibh',
                                      'facilisi',
                                      'dictum',
                                    ].lock,
                                    name: 'nulla',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'massa',
                                      'dictum',
                                      'dictum',
                                      'nunc',
                                      'fermentum',
                                    ].lock,
                                    name: 'eu',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'mauris',
                                      'cum',
                                      'nullam',
                                      'ultricies',
                                      'pretium',
                                      'felis',
                                      'euismod',
                                      'tincidunt',
                                    ].lock,
                                    name: 'tellus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['non'].lock,
                                    name: 'id',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'mattis',
                                      'vitae',
                                      'euismod',
                                      'sociis',
                                      'fringilla',
                                    ].lock,
                                    name: 'pellentesque',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['lectus'].lock,
                                    name: 'nisi',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'pretium',
                                      'laoreet',
                                      'facilisi',
                                      'commodo',
                                    ].lock,
                                    name: 'eu',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['bibendum', 'eu'].lock,
                                    name: 'pretium',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'cum': $string$number$boolean$date.$booleanMember,
                          'congue': $string$number$boolean$date.$numberMember,
                          'vitae': $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                      'eget': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'erat',
                                      'pulvinar',
                                      'iaculis',
                                    ].lock,
                                    name: 'risus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['interdum'].lock,
                                    name: 'nullam',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'nulla': $string$number$boolean$date.$numberMember,
                          'nulla': $string$number$boolean$date.$booleanMember,
                          'purus': $string$number$boolean$date.$booleanMember,
                          'et': $string$number$boolean$date.$stringMember,
                          'tincidunt':
                              $string$number$boolean$date.$numberMember,
                          'volutpat': $string$number$boolean$date.$stringMember,
                          'aenean': $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                      'magna': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'fermentum',
                                      'nec',
                                      'diam',
                                      'tincidunt',
                                    ].lock,
                                    name: 'auctor',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'ipsum': $string$number$boolean$date.$stringMember,
                          'venenatis':
                              $string$number$boolean$date.$booleanMember,
                          'varius': $string$number$boolean$date.$numberMember,
                          'malesuada':
                              $string$number$boolean$date.$numberMember,
                          'volutpat': $string$number$boolean$date.$numberMember,
                          'massa': $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        $get$post$put$delete method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'netus': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'ligula': Union3<String, double, bool>.in1('egestas'),
                        }.lock,
                        path: 'dui',
                        response: false,
                      ),
                      'venenatis': (
                        auth: Defined(false),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'non': Union3<String, double, bool>.in2(
                            0.690545941789356,
                          ),
                          'tellus': Union3<String, double, bool>.in2(
                            0.48322415828744714,
                          ),
                          'magnis': Union3<String, double, bool>.in1('dictum'),
                          'pulvinar': Union3<String, double, bool>.in2(
                            0.48615662471569554,
                          ),
                          'gravida': Union3<String, double, bool>.in2(
                            0.38115725105263276,
                          ),
                        }.lock,
                        path: 'sodales',
                        response: 166770,
                      ),
                      'nullam': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'erat': Union3<String, double, bool>.in2(
                            0.059120234276913264,
                          ),
                          'tempor': Union3<String, double, bool>.in1(
                            'molestie',
                          ),
                          'suspendisse': Union3<String, double, bool>.in1(
                            'ultricies',
                          ),
                          'malesuada': Union3<String, double, bool>.in2(
                            0.25809002494958444,
                          ),
                        }.lock,
                        path: 'suspendisse',
                        response: false,
                      ),
                      'interdum': (
                        auth: Defined(false),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'tristique': Union3<String, double, bool>.in1(
                            'viverra',
                          ),
                          'cursus': Union3<String, double, bool>.in1(
                            'senectus',
                          ),
                          'et': Union3<String, double, bool>.in2(
                            0.8909292223451766,
                          ),
                          'sodales': Union3<String, double, bool>.in1('auctor'),
                          'ultrices': Union3<String, double, bool>.in2(
                            0.8101745855172349,
                          ),
                          'tempor': Union3<String, double, bool>.in2(
                            0.5157284344409417,
                          ),
                          'vitae': Union3<String, double, bool>.in2(
                            0.7473519269157697,
                          ),
                        }.lock,
                        path: 'habitasse',
                        response: 'tellus',
                      ),
                      'hac': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'sapien': Union3<String, double, bool>.in1('proin'),
                        }.lock,
                        path: 'natoque',
                        response: 0.6681802104111525,
                      ),
                      'mollis': (
                        auth: Defined(false),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'accumsan': Union3<String, double, bool>.in2(
                            0.3481722718746002,
                          ),
                          'cursus': Union3<String, double, bool>.in2(
                            0.2685829733314372,
                          ),
                          'facilisis': Union3<String, double, bool>.in2(
                            0.025777947181851335,
                          ),
                          'feugiat': Union3<String, double, bool>.in1(
                            'interdum',
                          ),
                          'commodo': Union3<String, double, bool>.in2(
                            0.38175571829625365,
                          ),
                          'ac': Union3<String, double, bool>.in2(
                            0.9849780567165882,
                          ),
                        }.lock,
                        path: 'sociis',
                        response: 'pretium',
                      ),
                      'nulla': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'luctus': Union3<String, double, bool>.in1('lacus'),
                          'viverra': Union3<String, double, bool>.in2(
                            0.17825543163362245,
                          ),
                          'commodo': Union3<String, double, bool>.in2(
                            0.19389006263248487,
                          ),
                          'natoque': Union3<String, double, bool>.in1(
                            'laoreet',
                          ),
                          'hac': Union3<String, double, bool>.in1('aenean'),
                        }.lock,
                        path: 'mi',
                        response: 'lectus',
                      ),
                      'diam': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'sodales': Union3<String, double, bool>.in2(
                            0.7685651829632346,
                          ),
                          'nec': Union3<String, double, bool>.in2(
                            0.5010072002593929,
                          ),
                          'gravida': Union3<String, double, bool>.in1('massa'),
                          'elementum': Union3<String, double, bool>.in1(
                            'congue',
                          ),
                          'praesent': Union3<String, double, bool>.in1(
                            'sapien',
                          ),
                          'ante': Union3<String, double, bool>.in2(
                            0.8303786479689235,
                          ),
                          'sed': Union3<String, double, bool>.in2(
                            0.20794158260577755,
                          ),
                          'ridiculus': Union3<String, double, bool>.in2(
                            0.8628976963669004,
                          ),
                        }.lock,
                        path: 'lectus',
                        response: 206174,
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.43192065034659766,
              window: $minute$hour$day.$minuteMember,
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<String, $string$number$boolean$date> schema,
                      })
                    >{
                      'malesuada': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['consequat'].lock,
                                    name: 'ante',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'ullamcorper',
                                      'felis',
                                      'cum',
                                      'nascetur',
                                    ].lock,
                                    name: 'pharetra',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'a',
                                      'condimentum',
                                      'commodo',
                                      'vulputate',
                                      'amet',
                                      'nisi',
                                      'hac',
                                      'adipiscing',
                                      'commodo',
                                    ].lock,
                                    name: 'arcu',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['ut', 'magnis'].lock,
                                    name: 'mauris',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'in': $string$number$boolean$date.$stringMember,
                        }.lock,
                      ),
                      'ipsum': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['fringilla', 'hac'].lock,
                                    name: 'accumsan',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['tristique'].lock,
                                    name: 'eu',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'posuere',
                                      'gravida',
                                      'parturient',
                                    ].lock,
                                    name: 'ipsum',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'sagittis',
                                      'nam',
                                      'bibendum',
                                      'eleifend',
                                      'non',
                                      'vivamus',
                                      'commodo',
                                    ].lock,
                                    name: 'sit',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'vel',
                                      'elementum',
                                      'justo',
                                      'fusce',
                                      'ultrices',
                                    ].lock,
                                    name: 'condimentum',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'habitant',
                                      'sagittis',
                                      'tincidunt',
                                      'mi',
                                      'suspendisse',
                                      'pretium',
                                      'turpis',
                                      'aliquet',
                                      'dignissim',
                                    ].lock,
                                    name: 'et',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'eros',
                                      'luctus',
                                      'nec',
                                      'pharetra',
                                      'aenean',
                                      'hac',
                                      'vitae',
                                      'senectus',
                                      'dignissim',
                                    ].lock,
                                    name: 'eleifend',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'integer',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'hac',
                                      'netus',
                                      'adipiscing',
                                      'consequat',
                                      'praesent',
                                      'mauris',
                                      'morbi',
                                      'aliquet',
                                    ].lock,
                                    name: 'nisi',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'blandit': $string$number$boolean$date.$numberMember,
                          'nisl': $string$number$boolean$date.$stringMember,
                        }.lock,
                      ),
                      'ultricies': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'libero',
                                      'tellus',
                                      'ultricies',
                                      'potenti',
                                      'facilisi',
                                      'odio',
                                    ].lock,
                                    name: 'fames',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'pretium': $string$number$boolean$date.$booleanMember,
                          'sociis': $string$number$boolean$date.$booleanMember,
                          'lobortis':
                              $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                      'iaculis': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['eleifend', 'magnis'].lock,
                                    name: 'consequat',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'natoque',
                                      'ornare',
                                      'commodo',
                                      'mus',
                                      'eu',
                                      'erat',
                                    ].lock,
                                    name: 'cum',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'luctus',
                                      'varius',
                                      'cras',
                                      'congue',
                                      'tortor',
                                      'proin',
                                      'senectus',
                                      'donec',
                                      'lobortis',
                                    ].lock,
                                    name: 'enim',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['dictum'].lock,
                                    name: 'fermentum',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'facilisis',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['ante'].lock,
                                    name: 'vivamus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'sapien',
                                      'egestas',
                                      'bibendum',
                                      'montes',
                                      'euismod',
                                      'odio',
                                    ].lock,
                                    name: 'mollis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'ullamcorper',
                                      'nulla',
                                      'faucibus',
                                      'ipsum',
                                      'montes',
                                      'dictum',
                                      'nunc',
                                      'orci',
                                    ].lock,
                                    name: 'curabitur',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'mus': $string$number$boolean$date.$booleanMember,
                          'ridiculus':
                              $string$number$boolean$date.$booleanMember,
                          'quisque': $string$number$boolean$date.$booleanMember,
                          'quisque': $string$number$boolean$date.$stringMember,
                          'suscipit': $string$number$boolean$date.$numberMember,
                          'dapibus': $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                      'vivamus': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'facilisi',
                                      'lobortis',
                                      'senectus',
                                      'mus',
                                    ].lock,
                                    name: 'eleifend',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'faucibus',
                                      'sollicitudin',
                                      'facilisi',
                                      'sollicitudin',
                                    ].lock,
                                    name: 'velit',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['dignissim'].lock,
                                    name: 'sollicitudin',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'bibendum',
                                      'fusce',
                                      'lectus',
                                      'cras',
                                      'imperdiet',
                                    ].lock,
                                    name: 'nascetur',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'urna',
                                      'augue',
                                      'habitant',
                                    ].lock,
                                    name: 'nam',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'mus': $string$number$boolean$date.$numberMember,
                          'curabitur':
                              $string$number$boolean$date.$booleanMember,
                          'et': $string$number$boolean$date.$booleanMember,
                          'platea': $string$number$boolean$date.$booleanMember,
                          'penatibus':
                              $string$number$boolean$date.$stringMember,
                          'quam': $string$number$boolean$date.$stringMember,
                          'dis': $string$number$boolean$date.$numberMember,
                          'vitae': $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                      'ridiculus': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['duis', 'ultrices'].lock,
                                    name: 'consequat',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'dignissim':
                              $string$number$boolean$date.$stringMember,
                        }.lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        $get$post$put$delete method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'non': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'erat': Union3<String, double, bool>.in2(
                            0.018070797659062388,
                          ),
                          'sapien': Union3<String, double, bool>.in2(
                            0.841605957036222,
                          ),
                          'metus': Union3<String, double, bool>.in1('ante'),
                          'maecenas': Union3<String, double, bool>.in1('morbi'),
                          'semper': Union3<String, double, bool>.in2(
                            0.33171243220269486,
                          ),
                          'suspendisse': Union3<String, double, bool>.in1(
                            'egestas',
                          ),
                        }.lock,
                        path: 'imperdiet',
                        response: true,
                      ),
                      'posuere': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'etiam': Union3<String, double, bool>.in1('pulvinar'),
                          'viverra': Union3<String, double, bool>.in2(
                            0.01400446574041514,
                          ),
                          'accumsan': Union3<String, double, bool>.in1('quis'),
                        }.lock,
                        path: 'eleifend',
                        response: 752835,
                      ),
                      'metus': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$PUTMember,
                        params: <String, Union3<String, double, bool>>{
                          'porta': Union3<String, double, bool>.in2(
                            0.8707839643618555,
                          ),
                          'etiam': Union3<String, double, bool>.in2(
                            0.029349100986461152,
                          ),
                          'semper': Union3<String, double, bool>.in1('quam'),
                          'interdum': Union3<String, double, bool>.in1('nisl'),
                          'nam': Union3<String, double, bool>.in1('tortor'),
                        }.lock,
                        path: 'tempor',
                        response: 402678,
                      ),
                      'in': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'ultricies': Union3<String, double, bool>.in1(
                            'pretium',
                          ),
                          'porttitor': Union3<String, double, bool>.in2(
                            0.8160817325143169,
                          ),
                          'auctor': Union3<String, double, bool>.in2(
                            0.11584094653299115,
                          ),
                          'dictum': Union3<String, double, bool>.in1('sodales'),
                          'vestibulum': Union3<String, double, bool>.in2(
                            0.10416354973559327,
                          ),
                          'fermentum': Union3<String, double, bool>.in1(
                            'consequat',
                          ),
                        }.lock,
                        path: 'egestas',
                        response: 'lacus',
                      ),
                      'nibh': (
                        auth: Defined(false),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{}.lock,
                        path: 'eu',
                        response: 'parturient',
                      ),
                      'quis': (
                        auth: Defined(false),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'cum': Union3<String, double, bool>.in2(
                            0.7766784498619181,
                          ),
                          'quis': Union3<String, double, bool>.in2(
                            0.24472583721530594,
                          ),
                          'mauris': Union3<String, double, bool>.in2(
                            0.11306133804723495,
                          ),
                          'eget': Union3<String, double, bool>.in1('netus'),
                          'tempor': Union3<String, double, bool>.in2(
                            0.7523161213957565,
                          ),
                        }.lock,
                        path: 'id',
                        response: 312673,
                      ),
                      'fames': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'ornare': Union3<String, double, bool>.in2(
                            0.2943930999344986,
                          ),
                          'ante': Union3<String, double, bool>.in1('eu'),
                          'leo': Union3<String, double, bool>.in2(
                            0.2764160025965007,
                          ),
                          'interdum': Union3<String, double, bool>.in1(
                            'libero',
                          ),
                          'felis': Union3<String, double, bool>.in2(
                            0.4073439587141314,
                          ),
                          'sapien': Union3<String, double, bool>.in2(
                            0.2719334682836585,
                          ),
                          'quis': Union3<String, double, bool>.in2(
                            0.05262117142121503,
                          ),
                          'nascetur': Union3<String, double, bool>.in2(
                            0.4345421271993479,
                          ),
                        }.lock,
                        path: 'gravida',
                        response: 'hendrerit',
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.3240248691636042,
              window: $minute$hour$day.$minuteMember,
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<String, $string$number$boolean$date> schema,
                      })
                    >{
                      'interdum': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'metus',
                                      'enim',
                                      'enim',
                                    ].lock,
                                    name: 'consectetur',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'suscipit',
                                      'molestie',
                                    ].lock,
                                    name: 'curabitur',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'nibh',
                                      'felis',
                                      'dignissim',
                                      'ullamcorper',
                                      'natoque',
                                      'mattis',
                                    ].lock,
                                    name: 'suspendisse',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'proin',
                                      'egestas',
                                      'libero',
                                      'porta',
                                      'elit',
                                      'cras',
                                      'quisque',
                                      'tempus',
                                      'scelerisque',
                                    ].lock,
                                    name: 'elit',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'malesuada':
                              $string$number$boolean$date.$stringMember,
                          'nisi': $string$number$boolean$date.$stringMember,
                          'quis': $string$number$boolean$date.$booleanMember,
                          'in': $string$number$boolean$date.$stringMember,
                          'ut': $string$number$boolean$date.$stringMember,
                          'nam': $string$number$boolean$date.$stringMember,
                          'ligula': $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                      'potenti': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[].lock,
                                    name: 'sociis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'est',
                                      'magnis',
                                      'morbi',
                                      'nullam',
                                      'amet',
                                      'fermentum',
                                      'lectus',
                                    ].lock,
                                    name: 'est',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'mus',
                                      'tristique',
                                      'sociis',
                                      'quis',
                                      'non',
                                      'fermentum',
                                    ].lock,
                                    name: 'venenatis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'habitasse',
                                      'egestas',
                                      'est',
                                    ].lock,
                                    name: 'arcu',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'nunc',
                                      'dignissim',
                                      'scelerisque',
                                      'odio',
                                      'odio',
                                      'potenti',
                                      'curabitur',
                                    ].lock,
                                    name: 'porttitor',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'tempus',
                                      'auctor',
                                      'cum',
                                    ].lock,
                                    name: 'posuere',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'nam',
                                      'urna',
                                      'vulputate',
                                      'feugiat',
                                      'sodales',
                                      'magnis',
                                      'nascetur',
                                      'non',
                                      'feugiat',
                                    ].lock,
                                    name: 'pellentesque',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'eleifend': $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                      'euismod': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['hendrerit'].lock,
                                    name: 'euismod',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'elementum',
                                      'magnis',
                                      'erat',
                                      'sollicitudin',
                                      'scelerisque',
                                    ].lock,
                                    name: 'justo',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'nunc',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'mollis',
                                      'consequat',
                                      'sapien',
                                      'consequat',
                                      'dictumst',
                                    ].lock,
                                    name: 'diam',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{}.lock,
                      ),
                      'cum': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'fermentum',
                                      'metus',
                                      'eros',
                                      'fermentum',
                                      'purus',
                                    ].lock,
                                    name: 'ultrices',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'turpis',
                                      'habitasse',
                                      'nibh',
                                      'blandit',
                                      'diam',
                                    ].lock,
                                    name: 'luctus',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'imperdiet':
                              $string$number$boolean$date.$booleanMember,
                          'odio': $string$number$boolean$date.$numberMember,
                          'libero': $string$number$boolean$date.$stringMember,
                        }.lock,
                      ),
                      'suscipit': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[].lock,
                                    name: 'proin',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['elit', 'ante'].lock,
                                    name: 'pharetra',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'natoque',
                                      'fermentum',
                                      'natoque',
                                    ].lock,
                                    name: 'blandit',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'laoreet',
                                      'ornare',
                                      'ante',
                                      'potenti',
                                      'commodo',
                                      'tempor',
                                      'mollis',
                                      'ut',
                                    ].lock,
                                    name: 'sit',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'morbi',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'sed',
                                      'mi',
                                      'bibendum',
                                      'vel',
                                      'posuere',
                                      'sit',
                                    ].lock,
                                    name: 'eleifend',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'dictumst',
                                      'lacus',
                                      'mollis',
                                      'nascetur',
                                    ].lock,
                                    name: 'cursus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'tempus',
                                      'rhoncus',
                                      'sed',
                                      'urna',
                                      'faucibus',
                                      'cum',
                                      'viverra',
                                      'in',
                                    ].lock,
                                    name: 'leo',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'porttitor',
                                      'placerat',
                                    ].lock,
                                    name: 'imperdiet',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'suspendisse':
                              $string$number$boolean$date.$stringMember,
                          'dignissim':
                              $string$number$boolean$date.$numberMember,
                          'commodo': $string$number$boolean$date.$numberMember,
                          'justo': $string$number$boolean$date.$numberMember,
                          'magna': $string$number$boolean$date.$numberMember,
                          'tincidunt':
                              $string$number$boolean$date.$booleanMember,
                          'risus': $string$number$boolean$date.$stringMember,
                          'placerat': $string$number$boolean$date.$stringMember,
                          'habitasse':
                              $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                      'neque': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'risus',
                                      'diam',
                                      'habitant',
                                      'nec',
                                    ].lock,
                                    name: 'ac',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['a'].lock,
                                    name: 'ornare',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'pharetra',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'cursus',
                                      'dictumst',
                                      'mi',
                                      'sapien',
                                      'dapibus',
                                      'dapibus',
                                      'turpis',
                                      'pellentesque',
                                    ].lock,
                                    name: 'quisque',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'nam',
                                      'suspendisse',
                                      'proin',
                                      'magna',
                                      'auctor',
                                      'condimentum',
                                      'condimentum',
                                    ].lock,
                                    name: 'accumsan',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'tempus',
                                      'volutpat',
                                      'senectus',
                                      'gravida',
                                      'nec',
                                      'a',
                                      'hendrerit',
                                    ].lock,
                                    name: 'augue',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'pellentesque':
                              $string$number$boolean$date.$stringMember,
                        }.lock,
                      ),
                      'sodales': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'consequat',
                                      'consectetur',
                                      'facilisis',
                                      'diam',
                                      'maecenas',
                                      'aliquet',
                                      'mollis',
                                      'a',
                                      'fermentum',
                                    ].lock,
                                    name: 'tempus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'dolor',
                                      'dis',
                                      'venenatis',
                                      'montes',
                                      'libero',
                                      'mauris',
                                    ].lock,
                                    name: 'justo',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['quisque', 'aliquet'].lock,
                                    name: 'sed',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'vulputate',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'netus': $string$number$boolean$date.$stringMember,
                        }.lock,
                      ),
                      'facilisis': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[].lock,
                                    name: 'lacus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'etiam',
                                      'porta',
                                      'morbi',
                                      'pharetra',
                                      'mollis',
                                      'ullamcorper',
                                      'morbi',
                                      'praesent',
                                      'neque',
                                    ].lock,
                                    name: 'hendrerit',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'faucibus',
                                      'volutpat',
                                      'imperdiet',
                                    ].lock,
                                    name: 'et',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{}.lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        $get$post$put$delete method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'neque': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'ornare': Union3<String, double, bool>.in2(
                            0.5671394068271388,
                          ),
                          'senectus': Union3<String, double, bool>.in1('nunc'),
                          'hac': Union3<String, double, bool>.in1('et'),
                          'velit': Union3<String, double, bool>.in2(
                            0.276380190708983,
                          ),
                          'odio': Union3<String, double, bool>.in2(
                            0.0040105646678982865,
                          ),
                          'est': Union3<String, double, bool>.in2(
                            0.45351005675474365,
                          ),
                        }.lock,
                        path: 'eu',
                        response: 'diam',
                      ),
                      'congue': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$PUTMember,
                        params: <String, Union3<String, double, bool>>{
                          'sociis': Union3<String, double, bool>.in2(
                            0.9499772129781181,
                          ),
                          'non': Union3<String, double, bool>.in2(
                            0.6166680256675626,
                          ),
                          'facilisi': Union3<String, double, bool>.in1('orci'),
                          'bibendum': Union3<String, double, bool>.in1('nam'),
                          'nullam': Union3<String, double, bool>.in1(
                            'volutpat',
                          ),
                          'faucibus': Union3<String, double, bool>.in2(
                            0.055789693096231274,
                          ),
                          'vivamus': Union3<String, double, bool>.in2(
                            0.8328515329677704,
                          ),
                          'placerat': Union3<String, double, bool>.in1('netus'),
                        }.lock,
                        path: 'lobortis',
                        response: true,
                      ),
                      'libero': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'magnis': Union3<String, double, bool>.in1('egestas'),
                          'at': Union3<String, double, bool>.in2(
                            0.15011883879308863,
                          ),
                          'dignissim': Union3<String, double, bool>.in1(
                            'proin',
                          ),
                          'amet': Union3<String, double, bool>.in2(
                            0.03497124383496053,
                          ),
                          'diam': Union3<String, double, bool>.in1('vulputate'),
                          'imperdiet': Union3<String, double, bool>.in1('nam'),
                          'accumsan': Union3<String, double, bool>.in2(
                            0.6180505503462935,
                          ),
                          'luctus': Union3<String, double, bool>.in2(
                            0.9800170682265463,
                          ),
                          'duis': Union3<String, double, bool>.in1('libero'),
                        }.lock,
                        path: 'eu',
                        response: 'porta',
                      ),
                      'malesuada': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$PUTMember,
                        params: <String, Union3<String, double, bool>>{
                          'ac': Union3<String, double, bool>.in1('nunc'),
                          'varius': Union3<String, double, bool>.in1(
                            'habitant',
                          ),
                          'lobortis': Union3<String, double, bool>.in2(
                            0.3623898413627181,
                          ),
                          'nibh': Union3<String, double, bool>.in2(
                            0.8572625150454207,
                          ),
                          'sed': Union3<String, double, bool>.in2(
                            0.8455732444602002,
                          ),
                          'interdum': Union3<String, double, bool>.in1(
                            'nullam',
                          ),
                          'nisl': Union3<String, double, bool>.in2(
                            0.08816208107070922,
                          ),
                          'augue': Union3<String, double, bool>.in1(
                            'ultricies',
                          ),
                          'sapien': Union3<String, double, bool>.in1('dui'),
                        }.lock,
                        path: 'sem',
                        response: true,
                      ),
                      'orci': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'sociis': Union3<String, double, bool>.in1('quis'),
                          'accumsan': Union3<String, double, bool>.in1('in'),
                          'leo': Union3<String, double, bool>.in2(
                            0.7133305755043786,
                          ),
                          'nulla': Union3<String, double, bool>.in2(
                            0.3885164579504947,
                          ),
                          'faucibus': Union3<String, double, bool>.in1('ut'),
                          'facilisi': Union3<String, double, bool>.in2(
                            0.7848878776862513,
                          ),
                          'semper': Union3<String, double, bool>.in1('feugiat'),
                          'felis': Union3<String, double, bool>.in2(
                            0.8391995472999039,
                          ),
                          'vulputate': Union3<String, double, bool>.in1(
                            'maecenas',
                          ),
                        }.lock,
                        path: 'cras',
                        response: 'duis',
                      ),
                      'tincidunt': (
                        auth: Defined(false),
                        method: $get$post$put$delete.$PUTMember,
                        params: <String, Union3<String, double, bool>>{
                          'odio': Union3<String, double, bool>.in1('dolor'),
                          'vestibulum': Union3<String, double, bool>.in2(
                            0.8038924411871091,
                          ),
                          'mus': Union3<String, double, bool>.in2(
                            0.8798500205611238,
                          ),
                          'interdum': Union3<String, double, bool>.in1('erat'),
                          'eleifend': Union3<String, double, bool>.in2(
                            0.17584115127181477,
                          ),
                        }.lock,
                        path: 'est',
                        response: 0.381404465671184,
                      ),
                      'orci': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{}.lock,
                        path: 'nunc',
                        response: 0.7922557461251128,
                      ),
                      'hac': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{}.lock,
                        path: 'augue',
                        response: 563586,
                      ),
                      'convallis': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'netus': Union3<String, double, bool>.in1('nam'),
                          'suscipit': Union3<String, double, bool>.in1(
                            'vestibulum',
                          ),
                          'dolor': Union3<String, double, bool>.in1('nisi'),
                          'tincidunt': Union3<String, double, bool>.in2(
                            0.8276192070996771,
                          ),
                          'nullam': Union3<String, double, bool>.in1('justo'),
                          'iaculis': Union3<String, double, bool>.in1(
                            'consectetur',
                          ),
                          'sollicitudin': Union3<String, double, bool>.in2(
                            0.08568189675694693,
                          ),
                          'curabitur': Union3<String, double, bool>.in1(
                            'commodo',
                          ),
                        }.lock,
                        path: 'montes',
                        response: 'libero',
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.2773834523671487,
              window: $minute$hour$day.$hourMember,
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<String, $string$number$boolean$date> schema,
                      })
                    >{
                      'venenatis': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'nibh',
                                      'ridiculus',
                                      'vitae',
                                      'blandit',
                                      'purus',
                                      'dapibus',
                                      'magnis',
                                      'venenatis',
                                      'consequat',
                                    ].lock,
                                    name: 'pretium',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'enim',
                                      'suspendisse',
                                      'suscipit',
                                      'massa',
                                      'et',
                                      'neque',
                                      'fermentum',
                                      'accumsan',
                                      'porttitor',
                                    ].lock,
                                    name: 'suspendisse',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'augue',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'etiam',
                                      'senectus',
                                      'fusce',
                                    ].lock,
                                    name: 'montes',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'posuere',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'elementum',
                                      'non',
                                      'vivamus',
                                      'varius',
                                    ].lock,
                                    name: 'donec',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'amet',
                                      'ut',
                                      'lobortis',
                                      'vestibulum',
                                      'penatibus',
                                    ].lock,
                                    name: 'nulla',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{}.lock,
                      ),
                      'vel': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'posuere',
                                      'sollicitudin',
                                      'lobortis',
                                      'condimentum',
                                      'elementum',
                                      'augue',
                                    ].lock,
                                    name: 'justo',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'posuere': $string$number$boolean$date.$stringMember,
                          'imperdiet':
                              $string$number$boolean$date.$booleanMember,
                          'luctus': $string$number$boolean$date.$numberMember,
                          'ornare': $string$number$boolean$date.$booleanMember,
                          'dui': $string$number$boolean$date.$booleanMember,
                          'nec': $string$number$boolean$date.$stringMember,
                          'laoreet': $string$number$boolean$date.$numberMember,
                          'cras': $string$number$boolean$date.$stringMember,
                          'proin': $string$number$boolean$date.$stringMember,
                        }.lock,
                      ),
                      'dictum': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[].lock,
                                    name: 'pulvinar',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'cras': $string$number$boolean$date.$booleanMember,
                          'phasellus':
                              $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        $get$post$put$delete method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'senectus': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'porta': Union3<String, double, bool>.in1('a'),
                          'bibendum': Union3<String, double, bool>.in2(
                            0.786029654168799,
                          ),
                          'semper': Union3<String, double, bool>.in2(
                            0.10097921139738308,
                          ),
                          'fames': Union3<String, double, bool>.in2(
                            0.8665052081450383,
                          ),
                          'feugiat': Union3<String, double, bool>.in2(
                            0.5945996077950236,
                          ),
                          'lacus': Union3<String, double, bool>.in2(
                            0.22852391649998127,
                          ),
                          'tempus': Union3<String, double, bool>.in2(
                            0.5060353431910741,
                          ),
                          'posuere': Union3<String, double, bool>.in2(
                            0.5883055431131962,
                          ),
                          'diam': Union3<String, double, bool>.in2(
                            0.24480535943330883,
                          ),
                        }.lock,
                        path: 'purus',
                        response: 0.2151114341153989,
                      ),
                      'in': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'in': Union3<String, double, bool>.in2(
                            0.4228617741590788,
                          ),
                          'varius': Union3<String, double, bool>.in1(
                            'ullamcorper',
                          ),
                          'porttitor': Union3<String, double, bool>.in1('urna'),
                          'praesent': Union3<String, double, bool>.in1(
                            'lacinia',
                          ),
                          'pretium': Union3<String, double, bool>.in1(
                            'parturient',
                          ),
                          'nibh': Union3<String, double, bool>.in1('massa'),
                          'lobortis': Union3<String, double, bool>.in2(
                            0.9922775311344857,
                          ),
                          'eleifend': Union3<String, double, bool>.in2(
                            0.7097179230915844,
                          ),
                        }.lock,
                        path: 'sem',
                        response: true,
                      ),
                      'magna': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'eros': Union3<String, double, bool>.in1('tincidunt'),
                          'natoque': Union3<String, double, bool>.in1(
                            'vulputate',
                          ),
                        }.lock,
                        path: 'hac',
                        response: true,
                      ),
                      'quam': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'felis': Union3<String, double, bool>.in2(
                            0.5292393928664202,
                          ),
                          'mattis': Union3<String, double, bool>.in1('at'),
                          'nascetur': Union3<String, double, bool>.in2(
                            0.40463778907023684,
                          ),
                          'vel': Union3<String, double, bool>.in1('lorem'),
                          'ut': Union3<String, double, bool>.in1('natoque'),
                          'aliquet': Union3<String, double, bool>.in1(
                            'facilisi',
                          ),
                          'parturient': Union3<String, double, bool>.in2(
                            0.7758745378190476,
                          ),
                        }.lock,
                        path: 'penatibus',
                        response: 'egestas',
                      ),
                      'id': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'facilisis': Union3<String, double, bool>.in2(
                            0.32195648306267,
                          ),
                          'blandit': Union3<String, double, bool>.in2(
                            0.39619489970248034,
                          ),
                          'feugiat': Union3<String, double, bool>.in1('a'),
                          'phasellus': Union3<String, double, bool>.in2(
                            0.5508421523194755,
                          ),
                          'duis': Union3<String, double, bool>.in2(
                            0.9244275886826674,
                          ),
                          'mollis': Union3<String, double, bool>.in2(
                            0.920683805121726,
                          ),
                          'nisi': Union3<String, double, bool>.in1('leo'),
                        }.lock,
                        path: 'nam',
                        response: true,
                      ),
                      'condimentum': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'posuere': Union3<String, double, bool>.in1(
                            'imperdiet',
                          ),
                          'ridiculus': Union3<String, double, bool>.in2(
                            0.9916158866757513,
                          ),
                          'fermentum': Union3<String, double, bool>.in1(
                            'consectetur',
                          ),
                          'magna': Union3<String, double, bool>.in2(
                            0.3414330207885967,
                          ),
                          'vulputate': Union3<String, double, bool>.in2(
                            0.009901269774381105,
                          ),
                        }.lock,
                        path: 'cursus',
                        response: 'ligula',
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.7928799085471827,
              window: $minute$hour$day.$minuteMember,
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<String, $string$number$boolean$date> schema,
                      })
                    >{
                      'iaculis': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'purus': $string$number$boolean$date.$stringMember,
                          'molestie': $string$number$boolean$date.$stringMember,
                          'mattis': $string$number$boolean$date.$stringMember,
                          'blandit': $string$number$boolean$date.$stringMember,
                          'nullam': $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                      'a': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'accumsan',
                                      'habitasse',
                                    ].lock,
                                    name: 'purus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['quisque', 'donec'].lock,
                                    name: 'venenatis',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['etiam', 'tellus'].lock,
                                    name: 'felis',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'consequat',
                                      'et',
                                      'consectetur',
                                      'senectus',
                                    ].lock,
                                    name: 'potenti',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'venenatis',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'lacus',
                                      'tempor',
                                      'arcu',
                                      'curabitur',
                                      'adipiscing',
                                      'maecenas',
                                      'massa',
                                      'sit',
                                      'vulputate',
                                    ].lock,
                                    name: 'dapibus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'montes',
                                      'suspendisse',
                                      'pellentesque',
                                    ].lock,
                                    name: 'malesuada',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'a',
                                      'consequat',
                                      'ridiculus',
                                      'duis',
                                      'mauris',
                                      'a',
                                    ].lock,
                                    name: 'ultrices',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'proin': $string$number$boolean$date.$booleanMember,
                          'imperdiet':
                              $string$number$boolean$date.$stringMember,
                          'donec': $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                      'duis': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'egestas',
                                      'morbi',
                                      'urna',
                                      'sagittis',
                                      'facilisis',
                                      'aliquam',
                                    ].lock,
                                    name: 'dui',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'curabitur':
                              $string$number$boolean$date.$numberMember,
                          'velit': $string$number$boolean$date.$booleanMember,
                          'ante': $string$number$boolean$date.$numberMember,
                          'porttitor':
                              $string$number$boolean$date.$booleanMember,
                          'lacus': $string$number$boolean$date.$booleanMember,
                          'volutpat': $string$number$boolean$date.$stringMember,
                        }.lock,
                      ),
                      'fermentum': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'mi',
                                      'quisque',
                                      'eros',
                                      'arcu',
                                      'vulputate',
                                    ].lock,
                                    name: 'habitasse',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'elit',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['eros'].lock,
                                    name: 'aenean',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'habitasse',
                                      'porta',
                                      'porttitor',
                                      'nunc',
                                      'sapien',
                                    ].lock,
                                    name: 'dui',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'elit',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['habitasse', 'felis'].lock,
                                    name: 'eu',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'sollicitudin',
                                      'aenean',
                                      'cras',
                                      'blandit',
                                    ].lock,
                                    name: 'sem',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'et',
                                      'eu',
                                      'donec',
                                      'et',
                                      'ante',
                                      'lacus',
                                      'nunc',
                                      'laoreet',
                                      'mollis',
                                    ].lock,
                                    name: 'tempus',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'magna': $string$number$boolean$date.$stringMember,
                          'tempus': $string$number$boolean$date.$stringMember,
                          'ipsum': $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                      'amet': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'potenti': $string$number$boolean$date.$stringMember,
                          'phasellus':
                              $string$number$boolean$date.$stringMember,
                          'sit': $string$number$boolean$date.$booleanMember,
                          'urna': $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                      'lacinia': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['eu'].lock,
                                    name: 'aenean',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'eget': $string$number$boolean$date.$stringMember,
                          'tellus': $string$number$boolean$date.$numberMember,
                          'venenatis':
                              $string$number$boolean$date.$numberMember,
                          'ridiculus':
                              $string$number$boolean$date.$numberMember,
                          'cras': $string$number$boolean$date.$stringMember,
                          'ullamcorper':
                              $string$number$boolean$date.$numberMember,
                          'lobortis':
                              $string$number$boolean$date.$booleanMember,
                          'cursus': $string$number$boolean$date.$numberMember,
                          'fames': $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        $get$post$put$delete method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'tortor': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'luctus': Union3<String, double, bool>.in2(
                            0.502111823185978,
                          ),
                          'enim': Union3<String, double, bool>.in2(
                            0.5835858073671466,
                          ),
                          'phasellus': Union3<String, double, bool>.in2(
                            0.9048902149549204,
                          ),
                        }.lock,
                        path: 'id',
                        response: 'vulputate',
                      ),
                      'erat': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'diam': Union3<String, double, bool>.in1('sed'),
                          'bibendum': Union3<String, double, bool>.in2(
                            0.6290130179089201,
                          ),
                          'proin': Union3<String, double, bool>.in2(
                            0.2222263894473645,
                          ),
                          'facilisi': Union3<String, double, bool>.in2(
                            0.7985871387307003,
                          ),
                          'magna': Union3<String, double, bool>.in2(
                            0.24413681625117944,
                          ),
                        }.lock,
                        path: 'est',
                        response: true,
                      ),
                      'quis': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'fames': Union3<String, double, bool>.in2(
                            0.8915833988934908,
                          ),
                          'luctus': Union3<String, double, bool>.in1('dis'),
                          'est': Union3<String, double, bool>.in1('vel'),
                          'purus': Union3<String, double, bool>.in1('ligula'),
                          'magnis': Union3<String, double, bool>.in1(
                            'maecenas',
                          ),
                          'turpis': Union3<String, double, bool>.in1('mauris'),
                          'eros': Union3<String, double, bool>.in2(
                            0.7474276676366911,
                          ),
                          'cursus': Union3<String, double, bool>.in2(
                            0.6770255641898832,
                          ),
                        }.lock,
                        path: 'aliquam',
                        response: 'posuere',
                      ),
                      'viverra': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$PUTMember,
                        params: <String, Union3<String, double, bool>>{
                          'praesent': Union3<String, double, bool>.in1('ut'),
                          'consectetur': Union3<String, double, bool>.in1(
                            'libero',
                          ),
                        }.lock,
                        path: 'sapien',
                        response: true,
                      ),
                      'tellus': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'nec': Union3<String, double, bool>.in2(
                            0.24931470454811155,
                          ),
                        }.lock,
                        path: 'platea',
                        response: false,
                      ),
                      'cursus': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$PUTMember,
                        params: <String, Union3<String, double, bool>>{
                          'eleifend': Union3<String, double, bool>.in1(
                            'fringilla',
                          ),
                          'tincidunt': Union3<String, double, bool>.in1(
                            'semper',
                          ),
                        }.lock,
                        path: 'magnis',
                        response: true,
                      ),
                      'orci': (
                        auth: Defined(false),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'interdum': Union3<String, double, bool>.in2(
                            0.5023113140535086,
                          ),
                          'massa': Union3<String, double, bool>.in1('metus'),
                          'metus': Union3<String, double, bool>.in1('placerat'),
                          'iaculis': Union3<String, double, bool>.in1('augue'),
                          'aenean': Union3<String, double, bool>.in1(
                            'parturient',
                          ),
                          'dictum': Union3<String, double, bool>.in2(
                            0.8347347112517793,
                          ),
                          'non': Union3<String, double, bool>.in2(
                            0.5355126195646817,
                          ),
                          'nullam': Union3<String, double, bool>.in2(
                            0.4122759850187776,
                          ),
                          'hendrerit': Union3<String, double, bool>.in2(
                            0.13297260288720236,
                          ),
                        }.lock,
                        path: 'magna',
                        response: false,
                      ),
                      'maecenas': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'dolor': Union3<String, double, bool>.in2(
                            0.7762127165066646,
                          ),
                          'congue': Union3<String, double, bool>.in2(
                            0.16692174565784657,
                          ),
                          'neque': Union3<String, double, bool>.in1('vitae'),
                          'dolor': Union3<String, double, bool>.in1('in'),
                          'lobortis': Union3<String, double, bool>.in1('neque'),
                          'consectetur': Union3<String, double, bool>.in1(
                            'blandit',
                          ),
                        }.lock,
                        path: 'fringilla',
                        response: 0.5051667998030515,
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.5122731114076133,
              window: $minute$hour$day.$hourMember,
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<String, $string$number$boolean$date> schema,
                      })
                    >{
                      'feugiat': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>['porta', 'varius'].lock,
                                    name: 'ligula',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'vestibulum',
                                      'tortor',
                                      'nec',
                                      'id',
                                    ].lock,
                                    name: 'urna',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'fermentum':
                              $string$number$boolean$date.$booleanMember,
                          'varius': $string$number$boolean$date.$stringMember,
                        }.lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
      (
        i: (
          api: (
            endpoints:
                <
                      String,
                      ({
                        Optional<bool> auth,
                        $get$post$put$delete method,
                        IMap<String, Union3<String, double, bool>> params,
                        String path,
                        dynamic response,
                      })
                    >{
                      'nam': (
                        auth: Undefined(),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'hendrerit': Union3<String, double, bool>.in2(
                            0.31614217724154337,
                          ),
                          'aliquam': Union3<String, double, bool>.in1('vitae'),
                          'tincidunt': Union3<String, double, bool>.in2(
                            0.9598422438484939,
                          ),
                          'ante': Union3<String, double, bool>.in2(
                            0.7376620977241237,
                          ),
                          'id': Union3<String, double, bool>.in2(
                            0.5051675661153838,
                          ),
                          'ullamcorper': Union3<String, double, bool>.in2(
                            0.2720083570203523,
                          ),
                          'eleifend': Union3<String, double, bool>.in1(
                            'imperdiet',
                          ),
                          'magna': Union3<String, double, bool>.in2(
                            0.6420198506376965,
                          ),
                        }.lock,
                        path: 'semper',
                        response: 0.08791195701353294,
                      ),
                      'molestie': (
                        auth: Defined(false),
                        method: $get$post$put$delete.$GETMember,
                        params: <String, Union3<String, double, bool>>{
                          'dignissim': Union3<String, double, bool>.in1(
                            'congue',
                          ),
                          'ipsum': Union3<String, double, bool>.in1('placerat'),
                        }.lock,
                        path: 'nibh',
                        response: 'etiam',
                      ),
                      'at': (
                        auth: Defined(true),
                        method: $get$post$put$delete.$POSTMember,
                        params: <String, Union3<String, double, bool>>{
                          'sit': Union3<String, double, bool>.in2(
                            0.3034230759750749,
                          ),
                          'sem': Union3<String, double, bool>.in2(
                            0.835124909409418,
                          ),
                          'hendrerit': Union3<String, double, bool>.in1(
                            'vulputate',
                          ),
                          'mus': Union3<String, double, bool>.in2(
                            0.9158629992983203,
                          ),
                          'euismod': Union3<String, double, bool>.in1(
                            'consequat',
                          ),
                          'magnis': Union3<String, double, bool>.in2(
                            0.8465559626916687,
                          ),
                          'quisque': Union3<String, double, bool>.in1(
                            'dapibus',
                          ),
                          'lorem': Union3<String, double, bool>.in1('tempus'),
                        }.lock,
                        path: 'justo',
                        response: 'mi',
                      ),
                    }
                    .lock,
            rateLimit: (
              requests: 0.6278338394588041,
              window: $minute$hour$day.$minuteMember,
            ),
          ),
          database: (
            tables:
                <
                      String,
                      ({
                        IList<
                          ({IList<String> fields, String name, bool unique})
                        >
                        indexes,
                        IMap<String, $string$number$boolean$date> schema,
                      })
                    >{
                      'interdum': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'turpis',
                                      'lectus',
                                      'sociis',
                                      'blandit',
                                      'tincidunt',
                                      'id',
                                    ].lock,
                                    name: 'ultricies',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'nam',
                                      'platea',
                                      'a',
                                      'risus',
                                      'lobortis',
                                      'sagittis',
                                      'accumsan',
                                    ].lock,
                                    name: 'faucibus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['phasellus'].lock,
                                    name: 'augue',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'porta',
                                      'phasellus',
                                      'nisl',
                                      'porta',
                                      'praesent',
                                    ].lock,
                                    name: 'scelerisque',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>['lobortis', 'mollis'].lock,
                                    name: 'pharetra',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'proin': $string$number$boolean$date.$stringMember,
                          'semper': $string$number$boolean$date.$numberMember,
                          'interdum':
                              $string$number$boolean$date.$booleanMember,
                        }.lock,
                      ),
                      'viverra': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'mi',
                                      'congue',
                                      'cras',
                                    ].lock,
                                    name: 'vitae',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{}.lock,
                      ),
                      'dolor': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'ultrices',
                                      'mus',
                                      'nam',
                                    ].lock,
                                    name: 'convallis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['lacus', 'vivamus'].lock,
                                    name: 'dis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'ac',
                                      'viverra',
                                      'eleifend',
                                      'imperdiet',
                                      'risus',
                                      'nisi',
                                      'quis',
                                      'volutpat',
                                    ].lock,
                                    name: 'massa',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'elit',
                                      'justo',
                                      'maecenas',
                                      'maecenas',
                                      'fermentum',
                                      'adipiscing',
                                      'risus',
                                      'elit',
                                      'ullamcorper',
                                    ].lock,
                                    name: 'nam',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'varius',
                                      'suspendisse',
                                      'orci',
                                      'mus',
                                      'hendrerit',
                                      'fusce',
                                    ].lock,
                                    name: 'proin',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'fringilla':
                              $string$number$boolean$date.$numberMember,
                          'aenean': $string$number$boolean$date.$stringMember,
                          'sollicitudin':
                              $string$number$boolean$date.$numberMember,
                          'ut': $string$number$boolean$date.$booleanMember,
                          'mollis': $string$number$boolean$date.$numberMember,
                          'habitasse':
                              $string$number$boolean$date.$booleanMember,
                          'turpis': $string$number$boolean$date.$stringMember,
                        }.lock,
                      ),
                      'maecenas': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'fames',
                                      'id',
                                      'mus',
                                      'nisi',
                                      'habitasse',
                                      'penatibus',
                                    ].lock,
                                    name: 'pellentesque',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'proin',
                                      'ut',
                                      'etiam',
                                      'pellentesque',
                                      'quis',
                                      'maecenas',
                                      'est',
                                      'quis',
                                      'viverra',
                                    ].lock,
                                    name: 'ac',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['hac', 'metus'].lock,
                                    name: 'turpis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'augue',
                                      'vulputate',
                                      'facilisis',
                                      'dui',
                                      'enim',
                                    ].lock,
                                    name: 'ipsum',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'imperdiet',
                                      'sed',
                                      'fusce',
                                      'cursus',
                                    ].lock,
                                    name: 'proin',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'scelerisque',
                                      'lacinia',
                                      'ipsum',
                                      'sociis',
                                      'proin',
                                      'amet',
                                      'purus',
                                    ].lock,
                                    name: 'penatibus',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'lectus',
                                      'venenatis',
                                      'a',
                                      'risus',
                                    ].lock,
                                    name: 'adipiscing',
                                    unique: true,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'duis': $string$number$boolean$date.$stringMember,
                          'nunc': $string$number$boolean$date.$stringMember,
                          'rhoncus': $string$number$boolean$date.$stringMember,
                          'tempor': $string$number$boolean$date.$stringMember,
                          'mauris': $string$number$boolean$date.$stringMember,
                        }.lock,
                      ),
                      'nulla': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'orci',
                                      'senectus',
                                      'nascetur',
                                      'urna',
                                      'ridiculus',
                                      'nisl',
                                    ].lock,
                                    name: 'tortor',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'et',
                                      'scelerisque',
                                      'laoreet',
                                      'platea',
                                      'interdum',
                                    ].lock,
                                    name: 'proin',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'varius',
                                      'quis',
                                      'quis',
                                      'dis',
                                      'sagittis',
                                      'faucibus',
                                      'fringilla',
                                      'vivamus',
                                      'volutpat',
                                    ].lock,
                                    name: 'purus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['mi'].lock,
                                    name: 'dui',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>['phasellus'].lock,
                                    name: 'senectus',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'ultricies',
                                      'leo',
                                      'cum',
                                      'senectus',
                                    ].lock,
                                    name: 'bibendum',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'gravida',
                                      'purus',
                                      'ultrices',
                                      'tempor',
                                      'quam',
                                      'amet',
                                      'velit',
                                      'vitae',
                                      'ultrices',
                                    ].lock,
                                    name: 'in',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'velit': $string$number$boolean$date.$stringMember,
                        }.lock,
                      ),
                      'arcu': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'fames',
                                      'quisque',
                                      'quam',
                                      'mattis',
                                      'convallis',
                                      'urna',
                                    ].lock,
                                    name: 'ipsum',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'lacinia',
                                      'faucibus',
                                      'molestie',
                                      'proin',
                                      'scelerisque',
                                      'id',
                                    ].lock,
                                    name: 'maecenas',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'euismod',
                                      'orci',
                                      'proin',
                                      'nullam',
                                      'ornare',
                                      'cras',
                                      'nisl',
                                      'dignissim',
                                      'bibendum',
                                    ].lock,
                                    name: 'diam',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'sociis',
                                      'dis',
                                      'at',
                                      'dictum',
                                      'mus',
                                    ].lock,
                                    name: 'placerat',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'fringilla',
                                      'massa',
                                      'tempus',
                                      'dis',
                                      'platea',
                                      'lacinia',
                                      'euismod',
                                      'eu',
                                      'vivamus',
                                    ].lock,
                                    name: 'integer',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[].lock,
                                    name: 'aliquet',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'natoque',
                                      'mus',
                                      'suspendisse',
                                      'habitant',
                                      'integer',
                                      'posuere',
                                      'pellentesque',
                                    ].lock,
                                    name: 'augue',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'ut',
                                      'nunc',
                                      'curabitur',
                                      'maecenas',
                                      'neque',
                                      'erat',
                                      'nibh',
                                      'libero',
                                      'sapien',
                                    ].lock,
                                    name: 'nascetur',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'et': $string$number$boolean$date.$stringMember,
                          'mauris': $string$number$boolean$date.$booleanMember,
                          'sem': $string$number$boolean$date.$numberMember,
                          'lacus': $string$number$boolean$date.$numberMember,
                          'ornare': $string$number$boolean$date.$stringMember,
                          'vestibulum':
                              $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                      'sed': (
                        indexes:
                            <
                                  ({
                                    IList<String> fields,
                                    String name,
                                    bool unique,
                                  })
                                >[
                                  (
                                    fields: <String>[
                                      'condimentum',
                                      'parturient',
                                      'lectus',
                                      'vestibulum',
                                      'condimentum',
                                      'gravida',
                                      'a',
                                      'magnis',
                                      'porta',
                                    ].lock,
                                    name: 'quis',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'in',
                                      'proin',
                                      'habitant',
                                      'eu',
                                    ].lock,
                                    name: 'varius',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'feugiat',
                                      'feugiat',
                                      'cursus',
                                      'mus',
                                      'lobortis',
                                      'quis',
                                      'tincidunt',
                                      'sem',
                                    ].lock,
                                    name: 'posuere',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'non',
                                      'vivamus',
                                      'luctus',
                                      'lacus',
                                      'sem',
                                      'ante',
                                      'pellentesque',
                                      'integer',
                                    ].lock,
                                    name: 'libero',
                                    unique: true,
                                  ),
                                  (
                                    fields: <String>[
                                      'tortor',
                                      'sem',
                                      'commodo',
                                      'senectus',
                                      'nisl',
                                      'mattis',
                                    ].lock,
                                    name: 'sollicitudin',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'etiam',
                                      'ridiculus',
                                      'eros',
                                      'sollicitudin',
                                      'bibendum',
                                      'montes',
                                      'nascetur',
                                      'sollicitudin',
                                      'euismod',
                                    ].lock,
                                    name: 'nunc',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'eros',
                                      'aenean',
                                      'purus',
                                      'turpis',
                                    ].lock,
                                    name: 'tincidunt',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'neque',
                                      'auctor',
                                      'nec',
                                      'bibendum',
                                      'penatibus',
                                      'habitant',
                                      'congue',
                                      'nullam',
                                    ].lock,
                                    name: 'ac',
                                    unique: false,
                                  ),
                                  (
                                    fields: <String>[
                                      'porttitor',
                                      'nisl',
                                      'convallis',
                                    ].lock,
                                    name: 'lobortis',
                                    unique: false,
                                  ),
                                ]
                                .lock,
                        schema: <String, $string$number$boolean$date>{
                          'odio': $string$number$boolean$date.$numberMember,
                          'volutpat':
                              $string$number$boolean$date.$booleanMember,
                          'pulvinar': $string$number$boolean$date.$stringMember,
                          'vulputate':
                              $string$number$boolean$date.$numberMember,
                        }.lock,
                      ),
                    }
                    .lock,
          ),
        ),
      ),
    ];
    for (final data in datas) {
      final serialized = tasksQuery124.serialize(data);
      final value1 = ConvexValue.object(serialized.lock);
      final deserialized = tasksQuery124.deserialize(value1);
      expect(deserialized, data);
    }
  });
}
