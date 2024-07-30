import 'package:dart_frog/dart_frog.dart';

import '../../models/user_model.dart';

Response onRequest(RequestContext context) {
  final request = context.request;
  final parms = request.uri.queryParameters;
  final user = User(
    name: parms['name']!,
    age: parms['age']!,
    role: parms['role']!,
  );
  return Response.json(
    body: {
      'message' :'user has been created' ,
      'user' : user.toJson(),
    },
    statusCode: 201,
  );
}
