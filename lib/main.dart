import 'package:flutter/material.dart';
import 'package:galaxy_web3/app/routes/router_config.dart';
import 'package:galaxy_web3/app/routes/router_page.dart';
import 'package:galaxy_web3/modules/loadingpage/loading_page_srceen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Galaxy Web3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
