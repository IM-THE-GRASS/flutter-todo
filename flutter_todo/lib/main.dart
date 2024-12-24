import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> _todos = [];
  final TextEditingController _controller = TextEditingController();

  void _addTodo(String todo) {
    setState(() {
      _todos.add(todo);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF111110),
      child: LayoutBuilder(
        builder:(BuildContext context, BoxConstraints constraints) {
          return Center(

            child: Container(
              color: const Color(0xFF191918),
              width: constraints.maxWidth * 0.75,
              height: constraints.maxHeight * 0.9,  
              child: Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    margin: EdgeInsets.only(top: constraints.maxHeight * 0.05),
                    child: Text(
                      "todo app",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                  ),
                  Center(
                    child: Row(
                      children: [
                        IconButton(
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
                          icon: Icon(Icons.add), 
                          color: Colors.white
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );

        },
      ),
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
        textTheme: Typography.blackMountainView
      ),
    );
  }
}




