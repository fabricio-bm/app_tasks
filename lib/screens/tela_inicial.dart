
import 'package:app_tasks/components/tasks.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  bool opacidade = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter: Primeiros Passos'),
        leading: const Icon(Icons.add_task),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: Container(
          color: const Color.fromARGB(255, 208, 221, 237),
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Tasks('Estudar Flutter', 'assets/images/flutter.png', 3),
              ),
              Tasks('Academia', 'assets/images/academia.png', 4),
              Tasks('Estudar', 'assets/images/estudar.png', 1),
              Tasks('Programar', 'assets/images/programador.png', 4),
              Tasks(
                'Jogar',
                'assets/images/jogar.png',
                0,
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        backgroundColor: Colors.blue[100],
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
