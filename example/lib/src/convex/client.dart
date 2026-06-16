// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import 'dart:async';

import 'package:convex_dart/src/convex_dart_for_generated_code.dart'
    as internal;
import 'package:http/http.dart' as $http;
import 'dart:convert' as $convert;
import './functions/primitive_returns/voidReturn.dart'
    as voidReturn0
    show voidReturn, voidReturnStream;
import './functions/primitive_returns/strReturn.dart'
    as strReturn1
    show strReturn, strReturnStream;
import './functions/primitive_returns/numReturn.dart'
    as numReturn2
    show numReturn, numReturnStream;
import './functions/primitive_returns/boolReturn.dart'
    as boolReturn3
    show boolReturn, boolReturnStream;
import './functions/primitive_returns/int64Return.dart'
    as int64Return4
    show int64Return, int64ReturnStream;
import './functions/primitive_returns/bytesReturn.dart'
    as bytesReturn5
    show bytesReturn, bytesReturnStream;
import './functions/primitive_returns/nullReturn.dart'
    as nullReturn6
    show nullReturn, nullReturnStream;
import './functions/primitive_returns/unionReturn.dart'
    as unionReturn7
    show unionReturn, unionReturnStream;
import './functions/primitive_returns/arrayReturn.dart'
    as arrayReturn8
    show arrayReturn, arrayReturnStream;
import './functions/primitive_returns/idReturn.dart'
    as idReturn9
    show idReturn, idReturnStream;
import './functions/primitive_returns/recordReturn.dart'
    as recordReturn10
    show recordReturn, recordReturnStream;
import './functions/primitive_returns/anyReturn.dart'
    as anyReturn11
    show anyReturn, anyReturnStream;
import './functions/primitive_returns/objectReturn.dart'
    as objectReturn12
    show objectReturn, objectReturnStream;
import './functions/primitive_returns/privateObjectReturn.dart'
    as privateObjectReturn13
    show privateObjectReturn, privateObjectReturnStream;
import './functions/primitive_returns/emptyObjectArgsReturn.dart'
    as emptyObjectArgsReturn14
    show emptyObjectArgsReturn, emptyObjectArgsReturnStream;
import './functions/generic_functions/query1.dart'
    as query115
    show query1, query1Stream;
import './functions/generic_functions/query2.dart'
    as query216
    show query2, query2Stream;
import './functions/generic_functions/query3.dart'
    as query317
    show query3, query3Stream;
import './functions/generic_functions/query4.dart'
    as query418
    show query4, query4Stream;
import './functions/generic_functions/query5.dart'
    as query519
    show query5, query5Stream;
import './functions/generic_functions/query6.dart'
    as query620
    show query6, query6Stream;
import './functions/generic_functions/query7.dart'
    as query721
    show query7, query7Stream;
import './functions/generic_functions/query9.dart'
    as query922
    show query9, query9Stream;
import './functions/generic_functions/query10.dart'
    as query1023
    show query10, query10Stream;
import './functions/generic_functions/query11.dart'
    as query1124
    show query11, query11Stream;
import './functions/generic_functions/query13.dart'
    as query1325
    show query13, query13Stream;
import './functions/generic_functions/query14.dart'
    as query1426
    show query14, query14Stream;
import './functions/generic_functions/query15.dart'
    as query1527
    show query15, query15Stream;
import './functions/generic_functions/query16.dart'
    as query1628
    show query16, query16Stream;
import './functions/generic_functions/query17.dart'
    as query1729
    show query17, query17Stream;
import './functions/generic_functions/query18.dart'
    as query1830
    show query18, query18Stream;
import './functions/generic_functions/query19.dart'
    as query1931
    show query19, query19Stream;
import './functions/generic_functions/query20.dart'
    as query2032
    show query20, query20Stream;
import './functions/generic_functions/query21.dart'
    as query2133
    show query21, query21Stream;
import './functions/generic_functions/query22.dart'
    as query2234
    show query22, query22Stream;
import './functions/generic_functions/query24.dart'
    as query2435
    show query24, query24Stream;
import './functions/generic_functions/query25.dart'
    as query2536
    show query25, query25Stream;
import './functions/generic_functions/query26.dart'
    as query2637
    show query26, query26Stream;
import './functions/generic_functions/query27.dart'
    as query2738
    show query27, query27Stream;
import './functions/generic_functions/query28.dart'
    as query2839
    show query28, query28Stream;
import './functions/generic_functions/query29.dart'
    as query2940
    show query29, query29Stream;
import './functions/generic_functions/query30.dart'
    as query3041
    show query30, query30Stream;
import './functions/generic_functions/query31.dart'
    as query3142
    show query31, query31Stream;
import './functions/generic_functions/query32.dart'
    as query3243
    show query32, query32Stream;
import './functions/generic_functions/query33.dart'
    as query3344
    show query33, query33Stream;
import './functions/generic_functions/query34WithNull.dart'
    as query34WithNull45
    show query34WithNull, query34WithNullStream;
import './functions/generic_functions/query34NonNull.dart'
    as query34NonNull46
    show query34NonNull, query34NonNullStream;
import './functions/generic_functions/query35.dart'
    as query3547
    show query35, query35Stream;
import './functions/generic_functions/query36.dart'
    as query3648
    show query36, query36Stream;
import './functions/generic_functions/query37.dart'
    as query3749
    show query37, query37Stream;
import './functions/generic_functions/query38.dart'
    as query3850
    show query38, query38Stream;
import './functions/generic_functions/query39.dart'
    as query3951
    show query39, query39Stream;
import './functions/generic_functions/query40.dart'
    as query4052
    show query40, query40Stream;
import './functions/generic_functions/query41.dart'
    as query4153
    show query41, query41Stream;
import './functions/generic_functions/query42.dart'
    as query4254
    show query42, query42Stream;
import './functions/generic_functions/query43.dart'
    as query4355
    show query43, query43Stream;
import './functions/generic_functions/query44.dart'
    as query4456
    show query44, query44Stream;
import './functions/generic_functions/query45.dart'
    as query4557
    show query45, query45Stream;
import './functions/generic_functions/query58.dart'
    as query5858
    show query58, query58Stream;
import './functions/generic_functions/query59.dart'
    as query5959
    show query59, query59Stream;
import './functions/generic_functions/query60.dart'
    as query6060
    show query60, query60Stream;
import './functions/generic_functions/query61.dart'
    as query6161
    show query61, query61Stream;
import './functions/generic_functions/query62.dart'
    as query6262
    show query62, query62Stream;
import './functions/generic_functions/query63.dart'
    as query6363
    show query63, query63Stream;
import './functions/generic_functions/query64.dart'
    as query6464
    show query64, query64Stream;
import './functions/generic_functions/query65.dart'
    as query6565
    show query65, query65Stream;
import './functions/generic_functions/query66.dart'
    as query6666
    show query66, query66Stream;
import './functions/generic_functions/query67.dart'
    as query6767
    show query67, query67Stream;
import './functions/generic_functions/query69.dart'
    as query6968
    show query69, query69Stream;
import './functions/generic_functions/query70.dart'
    as query7069
    show query70, query70Stream;
import './functions/generic_functions/query71.dart'
    as query7170
    show query71, query71Stream;
import './functions/generic_functions/query72.dart'
    as query7271
    show query72, query72Stream;
import './functions/generic_functions/query73.dart'
    as query7372
    show query73, query73Stream;
import './functions/generic_functions/query74.dart'
    as query7473
    show query74, query74Stream;
import './functions/generic_functions/query75.dart'
    as query7574
    show query75, query75Stream;
import './functions/generic_functions/query76.dart'
    as query7675
    show query76, query76Stream;
import './functions/generic_functions/query77.dart'
    as query7776
    show query77, query77Stream;
import './functions/generic_functions/query78.dart'
    as query7877
    show query78, query78Stream;
import './functions/generic_functions/query79.dart'
    as query7978
    show query79, query79Stream;
import './functions/generic_functions/query81.dart'
    as query8179
    show query81, query81Stream;
import './functions/generic_functions/query82.dart'
    as query8280
    show query82, query82Stream;
import './functions/generic_functions/query83.dart'
    as query8381
    show query83, query83Stream;
import './functions/generic_functions/query84.dart'
    as query8482
    show query84, query84Stream;
import './functions/generic_functions/query85.dart'
    as query8583
    show query85, query85Stream;
import './functions/generic_functions/query86.dart'
    as query8684
    show query86, query86Stream;
import './functions/generic_functions/query87.dart'
    as query8785
    show query87, query87Stream;
import './functions/generic_functions/query88.dart'
    as query8886
    show query88, query88Stream;
import './functions/generic_functions/query89.dart'
    as query8987
    show query89, query89Stream;
import './functions/generic_functions/query90.dart'
    as query9088
    show query90, query90Stream;
import './functions/generic_functions/query92.dart'
    as query9289
    show query92, query92Stream;
import './functions/generic_functions/query93.dart'
    as query9390
    show query93, query93Stream;
import './functions/generic_functions/query94.dart'
    as query9491
    show query94, query94Stream;
import './functions/generic_functions/query95.dart'
    as query9592
    show query95, query95Stream;
import './functions/generic_functions/query96.dart'
    as query9693
    show query96, query96Stream;
import './functions/generic_functions/query97.dart'
    as query9794
    show query97, query97Stream;
import './functions/generic_functions/query98.dart'
    as query9895
    show query98, query98Stream;
import './functions/generic_functions/query100.dart'
    as query10096
    show query100, query100Stream;
import './functions/generic_functions/query101.dart'
    as query10197
    show query101, query101Stream;
import './functions/generic_functions/query102.dart'
    as query10298
    show query102, query102Stream;
import './functions/generic_functions/query103.dart'
    as query10399
    show query103, query103Stream;
import './functions/generic_functions/query104.dart'
    as query104100
    show query104, query104Stream;
import './functions/generic_functions/query105.dart'
    as query105101
    show query105, query105Stream;
import './functions/generic_functions/query106.dart'
    as query106102
    show query106, query106Stream;
import './functions/generic_functions/query107.dart'
    as query107103
    show query107, query107Stream;
import './functions/generic_functions/query110.dart'
    as query110104
    show query110, query110Stream;
import './functions/generic_functions/query111.dart'
    as query111105
    show query111, query111Stream;
import './functions/generic_functions/query112.dart'
    as query112106
    show query112, query112Stream;
import './functions/generic_functions/query113.dart'
    as query113107
    show query113, query113Stream;
import './functions/generic_functions/query114.dart'
    as query114108
    show query114, query114Stream;
import './functions/generic_functions/query115.dart'
    as query115109
    show query115, query115Stream;
import './functions/generic_functions/query116.dart'
    as query116110
    show query116, query116Stream;
import './functions/generic_functions/query117.dart'
    as query117111
    show query117, query117Stream;
import './functions/generic_functions/query118.dart'
    as query118112
    show query118, query118Stream;
import './functions/generic_functions/query119.dart'
    as query119113
    show query119, query119Stream;
import './functions/generic_functions/query120.dart'
    as query120114
    show query120, query120Stream;
import './functions/generic_functions/query121.dart'
    as query121115
    show query121, query121Stream;
import './functions/generic_functions/query122.dart'
    as query122116
    show query122, query122Stream;
import './functions/generic_functions/query123.dart'
    as query123117
    show query123, query123Stream;
import './functions/generic_functions/query124.dart'
    as query124118
    show query124, query124Stream;
import './functions/generic_functions/query125.dart'
    as query125119
    show query125, query125Stream;
import './functions/generic_functions/query126.dart'
    as query126120
    show query126, query126Stream;
import './functions/generic_functions/query127.dart'
    as query127121
    show query127, query127Stream;
import './functions/generic_functions/query128.dart'
    as query128122
    show query128, query128Stream;
import './functions/generic_functions/query129.dart'
    as query129123
    show query129, query129Stream;
import './functions/generic_functions/query130.dart'
    as query130124
    show query130, query130Stream;
import './functions/generic_functions/query131.dart'
    as query131125
    show query131, query131Stream;
import './functions/generic_functions/query132.dart'
    as query132126
    show query132, query132Stream;
import './functions/generic_functions/query133.dart'
    as query133127
    show query133, query133Stream;
import './functions/generic_functions/query134.dart'
    as query134128
    show query134, query134Stream;
import './functions/generic_functions/query135.dart'
    as query135129
    show query135, query135Stream;
import './functions/generic_functions/query137.dart'
    as query137130
    show query137, query137Stream;
import './functions/generic_functions/query138.dart'
    as query138131
    show query138, query138Stream;
import './functions/generic_functions/query139.dart'
    as query139132
    show query139, query139Stream;
import './functions/generic_functions/query141.dart'
    as query141133
    show query141, query141Stream;
import './functions/generic_functions/query144.dart'
    as query144134
    show query144, query144Stream;
import './functions/generic_functions/query146.dart'
    as query146135
    show query146, query146Stream;
import './functions/generic_functions/query148.dart'
    as query148136
    show query148, query148Stream;
import './functions/generic_functions/query149.dart'
    as query149137
    show query149, query149Stream;
import './functions/generic_functions/query150.dart'
    as query150138
    show query150, query150Stream;
import './functions/generic_functions/query151.dart'
    as query151139
    show query151, query151Stream;
import './functions/generic_functions/query152.dart'
    as query152140
    show query152, query152Stream;
import './functions/generic_functions/query153.dart'
    as query153141
    show query153, query153Stream;
import './functions/generic_functions/query154.dart'
    as query154142
    show query154, query154Stream;
import './functions/generic_functions/query155.dart'
    as query155143
    show query155, query155Stream;
import './functions/generic_functions/query156.dart'
    as query156144
    show query156, query156Stream;
import './functions/generic_functions/query157.dart'
    as query157145
    show query157, query157Stream;
import './functions/generic_functions/query158.dart'
    as query158146
    show query158, query158Stream;
import './functions/generic_functions/query159.dart'
    as query159147
    show query159, query159Stream;
import './functions/generic_functions/query161.dart'
    as query161148
    show query161, query161Stream;
import './functions/generic_functions/query163.dart'
    as query163149
    show query163, query163Stream;
import './functions/generic_functions/query164.dart'
    as query164150
    show query164, query164Stream;
import './functions/generic_functions/query165.dart'
    as query165151
    show query165, query165Stream;
import './functions/generic_functions/query166.dart'
    as query166152
    show query166, query166Stream;
import './functions/generic_functions/query167.dart'
    as query167153
    show query167, query167Stream;
import './functions/generic_functions/query168.dart'
    as query168154
    show query168, query168Stream;
import './functions/generic_functions/query169.dart'
    as query169155
    show query169, query169Stream;
import './functions/generic_functions/query170.dart'
    as query170156
    show query170, query170Stream;
import './functions/generic_functions/query171.dart'
    as query171157
    show query171, query171Stream;
import './functions/generic_functions/query172.dart'
    as query172158
    show query172, query172Stream;
import './functions/generic_functions/query173.dart'
    as query173159
    show query173, query173Stream;
import './functions/generic_functions/query174.dart'
    as query174160
    show query174, query174Stream;
import './functions/generic_functions/query175.dart'
    as query175161
    show query175, query175Stream;
import './functions/generic_functions/query176.dart'
    as query176162
    show query176, query176Stream;
import './functions/generic_functions/query177.dart'
    as query177163
    show query177, query177Stream;
import './functions/generic_functions/query178.dart'
    as query178164
    show query178, query178Stream;
import './functions/generic_functions/query179.dart'
    as query179165
    show query179, query179Stream;
import './functions/generic_functions/query180.dart'
    as query180166
    show query180, query180Stream;
import './functions/generic_functions/query181.dart'
    as query181167
    show query181, query181Stream;
import './functions/generic_functions/query183.dart'
    as query183168
    show query183, query183Stream;
import './functions/generic_functions/query184.dart'
    as query184169
    show query184, query184Stream;
import './functions/generic_functions/query185.dart'
    as query185170
    show query185, query185Stream;
import './functions/generic_functions/query186.dart'
    as query186171
    show query186, query186Stream;
import './functions/generic_functions/query187.dart'
    as query187172
    show query187, query187Stream;
import './functions/generic_functions/query188.dart'
    as query188173
    show query188, query188Stream;
import './functions/generic_functions/query189.dart'
    as query189174
    show query189, query189Stream;
import './functions/generic_functions/query190.dart'
    as query190175
    show query190, query190Stream;
import './functions/generic_functions/query191.dart'
    as query191176
    show query191, query191Stream;
import './functions/generic_functions/query192.dart'
    as query192177
    show query192, query192Stream;
import './functions/generic_functions/query193.dart'
    as query193178
    show query193, query193Stream;
import './functions/generic_functions/query194.dart'
    as query194179
    show query194, query194Stream;
import './functions/generic_functions/query195.dart'
    as query195180
    show query195, query195Stream;
import './functions/generic_functions/query196.dart'
    as query196181
    show query196, query196Stream;
import './functions/generic_functions/query197.dart'
    as query197182
    show query197, query197Stream;
import './functions/generic_functions/query198.dart'
    as query198183
    show query198, query198Stream;
import './functions/generic_functions/query199.dart'
    as query199184
    show query199, query199Stream;
import './functions/generic_functions/query201.dart'
    as query201185
    show query201, query201Stream;
import './functions/generic_functions/query203.dart'
    as query203186
    show query203, query203Stream;
import './functions/generic_functions/query204.dart'
    as query204187
    show query204, query204Stream;
import './functions/generic_functions/query205.dart'
    as query205188
    show query205, query205Stream;
import './functions/generic_functions/query206.dart'
    as query206189
    show query206, query206Stream;
import './functions/generic_functions/query208.dart'
    as query208190
    show query208, query208Stream;
import './functions/generic_functions/query209.dart'
    as query209191
    show query209, query209Stream;
import './functions/generic_functions/query210.dart'
    as query210192
    show query210, query210Stream;
import './functions/generic_functions/query211.dart'
    as query211193
    show query211, query211Stream;
import './functions/generic_functions/query212.dart'
    as query212194
    show query212, query212Stream;
import './functions/generic_functions/query213.dart'
    as query213195
    show query213, query213Stream;
import './functions/generic_functions/query214.dart'
    as query214196
    show query214, query214Stream;
import './functions/generic_functions/query215.dart'
    as query215197
    show query215, query215Stream;
import './functions/generic_functions/query216.dart'
    as query216198
    show query216, query216Stream;
import './functions/generic_functions/query217.dart'
    as query217199
    show query217, query217Stream;
import './functions/generic_functions/query218.dart'
    as query218200
    show query218, query218Stream;
import './functions/generic_functions/query219.dart'
    as query219201
    show query219, query219Stream;
import './functions/generic_functions/query220.dart'
    as query220202
    show query220, query220Stream;
import './functions/generic_functions/query221.dart'
    as query221203
    show query221, query221Stream;
import './functions/generic_functions/query223.dart'
    as query223204
    show query223, query223Stream;
import './functions/generic_functions/query224.dart'
    as query224205
    show query224, query224Stream;
import './functions/generic_functions/query225.dart'
    as query225206
    show query225, query225Stream;
import './functions/tasks/createTask.dart' as createTask207 show createTask;
import './functions/tasks/getAllTasks.dart'
    as getAllTasks208
    show getAllTasks, getAllTasksStream;
import './functions/tasks/getTask.dart'
    as getTask209
    show getTask, getTaskStream;
import './functions/tasks/getTasksByStatus.dart'
    as getTasksByStatus210
    show getTasksByStatus, getTasksByStatusStream;
import './functions/tasks/searchTasks.dart'
    as searchTasks211
    show searchTasks, searchTasksStream;
import './functions/tasks/updateTaskText.dart'
    as updateTaskText212
    show updateTaskText;
import './functions/tasks/toggleTaskCompletion.dart'
    as toggleTaskCompletion213
    show toggleTaskCompletion;
import './functions/tasks/setTaskCompletion.dart'
    as setTaskCompletion214
    show setTaskCompletion;
import './functions/tasks/updateTask.dart' as updateTask215 show updateTask;
import './functions/tasks/deleteTask.dart' as deleteTask216 show deleteTask;
import './functions/tasks/deleteCompletedTasks.dart'
    as deleteCompletedTasks217
    show deleteCompletedTasks;
import './functions/tasks/deleteAllTasks.dart'
    as deleteAllTasks218
    show deleteAllTasks;
import './functions/tasks/getTaskCount.dart'
    as getTaskCount219
    show getTaskCount, getTaskCountStream;

class ConvexClient {
  static Future<void> init() async {
    await internal.InternalConvexClient.init(
      deploymentUrl: "https://outgoing-akita-910.convex.cloud",
    );
  }

  Future<void> setAuth({required String? token}) async {
    await internal.InternalConvexClient.instance.setAuth(token: token);
  }

  Future<void> setAuthCallback({required FutureOr<AuthenticationToken> Function(bool)? fetcher}) async {
    await internal.InternalConvexClient.instance.setAuth(token: token)
  }

  static final String httpUrl = "https://outgoing-akita-910.convex.site";

  static Future<$http.Response> get$api$v1$$({
    Map<String, String>? headers,
    String suffix = '',
  }) {
    final uri = Uri.parse(httpUrl + r'/api/v1/' + suffix);
    return $http.get(uri, headers: headers);
  }

  static Future<$http.Response> get$api$v1$({Map<String, String>? headers}) {
    final uri = Uri.parse(httpUrl + r'/api/v1/');
    return $http.get(uri, headers: headers);
  }

  static Future<$http.Response> post$api$v1$({
    Map<String, String>? headers,
    Object? body,
    $convert.Encoding? encoding,
  }) {
    final uri = Uri.parse(httpUrl + r'/api/v1/');
    return $http.post(uri, headers: headers, body: body, encoding: encoding);
  }

  static Future<$http.Response> put$api$v1$({
    Map<String, String>? headers,
    Object? body,
    $convert.Encoding? encoding,
  }) {
    final uri = Uri.parse(httpUrl + r'/api/v1/');
    return $http.put(uri, headers: headers, body: body, encoding: encoding);
  }

  static Future<$http.Response> delete$api$v1$({
    Map<String, String>? headers,
    Object? body,
    $convert.Encoding? encoding,
  }) {
    final uri = Uri.parse(httpUrl + r'/api/v1/');
    return $http.delete(uri, headers: headers, body: body, encoding: encoding);
  }

  static Future<$http.Response> patch$api$v1$({
    Map<String, String>? headers,
    Object? body,
    $convert.Encoding? encoding,
  }) {
    final uri = Uri.parse(httpUrl + r'/api/v1/');
    return $http.patch(uri, headers: headers, body: body, encoding: encoding);
  }
}

final api = (
  primitiveReturns: (
    voidReturn: voidReturn0.voidReturn,
    voidReturnStream: voidReturn0.voidReturnStream,
    strReturn: strReturn1.strReturn,
    strReturnStream: strReturn1.strReturnStream,
    numReturn: numReturn2.numReturn,
    numReturnStream: numReturn2.numReturnStream,
    boolReturn: boolReturn3.boolReturn,
    boolReturnStream: boolReturn3.boolReturnStream,
    int64Return: int64Return4.int64Return,
    int64ReturnStream: int64Return4.int64ReturnStream,
    bytesReturn: bytesReturn5.bytesReturn,
    bytesReturnStream: bytesReturn5.bytesReturnStream,
    nullReturn: nullReturn6.nullReturn,
    nullReturnStream: nullReturn6.nullReturnStream,
    unionReturn: unionReturn7.unionReturn,
    unionReturnStream: unionReturn7.unionReturnStream,
    arrayReturn: arrayReturn8.arrayReturn,
    arrayReturnStream: arrayReturn8.arrayReturnStream,
    idReturn: idReturn9.idReturn,
    idReturnStream: idReturn9.idReturnStream,
    recordReturn: recordReturn10.recordReturn,
    recordReturnStream: recordReturn10.recordReturnStream,
    anyReturn: anyReturn11.anyReturn,
    anyReturnStream: anyReturn11.anyReturnStream,
    objectReturn: objectReturn12.objectReturn,
    objectReturnStream: objectReturn12.objectReturnStream,
    privateObjectReturn: privateObjectReturn13.privateObjectReturn,
    privateObjectReturnStream: privateObjectReturn13.privateObjectReturnStream,
    emptyObjectArgsReturn: emptyObjectArgsReturn14.emptyObjectArgsReturn,
    emptyObjectArgsReturnStream:
        emptyObjectArgsReturn14.emptyObjectArgsReturnStream,
  ),
  genericFunctions: (
    query1: query115.query1,
    query1Stream: query115.query1Stream,
    query2: query216.query2,
    query2Stream: query216.query2Stream,
    query3: query317.query3,
    query3Stream: query317.query3Stream,
    query4: query418.query4,
    query4Stream: query418.query4Stream,
    query5: query519.query5,
    query5Stream: query519.query5Stream,
    query6: query620.query6,
    query6Stream: query620.query6Stream,
    query7: query721.query7,
    query7Stream: query721.query7Stream,
    query9: query922.query9,
    query9Stream: query922.query9Stream,
    query10: query1023.query10,
    query10Stream: query1023.query10Stream,
    query11: query1124.query11,
    query11Stream: query1124.query11Stream,
    query13: query1325.query13,
    query13Stream: query1325.query13Stream,
    query14: query1426.query14,
    query14Stream: query1426.query14Stream,
    query15: query1527.query15,
    query15Stream: query1527.query15Stream,
    query16: query1628.query16,
    query16Stream: query1628.query16Stream,
    query17: query1729.query17,
    query17Stream: query1729.query17Stream,
    query18: query1830.query18,
    query18Stream: query1830.query18Stream,
    query19: query1931.query19,
    query19Stream: query1931.query19Stream,
    query20: query2032.query20,
    query20Stream: query2032.query20Stream,
    query21: query2133.query21,
    query21Stream: query2133.query21Stream,
    query22: query2234.query22,
    query22Stream: query2234.query22Stream,
    query24: query2435.query24,
    query24Stream: query2435.query24Stream,
    query25: query2536.query25,
    query25Stream: query2536.query25Stream,
    query26: query2637.query26,
    query26Stream: query2637.query26Stream,
    query27: query2738.query27,
    query27Stream: query2738.query27Stream,
    query28: query2839.query28,
    query28Stream: query2839.query28Stream,
    query29: query2940.query29,
    query29Stream: query2940.query29Stream,
    query30: query3041.query30,
    query30Stream: query3041.query30Stream,
    query31: query3142.query31,
    query31Stream: query3142.query31Stream,
    query32: query3243.query32,
    query32Stream: query3243.query32Stream,
    query33: query3344.query33,
    query33Stream: query3344.query33Stream,
    query34WithNull: query34WithNull45.query34WithNull,
    query34WithNullStream: query34WithNull45.query34WithNullStream,
    query34NonNull: query34NonNull46.query34NonNull,
    query34NonNullStream: query34NonNull46.query34NonNullStream,
    query35: query3547.query35,
    query35Stream: query3547.query35Stream,
    query36: query3648.query36,
    query36Stream: query3648.query36Stream,
    query37: query3749.query37,
    query37Stream: query3749.query37Stream,
    query38: query3850.query38,
    query38Stream: query3850.query38Stream,
    query39: query3951.query39,
    query39Stream: query3951.query39Stream,
    query40: query4052.query40,
    query40Stream: query4052.query40Stream,
    query41: query4153.query41,
    query41Stream: query4153.query41Stream,
    query42: query4254.query42,
    query42Stream: query4254.query42Stream,
    query43: query4355.query43,
    query43Stream: query4355.query43Stream,
    query44: query4456.query44,
    query44Stream: query4456.query44Stream,
    query45: query4557.query45,
    query45Stream: query4557.query45Stream,
    query58: query5858.query58,
    query58Stream: query5858.query58Stream,
    query59: query5959.query59,
    query59Stream: query5959.query59Stream,
    query60: query6060.query60,
    query60Stream: query6060.query60Stream,
    query61: query6161.query61,
    query61Stream: query6161.query61Stream,
    query62: query6262.query62,
    query62Stream: query6262.query62Stream,
    query63: query6363.query63,
    query63Stream: query6363.query63Stream,
    query64: query6464.query64,
    query64Stream: query6464.query64Stream,
    query65: query6565.query65,
    query65Stream: query6565.query65Stream,
    query66: query6666.query66,
    query66Stream: query6666.query66Stream,
    query67: query6767.query67,
    query67Stream: query6767.query67Stream,
    query69: query6968.query69,
    query69Stream: query6968.query69Stream,
    query70: query7069.query70,
    query70Stream: query7069.query70Stream,
    query71: query7170.query71,
    query71Stream: query7170.query71Stream,
    query72: query7271.query72,
    query72Stream: query7271.query72Stream,
    query73: query7372.query73,
    query73Stream: query7372.query73Stream,
    query74: query7473.query74,
    query74Stream: query7473.query74Stream,
    query75: query7574.query75,
    query75Stream: query7574.query75Stream,
    query76: query7675.query76,
    query76Stream: query7675.query76Stream,
    query77: query7776.query77,
    query77Stream: query7776.query77Stream,
    query78: query7877.query78,
    query78Stream: query7877.query78Stream,
    query79: query7978.query79,
    query79Stream: query7978.query79Stream,
    query81: query8179.query81,
    query81Stream: query8179.query81Stream,
    query82: query8280.query82,
    query82Stream: query8280.query82Stream,
    query83: query8381.query83,
    query83Stream: query8381.query83Stream,
    query84: query8482.query84,
    query84Stream: query8482.query84Stream,
    query85: query8583.query85,
    query85Stream: query8583.query85Stream,
    query86: query8684.query86,
    query86Stream: query8684.query86Stream,
    query87: query8785.query87,
    query87Stream: query8785.query87Stream,
    query88: query8886.query88,
    query88Stream: query8886.query88Stream,
    query89: query8987.query89,
    query89Stream: query8987.query89Stream,
    query90: query9088.query90,
    query90Stream: query9088.query90Stream,
    query92: query9289.query92,
    query92Stream: query9289.query92Stream,
    query93: query9390.query93,
    query93Stream: query9390.query93Stream,
    query94: query9491.query94,
    query94Stream: query9491.query94Stream,
    query95: query9592.query95,
    query95Stream: query9592.query95Stream,
    query96: query9693.query96,
    query96Stream: query9693.query96Stream,
    query97: query9794.query97,
    query97Stream: query9794.query97Stream,
    query98: query9895.query98,
    query98Stream: query9895.query98Stream,
    query100: query10096.query100,
    query100Stream: query10096.query100Stream,
    query101: query10197.query101,
    query101Stream: query10197.query101Stream,
    query102: query10298.query102,
    query102Stream: query10298.query102Stream,
    query103: query10399.query103,
    query103Stream: query10399.query103Stream,
    query104: query104100.query104,
    query104Stream: query104100.query104Stream,
    query105: query105101.query105,
    query105Stream: query105101.query105Stream,
    query106: query106102.query106,
    query106Stream: query106102.query106Stream,
    query107: query107103.query107,
    query107Stream: query107103.query107Stream,
    query110: query110104.query110,
    query110Stream: query110104.query110Stream,
    query111: query111105.query111,
    query111Stream: query111105.query111Stream,
    query112: query112106.query112,
    query112Stream: query112106.query112Stream,
    query113: query113107.query113,
    query113Stream: query113107.query113Stream,
    query114: query114108.query114,
    query114Stream: query114108.query114Stream,
    query115: query115109.query115,
    query115Stream: query115109.query115Stream,
    query116: query116110.query116,
    query116Stream: query116110.query116Stream,
    query117: query117111.query117,
    query117Stream: query117111.query117Stream,
    query118: query118112.query118,
    query118Stream: query118112.query118Stream,
    query119: query119113.query119,
    query119Stream: query119113.query119Stream,
    query120: query120114.query120,
    query120Stream: query120114.query120Stream,
    query121: query121115.query121,
    query121Stream: query121115.query121Stream,
    query122: query122116.query122,
    query122Stream: query122116.query122Stream,
    query123: query123117.query123,
    query123Stream: query123117.query123Stream,
    query124: query124118.query124,
    query124Stream: query124118.query124Stream,
    query125: query125119.query125,
    query125Stream: query125119.query125Stream,
    query126: query126120.query126,
    query126Stream: query126120.query126Stream,
    query127: query127121.query127,
    query127Stream: query127121.query127Stream,
    query128: query128122.query128,
    query128Stream: query128122.query128Stream,
    query129: query129123.query129,
    query129Stream: query129123.query129Stream,
    query130: query130124.query130,
    query130Stream: query130124.query130Stream,
    query131: query131125.query131,
    query131Stream: query131125.query131Stream,
    query132: query132126.query132,
    query132Stream: query132126.query132Stream,
    query133: query133127.query133,
    query133Stream: query133127.query133Stream,
    query134: query134128.query134,
    query134Stream: query134128.query134Stream,
    query135: query135129.query135,
    query135Stream: query135129.query135Stream,
    query137: query137130.query137,
    query137Stream: query137130.query137Stream,
    query138: query138131.query138,
    query138Stream: query138131.query138Stream,
    query139: query139132.query139,
    query139Stream: query139132.query139Stream,
    query141: query141133.query141,
    query141Stream: query141133.query141Stream,
    query144: query144134.query144,
    query144Stream: query144134.query144Stream,
    query146: query146135.query146,
    query146Stream: query146135.query146Stream,
    query148: query148136.query148,
    query148Stream: query148136.query148Stream,
    query149: query149137.query149,
    query149Stream: query149137.query149Stream,
    query150: query150138.query150,
    query150Stream: query150138.query150Stream,
    query151: query151139.query151,
    query151Stream: query151139.query151Stream,
    query152: query152140.query152,
    query152Stream: query152140.query152Stream,
    query153: query153141.query153,
    query153Stream: query153141.query153Stream,
    query154: query154142.query154,
    query154Stream: query154142.query154Stream,
    query155: query155143.query155,
    query155Stream: query155143.query155Stream,
    query156: query156144.query156,
    query156Stream: query156144.query156Stream,
    query157: query157145.query157,
    query157Stream: query157145.query157Stream,
    query158: query158146.query158,
    query158Stream: query158146.query158Stream,
    query159: query159147.query159,
    query159Stream: query159147.query159Stream,
    query161: query161148.query161,
    query161Stream: query161148.query161Stream,
    query163: query163149.query163,
    query163Stream: query163149.query163Stream,
    query164: query164150.query164,
    query164Stream: query164150.query164Stream,
    query165: query165151.query165,
    query165Stream: query165151.query165Stream,
    query166: query166152.query166,
    query166Stream: query166152.query166Stream,
    query167: query167153.query167,
    query167Stream: query167153.query167Stream,
    query168: query168154.query168,
    query168Stream: query168154.query168Stream,
    query169: query169155.query169,
    query169Stream: query169155.query169Stream,
    query170: query170156.query170,
    query170Stream: query170156.query170Stream,
    query171: query171157.query171,
    query171Stream: query171157.query171Stream,
    query172: query172158.query172,
    query172Stream: query172158.query172Stream,
    query173: query173159.query173,
    query173Stream: query173159.query173Stream,
    query174: query174160.query174,
    query174Stream: query174160.query174Stream,
    query175: query175161.query175,
    query175Stream: query175161.query175Stream,
    query176: query176162.query176,
    query176Stream: query176162.query176Stream,
    query177: query177163.query177,
    query177Stream: query177163.query177Stream,
    query178: query178164.query178,
    query178Stream: query178164.query178Stream,
    query179: query179165.query179,
    query179Stream: query179165.query179Stream,
    query180: query180166.query180,
    query180Stream: query180166.query180Stream,
    query181: query181167.query181,
    query181Stream: query181167.query181Stream,
    query183: query183168.query183,
    query183Stream: query183168.query183Stream,
    query184: query184169.query184,
    query184Stream: query184169.query184Stream,
    query185: query185170.query185,
    query185Stream: query185170.query185Stream,
    query186: query186171.query186,
    query186Stream: query186171.query186Stream,
    query187: query187172.query187,
    query187Stream: query187172.query187Stream,
    query188: query188173.query188,
    query188Stream: query188173.query188Stream,
    query189: query189174.query189,
    query189Stream: query189174.query189Stream,
    query190: query190175.query190,
    query190Stream: query190175.query190Stream,
    query191: query191176.query191,
    query191Stream: query191176.query191Stream,
    query192: query192177.query192,
    query192Stream: query192177.query192Stream,
    query193: query193178.query193,
    query193Stream: query193178.query193Stream,
    query194: query194179.query194,
    query194Stream: query194179.query194Stream,
    query195: query195180.query195,
    query195Stream: query195180.query195Stream,
    query196: query196181.query196,
    query196Stream: query196181.query196Stream,
    query197: query197182.query197,
    query197Stream: query197182.query197Stream,
    query198: query198183.query198,
    query198Stream: query198183.query198Stream,
    query199: query199184.query199,
    query199Stream: query199184.query199Stream,
    query201: query201185.query201,
    query201Stream: query201185.query201Stream,
    query203: query203186.query203,
    query203Stream: query203186.query203Stream,
    query204: query204187.query204,
    query204Stream: query204187.query204Stream,
    query205: query205188.query205,
    query205Stream: query205188.query205Stream,
    query206: query206189.query206,
    query206Stream: query206189.query206Stream,
    query208: query208190.query208,
    query208Stream: query208190.query208Stream,
    query209: query209191.query209,
    query209Stream: query209191.query209Stream,
    query210: query210192.query210,
    query210Stream: query210192.query210Stream,
    query211: query211193.query211,
    query211Stream: query211193.query211Stream,
    query212: query212194.query212,
    query212Stream: query212194.query212Stream,
    query213: query213195.query213,
    query213Stream: query213195.query213Stream,
    query214: query214196.query214,
    query214Stream: query214196.query214Stream,
    query215: query215197.query215,
    query215Stream: query215197.query215Stream,
    query216: query216198.query216,
    query216Stream: query216198.query216Stream,
    query217: query217199.query217,
    query217Stream: query217199.query217Stream,
    query218: query218200.query218,
    query218Stream: query218200.query218Stream,
    query219: query219201.query219,
    query219Stream: query219201.query219Stream,
    query220: query220202.query220,
    query220Stream: query220202.query220Stream,
    query221: query221203.query221,
    query221Stream: query221203.query221Stream,
    query223: query223204.query223,
    query223Stream: query223204.query223Stream,
    query224: query224205.query224,
    query224Stream: query224205.query224Stream,
    query225: query225206.query225,
    query225Stream: query225206.query225Stream,
  ),
  tasks: (
    createTask: createTask207.createTask,
    getAllTasks: getAllTasks208.getAllTasks,
    getAllTasksStream: getAllTasks208.getAllTasksStream,
    getTask: getTask209.getTask,
    getTaskStream: getTask209.getTaskStream,
    getTasksByStatus: getTasksByStatus210.getTasksByStatus,
    getTasksByStatusStream: getTasksByStatus210.getTasksByStatusStream,
    searchTasks: searchTasks211.searchTasks,
    searchTasksStream: searchTasks211.searchTasksStream,
    updateTaskText: updateTaskText212.updateTaskText,
    toggleTaskCompletion: toggleTaskCompletion213.toggleTaskCompletion,
    setTaskCompletion: setTaskCompletion214.setTaskCompletion,
    updateTask: updateTask215.updateTask,
    deleteTask: deleteTask216.deleteTask,
    deleteCompletedTasks: deleteCompletedTasks217.deleteCompletedTasks,
    deleteAllTasks: deleteAllTasks218.deleteAllTasks,
    getTaskCount: getTaskCount219.getTaskCount,
    getTaskCountStream: getTaskCount219.getTaskCountStream,
  ),
);
