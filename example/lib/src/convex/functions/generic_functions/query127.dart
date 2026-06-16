// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query127Response> query127(Query127Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query127',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query127Response> query127Stream(Query127Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query127',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query127Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'variables': encodeValue({
          for (final on323843 in args.i.variables.entries)
            on323843.key: encodeValue(
              encodeValue(
                on323843.value.split(
                  (on464942) => encodeValue(on464942),
                  (on705241) => encodeValue(on705241),
                  (on824353) => encodeValue(on824353),
                  (on141974) => encodeValue(
                    on141974.map((on688121) => encodeValue(on688121)).toIList(),
                  ),
                ),
              ),
            ),
        }),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query127Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on824457) => (
      i: (on824457['i'] as IMap<String, dynamic>).then(
        (on155156) => (
          variables: (on155156['variables'] as IMap<String, dynamic>).map(
            (on817090, on844485) => MapEntry(
              on817090,
              Union4<String, double, bool, IList<dynamic>>(() {
                try {
                  return (on844485 as String);
                } catch (e) {}

                try {
                  return (on844485 as double);
                } catch (e) {}

                try {
                  return (on844485 as bool);
                } catch (e) {}

                try {
                  return (on844485 as IList<dynamic>)
                      .map((on393648) => (on393648 as dynamic))
                      .toIList();
                } catch (e) {}

                throw Exception(
                  (on844485.toString() ?? "null") +
                      r" cannot be deserialized into a Union4<String, double, bool, IList<dynamic>>",
                );
              }()),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query127Args = ({
  ({IMap<String, Union4<String, double, bool, IList<dynamic>>> variables}) i,
});
typedef Query127Response = ({
  ({IMap<String, Union4<String, double, bool, IList<dynamic>>> variables}) i,
});
