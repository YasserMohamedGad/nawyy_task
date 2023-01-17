import 'package:femon/cubit.dart';
import 'package:femon/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class UpdateScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NawyCubit(),
      child: BlocConsumer<NawyCubit,NawyStatus>(
        listener: (state,context){

        },builder: (state,context){

        return Column(
          children: [
            Text(" Updates"),
          ],

        );
      },

      ),
    );
  }
}
