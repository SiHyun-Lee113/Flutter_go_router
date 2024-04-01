import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_v7/layout/default_layout.dart';

class QueryParameterScreen extends StatelessWidget {
  const QueryParameterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [
          Text(
              'Query Param : ${GoRouterState.of(context).uri.queryParameters}'),
          ElevatedButton(
            onPressed: () {
              context.push(
                Uri(path: '/query_param', queryParameters: {
                  'name': 'codefactory',
                  'age': '21',
                }).toString(),
              );
            },
            child: Text('Query Parameter'),
          ),
        ],
      ),
    );
  }
}
