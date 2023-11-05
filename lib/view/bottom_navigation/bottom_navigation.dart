import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/view/home_screen/home_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedindex =0;
  List<Widget> widgetlist =[
    HomeScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: widgetlist,
        index: selectedindex,
      ),
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: selectedindex,
       type: BottomNavigationBarType.fixed,
       backgroundColor: ColorConstant.primaryblack,
       selectedItemColor: ColorConstant.primarywhite,
       unselectedItemColor: ColorConstant.primarywhite,
       selectedLabelStyle: TextStyle(fontSize: 8),
       unselectedLabelStyle: TextStyle(fontSize: 8),
       elevation: 0,

       
       onTap: (index) {
         selectedindex=index;
         setState(() {
           
         });
       },
        
        items: [
      BottomNavigationBarItem(icon:Image.asset("assets/icons/house-black-silhouette-without-door.png",scale: 20,color: selectedindex==0 ? ColorConstant.primarywhite:ColorConstant.primarywhite,),
      label: 'Home'
      
      ),
         BottomNavigationBarItem(icon:Image.asset("assets/icons/record.png",scale: 20,color: selectedindex==1 ? ColorConstant.primarywhite:ColorConstant.primarywhite,),
      label: 'Shorts'
      ),
       BottomNavigationBarItem(icon:CircleAvatar(backgroundColor: ColorConstant.primarywhite,radius: 22,child: 
       
       CircleAvatar(backgroundColor: ColorConstant.primaryblack,radius: 20,child: Image.asset("assets/icons/plus (1).png",scale: 20,color: ColorConstant.primarywhite,))
       
       ),
      label: ''
      ),
          BottomNavigationBarItem(icon:Image.asset("assets/icons/subscribe.png",scale: 20,color: selectedindex==2 ? ColorConstant.primarywhite:ColorConstant.primarywhite,),
      label: 'Scubscriptions'
      ),
          BottomNavigationBarItem(icon: CircleAvatar(radius: 18,backgroundColor: ColorConstant.primarywhite,),
      label: 'You'
      ),
      

      ]),
      
    );
  }
}