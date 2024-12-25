import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}







class addTask extends StatefulWidget {
  const addTask({super.key});
  
  @override
  State<addTask> createState() => addTaskState();
}

class addTaskState extends State<addTask> {
  List<String> _todos = [];
  final TextEditingController _controller = TextEditingController();

  void _addTodo(String todo) {
    setState(() {
      _todos.add(todo);
    });
  }
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text(
            "Add Todo",
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
              color: Colors.white
            ),
          ),
          content: TextField(
            controller: _controller,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Colors.white
            ),
          ),
          backgroundColor: const Color(0xFF191918),
        )
      ),
      icon: Row(
        children: [
          Icon(
            Icons.add,
            color: Colors.white,
          ),
          SizedBox(width: 0),
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Text("Add Todo", style: Theme.of(context).textTheme.headlineMedium,),
          )
        ]
        
      ), 
      color: Colors.white,
      iconSize: 30
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF111110),
      child: Center(
        child: Container(
          color: const Color(0xFF191918),
          width: 900,
          height: 700,  
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "todo app",
                  style: Theme.of(context).textTheme.displayLarge
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  addTask(),
                ],
              )
            ],
          ),
        ),
      )
    ); 
  }
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      theme: ThemeData(
        textTheme: Typography.blackMountainView.copyWith(
          displayLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800
          ),
          headlineMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400
          ),
        )
      ),
    );
  }
}




