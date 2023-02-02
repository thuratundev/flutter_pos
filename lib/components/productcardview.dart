import 'package:cafeposlite/components/productdetaildialog.dart';
import 'package:cafeposlite/models/modelpackages.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductCardView extends StatelessWidget {
  const ProductCardView({Key? key,
    required this.itemCode,
    this.clickDetail
  }) : super(key: key);

  final ItemCode itemCode;
  final Function(String)? clickDetail;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clickDetail?.call(""),
      child: Material(
        elevation: 5,
        borderRadius:const BorderRadius.all(Radius.circular(5)),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 150,
            // height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network('${itemCode.imgUrl}',

                            alignment: Alignment.center,fit: BoxFit.contain,
                            loadingBuilder: (BuildContext context,Widget child,ImageChunkEvent? loadingProgress){
                              if(loadingProgress == null)
                                {
                                  return child;
                                }
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes != null ?
                                         loadingProgress.cumulativeBytesLoaded/ loadingProgress.expectedTotalBytes!
                                  :null,
                                ),
                              );

                            },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    child: Text(itemCode.usrCode,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                             softWrap: false,
                              style: Theme.of(context).textTheme.bodySmall,
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Text(itemCode.description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),),
                ),
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
                      IconButton(onPressed: ()=>showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => getProductDetailDialog(context,itemCode: itemCode)
                      )
                      ,padding: const EdgeInsets.all(2),splashRadius: 20, icon: const Icon(Icons.add_circle_rounded, color: Colors.blueAccent,))
                    ],
                    ),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
