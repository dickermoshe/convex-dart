import 'package:api/src/convex/client.dart';
import 'package:api/src/convex/functions/primitive_returns/anyReturn.dart';
import 'package:flutter/material.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConvexClient.init(
    logging: true,
    onStateChange: (state) {
      print('WebSocket state changed: $state');
    },
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<AnyReturnResponse> anyReturnFuture;

  @override
  void initState() {
    super.initState();
    anyReturnFuture = anyReturn();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Convex Example')),
        body: Center(
          child: FutureBuilder(
            future: anyReturnFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.hasError) {
                return Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          anyReturnFuture = anyReturn();
                        });
                      },
                      child: Text('Retry'),
                    ),

                    Text('Error: ${snapshot.error}'),
                  ],
                );
              }
              if (snapshot.hasData) {
                return Text('Result: ${snapshot.data!.body}');
              }
              return Text('No data');
            },
          ),
        ),
      ),
    );
  }
}
