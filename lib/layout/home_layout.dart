import 'package:charity_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),

      child: BlocConsumer<AppCubit,AppStates>(
        listener:(context,state){} ,
        builder: (context,state){
          AppCubit cubit=AppCubit.get(context);

          return Scaffold(
            appBar: AppBar(

              backgroundColor: Colors.white,

              title:  Text("${cubit.screens[cubit.currentIndex]}",style: const TextStyle(color: Colors.black),),
              actions: [
                TextButton(onPressed: (){
                  cubit.changeSideBar(0);

                }, child: const Text("Main screen"))
              ],
            ),
            body: Row(

              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(
                  child:
                  Column(
                    children:  [
                      Expanded(
                        child: Row(
                          children: [

                            itemBuilder(
                                text: "اضافة مستفيد",
                                path: "assets/images/add.png",
                                onTap: () {
                                  print("اضافة مستفيد");
                                  cubit.changeSideBar(1);
                                }
                            ),

                            itemBuilder(
                                text: "اضافة طلب مستفيد",
                                path: "assets/images/plus.png",
                                onTap: (){
                                print("اضافة طلب مستفيد");
                                cubit.changeSideBar(2);
                            }
                            ),

                            itemBuilder(
                                text: "تلبية طلب مستفيد",
                                path: "assets/images/fulfill a request.png",
                                onTap: (){
                                  print("تلبية طلب مستفيد");
                                  cubit.changeSideBar(3);
                                }
                                ),

                          ],
                        ),
                      ),

                      Expanded(
                        child: Row(
                          children: [

                            itemBuilder(
                                text: "اعلان عن حاجة",
                                path: "assets/images/ad of a need.png",
                                onTap: (){
                                  print("اعلان عن حاجة");
                                  cubit.changeSideBar(4);

                                }),

                            itemBuilder(text: "اعلان عن فائض",
                                path: "assets/images/ad of surplus.png",
                                onTap: (){
                              print("اعلان عن فائض");
                              cubit.changeSideBar(5);
                            }
                            ),


                          ],
                        ),
                      ),

                      Expanded(
                        child: Row(
                          children: [

                            itemBuilder(
                                text: "تعديل بيانات مستفيد",
                                path: "assets/images/edit beneficiary information.png",
                                onTap: (){
                                  print("تعديل بيانات مستفيد");
                                  cubit.changeSideBar(6);
                                }
                            ),

                            itemBuilder(text: "تعديل بيانات الجمعية",
                                path: "assets/images/editing the information of a charitable organization.png",
                                onTap: (){
                              print("تعديل بيانات جمعية");
                              cubit.changeSideBar(7);
                            }
                            ),

                          ],
                        ),
                      ),

                      Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Colors.green,
                          child: Column(
                            children: const [
                              Text("احصائيات"),
                              Text("-- الاحصائيات --"),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        height: 30,
                        child: defaultButton(text: 'تسجيل خروج', function: () { print("تسجيل خروج"); },

                        ),

                      ),

                    ],
                  ),
                ),

                Expanded(flex: 3,child: Container(
                  child: cubit.screens[cubit.currentIndex],
                ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

