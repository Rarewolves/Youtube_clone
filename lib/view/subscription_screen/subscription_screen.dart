import 'package:flutter/material.dart';
import 'package:youtube_clone/utils/colorconstant/colorconstant.dart';
import 'package:youtube_clone/utils/database/database.dart';
import 'package:youtube_clone/view/home_screen/widgets/container_card/container_card.dart';
import 'package:youtube_clone/view/home_screen/widgets/suggetion_card/suggetion_card.dart';
import 'package:youtube_clone/view/subscription_screen/subscription_card/subscription_card.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryblack,
      body: CustomScrollView(slivers: [
         SliverAppBar(
            backgroundColor: ColorConstant.primaryblack,
            expandedHeight: 221,
            floating: true,
          flexibleSpace: FlexibleSpaceBar(
            
            background:   Column(
              children: [SizedBox(height: 40,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           
                  children: [
                    
                  
                  Row(children: [
                    SizedBox(width: 12),
                   
                Image.asset("assets/icons/youtube.png",scale: 18,),
                SizedBox(width: 5,),
                Text('YouTube',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: ColorConstant.primarywhite),)
          ],),
          Row(
                children: [
                 Image.asset("assets/icons/cast.png",scale: 18,color: ColorConstant.primarywhite,),
                 SizedBox(width: 18,),
                Image.asset("assets/icons/bell.png",scale: 24,color: ColorConstant.primarywhite,),
                 SizedBox(width: 18,),
                          Image.asset("assets/icons/search.png",scale: 21,color: ColorConstant.primarywhite,),
                          SizedBox(width: 15,)
                         
          ],)
                  
                ],),
                SizedBox(height: 10),
                SubscriptionCard(imagelist:DataBase.subscriptionstoryList),
                SizedBox(height: 8),
                 SuggetionCard(mylist: DataBase.subscriptionList,) ,
              ],
            ),
          ),
          
            
            
          

          ),
            SliverToBoxAdapter(
          child: Column(children: List.generate(DataBase.subscriptioncontainercardList.length, (index) =>
             ContainerCard(textlist: DataBase.subscriptioncontainercardList[index]["textlist"],title: DataBase.subscriptioncontainercardList[index]["Name"],image: DataBase.subscriptioncontainercardList[index]["Image"],avatarimage: DataBase.subscriptioncontainercardList[index]["avatarImage"]),
          
          
          ),),
         )
        
      ],),
    );
  }
}