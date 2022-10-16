import 'package:alumni_app/provider/users.dart';
import 'package:alumni_app/routes/app_routes.dart';
import 'package:alumni_app/views/user_form.dart';
import 'package:alumni_app/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      const AlumniApp(),
    );

class AlumniApp extends StatelessWidget {
  const AlumniApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            //atributo create recebe função do contexto
            //cria um novo change notifier, toda aplicação tem acesso a essa lista de usuários
            create: (ctx) => Users(),
          )
        ],
        child: MaterialApp(
          title: 'Alumni',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          //Rota do componente de navegação
          routes: {
            AppRoutes.home: (_) => const UserList(),
            AppRoutes.userForm: (_) => const UserForm(),
          },
        ));
  }
}
