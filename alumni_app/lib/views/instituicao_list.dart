// // Create a Form widget.
    // Scaffold(
      //   appBar: AppBar(
      //     title: Text(appTitle),
      //     centerTitle: true,
      //     backgroundColor: Color.fromARGB(197, 9, 112, 201),
      //   ),
      //   body: TestForm(),
      // ),
    // );

// <script src="https://gist.github.com/alexandremcosta/c9361cc23722a5aa1133.js"></script>


// class TestForm extends StatefulWidget {
//   @override
//   TestFormState createState() {
//     return TestFormState();
//   }
// }

// // Create a corresponding State class, which holds data related to the form.
// class TestFormState extends State<TestForm> {
//   // Create a global key that uniquely identifies the Form widget
//   // and allows validation of the form.
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     // Build a Form widget using the _formKey created above.
//     return Form(
//       key: _formKey,
//       child: SingleChildScrollView(
//           reverse: true,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.all(5),
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     // ignore: unnecessary_const
//                     icon: const Icon(Icons.apartment),
//                     hintText: 'Selecione a instituição',
//                     labelText: 'Nome da Instituição',
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter some text';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(5),
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     // ignore: unnecessary_const
//                     icon: const Icon(Icons.school),
//                     hintText: 'Entre com seu nome curso',
//                     labelText: 'Nome do Curso',
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter some text';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(5),
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     icon: const Icon(Icons.calendar_today),
//                     hintText: 'Sua data de Entrada',
//                     labelText: 'Ano / Semestre de Entrada',
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Por favor digite uma data válida!';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(5),
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     icon: const Icon(Icons.calendar_today),
//                     hintText: 'Sua data de Saída',
//                     labelText: 'Ano / Semestre de Saída',
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Por favor digite uma data válida!';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(5),
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     icon: const Icon(Icons.flag),
//                     hintText: 'Selecione o País',
//                     labelText: 'País',
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Por favor selecione um país';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(5),
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     icon: const Icon(Icons.location_city),
//                     hintText: 'Digite o nome da Cidade',
//                     labelText: 'Cidade',
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Por favor digite uma cidade';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(5),
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     icon: const Icon(Icons.location_city),
//                     hintText: 'Digite o seu Estado',
//                     labelText: 'UF de residêncial Atual',
//                   ),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Por favor digite seu estado';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(197, 9, 112, 201),
//                   onSurface: Colors.black,
//                   elevation: 20,
//                   shadowColor: Colors.grey,
//                 ),
//                 child: Text('Cadastrar'),
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     // If the form is valid, display a Snackbar.
//                     Scaffold.of(context).showSnackBar(
//                         SnackBar(content: Text('Dados em processamento.')));
//                     return;
//                   }
//                   // _formKey.save();
//                 },
//               ),
//             ],
//           )),
//     );
//   }
// }
