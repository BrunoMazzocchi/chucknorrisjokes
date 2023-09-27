import 'package:chucknorrisjokes/utils/api/api_client.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataProvider extends StatelessWidget {
  final Widget child; 
  final String baseUrl; 
  
  const DataProvider({super.key, required this.child, required this.baseUrl});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => ApiClient(baseUrl: baseUrl),
        ), 
      ],
      child: child,
    );
  }
}