import 'package:charity_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,

        title: const Text("The main facade",style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: (){}, icon:const Icon(Icons.add_alert_sharp),)
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

                   itemBuilder(text: "اضافة مستفيد", path: "assets/images/add.png",onTap: (){print("اضافة مستفيد");}),

                   itemBuilder(text: "اضافة طلب مستفيد", path: "assets/images/plus.png",onTap: (){print("اضافة طلب مستفيد");}),

                  itemBuilder(text: "تلبية طلب مستفيد", path: "assets/images/fulfill a request.png",onTap: (){print("تلبية طلب مستفيد");}),

                 ],
               ),
             ),

              Expanded(
                child: Row(
                  children: [

                    itemBuilder(text: "اعلان عن حاجة", path: "assets/images/ad of a need.png",onTap: (){print("اعلان عن حاجة");}),

                    itemBuilder(text: "اعلان عن فائض", path: "assets/images/ad of surplus.png",onTap: (){print("اعلان عن فائض");}),


                  ],
                ),
              ),






              Expanded(
                child: Row(
                  children: [

                    itemBuilder(
                      text: "تعديل بيانات مستفيد",
                      path: "assets/images/edit beneficiary information.png",onTap: (){print("تعديل بيانات مستفيد");}
                    ),

                    itemBuilder(text: "تعديل بيانات الجمعية", path: "assets/images/editing the information of a charitable organization.png",onTap: (){print("تعديل بيانات جمعية");}),

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
            color: Colors.black,
          ),),
        ],
      ),
    );  }
}
