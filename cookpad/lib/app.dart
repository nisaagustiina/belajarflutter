import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:user_repository/user_repository.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.authenticationRepository, required this.userRepository}) : super(key: key);

  final AuthenticationRepository authenticationRepository;
  final UserRepository userRepository;

  @override
  Widget build(BuildContext context) {
    return 
  }
}
