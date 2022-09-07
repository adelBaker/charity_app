

import 'package:bloc/bloc.dart';
import 'package:charity_app/layout/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modules/add_recipient/add_recipient_screen.dart';
import '../../modules/add_recipient_request/add_recipient_request_screen.dart';
import '../../modules/ads_for_need/ads_for_need_screen.dart';
import '../../modules/ads_for_surplus/ads_for_surplus_screen.dart';
import '../../modules/editing_charity_information/editing_charity_information_screen.dart';
import '../../modules/editing_recipient_information/editing_recipient_information_screen.dart';
import '../../modules/main/main_screen.dart';
import '../../modules/meet_demands/meet_demands_screen.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit():super(AppInitialState());

  static AppCubit get(context)=>BlocProvider.of(context);

  int currentIndex=0;

  List<Widget> screens=[

    const MainScreen(),
    const AddRecipientScreen(),
    const AddRecipientRequestScreen(),
    const MeetDemandsScreen(),
    const AdsForNeedScreen(),
    const AdsForSurplusScreen(),
    const EditingRecipientInformationScreen(),
    EditingCharityInformationScreen(),


  ];

  void changeSideBar(int index)
  {
    currentIndex=index;
    emit(AppChangeSideBarState());
  }

}