import 'package:cafeposlite/services/customsearchdelegate.dart';
import 'package:cafeposlite/services/demodataservice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cafeposlite/components/navpackages.dart';
import 'package:cafeposlite/models/modelpackages.dart';

class ResMenuItem extends StatefulWidget {
  const ResMenuItem({Key? key}) : super(key: key);

  @override
  State<ResMenuItem> createState() => _ResMenuItemState();
}

class _ResMenuItemState extends State<ResMenuItem> {

   List<ItemCode> itemCodes = <ItemCode>[];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                   SizedBox(
                    height: 55,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,

                        children: [
                          IconButton(
                              onPressed:(){
                                showSearch(context: context, delegate: CustomSearchDelegate());
                              },
                              iconSize: 24,
                              splashRadius: 20,
                              icon: const Icon(Icons.search,color: Color(0xFF0cb5f3),)),
                          IconButton(
                              onPressed: (){},
                              iconSize: 24,
                              splashRadius: 20,
                              icon: const Icon(Icons.grid_view_rounded,color: Color(0xFF0cb5f3),)),
                          IconButton(
                              onPressed: (){},
                              iconSize: 24,
                              splashRadius: 20,
                              icon: const Icon(Icons.view_agenda_rounded,color: Color(0xFF0cb5f3),)),

                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder(
                      future: DemoDataService().getDemoDataList(),
                      builder: (context,snapshot) {

                        if(snapshot.hasData)
                          {
                            return ListView(
                              children: [
                                Wrap(
                                  spacing: 4.0,
                                  children: snapshot.data!.map((item) => Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ProductCardView(itemCode: item),
                                  )).toList(),
                                )
                              ],
                            );
                          }
                        return const Center(
                          child: CupertinoActivityIndicator(),
                        );

                      }
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 400,
              child: InvoiceView()
            )
          ],
        ),
      ),
    );
  }
}
