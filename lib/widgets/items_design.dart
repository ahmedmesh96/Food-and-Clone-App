import 'package:flutter/material.dart';
import 'package:sellers_app/mainScreens/items_screen.dart';
import 'package:sellers_app/model/items.dart';
import 'package:sellers_app/model/menus.dart';


class ItemsDesignWidget extends StatefulWidget {
  Items? model;
  BuildContext? context;

  ItemsDesignWidget({this.context, this.model});

  @override
  State<ItemsDesignWidget> createState() => _ItemsDesignWidgetState();
}

class _ItemsDesignWidgetState extends State<ItemsDesignWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (c) => ItemsScreen(
        //   model: widget.model
        // )));
      },
      splashColor: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: 295,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            Divider(
              height: 4,
              thickness: 3,
              color: Colors.grey[300],
            ),
            const SizedBox(
              height: 2.0,
            ),
            Text(
              widget.model!.title!,
              style: const TextStyle(
                  color: Colors.cyan, fontSize: 20.0, fontFamily: "TrainOne"),
            ),
            Image.network(
              widget.model!.thumbanilUrl!,
              height: 220.0,
              fit: BoxFit.cover,
            ),
            
            Text(
              widget.model!.shortInfo!,
              style: const  TextStyle(
                  color: Colors.grey, fontSize: 20.0, fontFamily: "TrainOne"),
            ),
            Divider(
              height: 4,
              thickness: 3,
              color: Colors.grey[300],
            ),
          ]),
        ),
      ),
    );
  }
}
