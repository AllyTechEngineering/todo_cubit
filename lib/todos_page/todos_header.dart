import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit/cubits/cubits.dart';

class TodoHeader extends StatelessWidget {
  const TodoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Checklist:',
          style: TextStyle(fontSize: 30.0),
        ),
        // BlocBuilder<ActiveTodoCountCubit, ActiveTodoCountState>(
        //   builder: (context, state) {
        //     return Text(
        //       '${state.activeTodoCount} items left',
        //       style: TextStyle(fontSize: 30.0, color: Colors.redAccent),
        //     );
        //   },
        // ),
        Text('${context.watch<ActiveTodoCountCubit>().state.activeTodoCount} items left',
          style: TextStyle(fontSize: 30.0, color: Color.fromARGB(255, 255, 68, 109)),
        ),
      ],
    );
  } // Widget build
} //class TodoHeader