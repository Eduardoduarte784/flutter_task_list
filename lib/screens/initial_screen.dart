import 'package:flutter/material.dart';
import 'package:flutter_task_list/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool showTasks = true;

  @override
  Widget build(BuildContext context) {
    const String pathToImages = 'assets/images/';

    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: showTasks ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task('Aprender Flutter', '${pathToImages}flutter.png', 3),
            Task('Andar de Bike', '${pathToImages}bike.webp', 2),
            Task('Meditar', '${pathToImages}meditar.jpeg', 5),
            Task('Ler', '${pathToImages}ler.jpg', 4),
            Task('Jogar', '${pathToImages}jogar.jpg', 1),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(
            () => showTasks = !showTasks,
          )
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
