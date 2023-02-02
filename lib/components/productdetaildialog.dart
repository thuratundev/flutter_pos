import 'package:cafeposlite/models/ItemCode.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget getProductDetailDialog(BuildContext context,{required ItemCode itemCode})
{
  return AlertDialog(
    title: Text(itemCode.description.toString(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
    content: SingleChildScrollView(
      child: SizedBox(
        width: 220,
        height: 350,
        child: StatefulBuilder(
          builder: (context,setInnerState) => Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Image.network('${itemCode.imgUrl}',
                  alignment: Alignment.center,fit: BoxFit.fitWidth,),
              ),
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Text(itemCode.secondDescription.toString(),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(NumberFormat.currency(locale: 'en-US',symbol: '',decimalDigits: 0).format(itemCode.salePrice),
                      maxLines: 2,
                      style: const TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),),
                    const Spacer(),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(onPressed: ()
                    {
                      setInnerState(()=> { itemCode.unitQty = (itemCode.unitQty??0)+1});

                    },
                      splashRadius: 10,
                      icon:const Icon(Icons.add_circle_rounded),color: Colors.blueAccent,),
                    const Spacer(),
                    Text(itemCode.unitQty.toString()),
                    const Spacer(),
                    IconButton(onPressed: ()
                    {
                      setInnerState(()=> { itemCode.unitQty = (itemCode.unitQty??0) - 1});
                    },splashRadius: 10,
                      icon:const Icon(Icons.remove_circle_rounded),color: Colors.blueAccent,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.pop(context, 'Cancel'),
        child: const Text('Cancel'),
      ),
    ],
  );
}