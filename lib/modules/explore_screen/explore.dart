import 'package:femon/Result.dart';
import 'package:femon/component.dart';
import 'package:femon/cubit.dart';
import 'package:femon/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NawyCubit(),
      child: BlocConsumer<NawyCubit,NawyStatus>(
        listener: (context,state){
        },
        builder: (context,state){
          NawyCubit cubit =NawyCubit.get(context);
         return Column(
            children: [
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: TextFormField(
                 keyboardType:TextInputType.text ,
                 decoration: const InputDecoration(labelText: "Area,Compound,Developer",
                   prefixIcon:Icon(Icons.search,color: Colors.blue,),
                 border: OutlineInputBorder()),
                 controller: cubit.searchController,
               ),

             ),

              const SizedBox(
                height: 15,
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: DropdownButton(items:cubit.priceList,

                  onChanged: (onChanged){
                    cubit.selectedPrice(onChanged);
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                  dropdownColor: Colors.white,
                  iconSize: 20,
                  value:cubit.fristPrice,
                  elevation: 24 ,
                  isExpanded: true,

                  iconEnabledColor: Colors.blue,
                  iconDisabledColor: Colors.grey,
                  hint: const Text("any",style: TextStyle(color: Colors.black), ),

                ),
              ),


              const SizedBox(
               height: 15,
              ),

              Padding(

                padding: const EdgeInsetsDirectional.only(start: 15,end:15),
                child: Row(children: [


                  const Text("Rooms"),
                  const Spacer(),
                  Row(
                    children: [
                      Text("${cubit.values.start.round().toString()}",style: const TextStyle(color: Colors.grey),),
                      const Text("~",style: TextStyle(color: Colors.grey),),
                      Text("${cubit.values.end.round().toString()}",style: const TextStyle(color: Colors.grey),),
                      const Text(" rooms",style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ],

                ),
              ),

              RangeSlider(values: cubit.values, onChanged:
                  ( value){
                cubit.change(value);
              },
                max: 100,
                min: 0,
                divisions: 90,

              ),

             const SizedBox(height: 30,),
              
             Container(
               width:200,

               decoration: BoxDecoration( borderRadius: BorderRadiusDirectional.circular(10),color:Colors.blue),
               
               child: TextButton(onPressed: () {

                        navigateTo(context, Result());

               }, child:const Text("SHOW RESULTS",style: TextStyle(color: Colors.white),),),

             )


            ],
          );

      },

      ),
    );
  }
}
