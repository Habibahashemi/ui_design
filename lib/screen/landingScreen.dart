import 'package:flutter/material.dart';
import 'package:ui_design/custom/BorderBox.dart';
import 'package:ui_design/utils/constants.dart';
import 'package:ui_design/utils/sample_data.dart';
import 'package:ui_design/utils/widget_functions.dart';

class Landingscreen extends StatelessWidget {
  const Landingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    final double padding = 25;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              addVerticalSpace(padding),
          Padding(
            padding: sidePadding ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Borderbox(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.menu,
                    color: COLOR_BLACK,
                  ),
                ),
                Borderbox(
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.settings,
                    color: COLOR_BLACK,
                  ),
                ),
              ],
            ),
          ),
          addVerticalSpace(padding),
          Padding(
            padding: sidePadding,
            child: Text("City,",style: themeData.textTheme.bodyText2,),
          ),
          padding(
            padding:sidePadding,
            child:Divider(
              height: padding,
              color: COLOR_GREY,
            ),
          ),
          addVerticalSpace(10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: ["<\$220,000","for sale","3-4 Beds",">1000 sqft"].map((filter) = >ChoiceOption(text: filter,)).toList(),
          ),
        ),
        addVerticalSpace(10),
        Expanded(
          child: Padding(
            padding: sidePadding,
            child: ListView.builder(
                itemCount: RE_DATA.length,
                itemBuilder: (context, index){
                  return RealEstateItem(itemData: RE_DATA[index]);
                }
            ),
          ),
        )
        ],
      ),
      Positioned(
        bottom: 20,
          width: size.width,
          child: OptionButton(
        icon:Icons.map_rounded,
        text:"Map View",
        width:size.width*0.35,
      ))
            ],
          )
        )
      ),
    );
  }
}
class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: COLOR_GREY.withAlpha(25)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 13),
      margin: const EdgeInsets.only(left: 25),
      child: Text(text, style: themeData.textTheme.headline5,),
    );
  }
}

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;

  const RealEstateItem({super.key, this.itemData});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Image.asset(itemData["image"]))
              Positioned(
    top: 15,
    right: 15,
    child: Borderbox(
      width: 50,
        height: 50,
        child: Icon(Icons.favorite_border,color: COLOR_BLACK,),
    ),
            ],
          ),
       addVerticalSpace(15),
       Row(
       children: [
         Text("${itemData["amount"]}",style: themeData.textTheme.heading1,)
    addHorizontalSpace(10),
    Text(
    "${itemData["address"]}",style: themeData.bodyText2,
    )
    ],
       ),
    addVerticalSpace(10),
    Text("${itemData["bedrooms"]} bedroom/${itemData["bedrooms"]} bedrooms/${itemData["area"]}sqft",style: themeData.textTheme.headline5,)
        ],
      ),
    );
  }
}
