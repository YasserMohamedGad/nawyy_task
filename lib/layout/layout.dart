import 'package:femon/cubit.dart';
import 'package:femon/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);
  @override
  Widget build( context) {
    return BlocProvider(
      create: (context)=>NawyCubit(),
      child: BlocConsumer<NawyCubit,NawyStatus>(
        listener: (context,state){},
        builder: (context,state){
          NawyCubit cubit =NawyCubit.get(context);
         return Scaffold(
            appBar: AppBar(
              title: Text("Search",style: TextStyle(color: Colors.black),),

            ),
            bottomNavigationBar: BottomNavigationBar(items:cubit.navBarItem,
              currentIndex: cubit.currentIndex,
              type: BottomNavigationBarType.fixed,

            onTap: (index){
             cubit.changeItemBarIndex(index);
            },
              selectedItemColor: Colors.deepOrange,
            ),
            body:cubit.screens[cubit.currentIndex],
          );
        },
      ),
    );
  }
}



