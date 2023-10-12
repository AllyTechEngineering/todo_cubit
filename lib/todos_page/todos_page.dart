import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:todo_cubit/cubits/cubits.dart';
import 'package:todo_cubit/todos_page/create_todo.dart';
import 'package:todo_cubit/todos_page/search_and_filter_todo.dart';
import 'package:todo_cubit/todos_page/show_todos.dart';
import 'package:todo_cubit/todos_page/todos_header.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.description_outlined,
              // color: Colors.white,
            ),
            // iconSize: 40.0,
            onPressed: () {},
          ),
          centerTitle: true,
          // backgroundColor: Colors.blueAccent,
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Boating Check List',
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
                // color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Column(
              children: [
                TodoHeader(),
                CreateTodo(),
                SizedBox(
                  height: 20.0,
                ),
                SearchAndFilterTodo(),
                ShowTodos(),
              ],
            ),
          ),
        ),
      ),
    );
  } //Widget build
} //class TodosPage


