import 'package:bloc/bloc.dart';
import 'package:femon/modules/favorites_screen/favorites.dart';
import 'package:femon/modules/more_screen/more.dart';
import 'package:femon/modules/updates/updates.dart';
import 'package:femon/status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modules/explore_screen/explore.dart';

class NawyCubit extends Cubit<NawyStatus>{
  NawyCubit() : super (InitialNawyState());
  static NawyCubit get(context)=>BlocProvider.of(context);
  TextEditingController ? searchController;
  var currentIndex =0;
  List<Widget>screens=[
    const ExploreScreen(),
    UpdateScreen(),
    FavoritesScreen(),
    MoreScreen(),
  ];
  List<BottomNavigationBarItem> navBarItem=[
    const BottomNavigationBarItem(icon:Icon(Icons.search),label: "Explore"),
    const BottomNavigationBarItem(icon:Icon(Icons.dashboard),label: "updates"),
    const BottomNavigationBarItem(icon:Icon(Icons.favorite_border),label: "Favorites"),
    const BottomNavigationBarItem(icon:Icon(Icons.more_vert),label: "more"),
  ];
  void changeItemBarIndex(index) {
    currentIndex = index;
    emit(ChangeNawyBarItem());
  }


  RangeValues values=RangeValues(10, 90);
  void change(value){
    values=value;
    emit(ChangeNawySliderRange());


  }

  var fristPrice= "1";
  List <DropdownMenuItem>priceList=[
    DropdownMenuItem(child: Text(" 1"),value: "1",
      onTap: (){},
    ),
    DropdownMenuItem(child: Text(" 2"),value: "2",
      onTap: (){},
    ),
    DropdownMenuItem(child: Text(" 3"),value: "3",
      onTap: (){},
    ),
    DropdownMenuItem(child: Text(" 4"),value: "4",
      onTap: (){},
    ),
  ];

  void selectedPrice(newPrice){
    fristPrice=newPrice;

    emit(changeDropDownSelectedState());
  }



}