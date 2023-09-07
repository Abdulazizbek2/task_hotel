// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../application/auth/auth_bloc.dart';
// import '../../../domain/auth/auth_failure.dart';
// import '../../../infrastructure/apis/apis.dart';
// import '../../../infrastructure/repositories/auth_repo.dart';
// import '../../../infrastructure/repositories/image_upload.dart';
// import '../../routes/routes.dart';

// class HomeControl extends StatelessWidget {
//   final AuthFailure? authFailure;

//   const HomeControl({Key? key, required this.authFailure}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => AuthBloc(
//             context.read<AuthRepository>(),
//             ImageUploadRepo(
//               ImageUploadService.create(),
//             ),
//           )..add(const AuthEvent.checkAuth()),
//         ),
//       ],
//       child: BlocListener<AuthBloc, AuthState>(
//         listener: (context, state) {
//           if (state.proceedToHome) {
//             Navigator.push(context, AppRoutes.getHome());
//           } else {
//             Navigator.push(context, AppRoutes.authIntro());
//           }
//         },
//         child: const SizedBox(
//           child: Center(
//             child: Text("Splash"),
//           ),
//         ),
//       ),
//     );
//   }
// }
