import 'package:cafeposlite/services/demodataservice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cafeposlite/models/modelpackages.dart';
import 'package:intl/intl.dart';


class InvoiceView extends StatefulWidget {
  const InvoiceView({Key? key}) : super(key: key);

  @override
  State<InvoiceView> createState() => _InvoiceViewState();
}

class _InvoiceViewState extends State<InvoiceView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Material(
            elevation: 2,
            child: Padding(padding: const EdgeInsets.all(4),
            child: Column(
              children:  [
               const SizedBox(
                  height: 50,
                  child: Center(
                      child:Text('# Invoice',style: TextStyle(color: Color(0xFFF2940D),fontWeight: FontWeight.bold,fontSize: 36) ),
                  ),
                ),
               const SizedBox(
                  height: 30,
                ),
                Expanded(child:
                FutureBuilder(
                  future: DemoDataService().getDemoInvoiceData(),
                  builder: (context,snapshot)
                  {
                    if(snapshot.hasData)
                      {
                        return  DataTable(
                          showBottomBorder: true,
                          dataTextStyle: const TextStyle(color: Color(0xFF001522),fontSize: 11,fontWeight: FontWeight.w600),
                          headingTextStyle: const TextStyle(color: Color(0xFF0D6BF2),fontSize: 13, fontWeight: FontWeight.w700),
                          headingRowHeight: 40,
                          dividerThickness: .6,
                          columns:const [
                            DataColumn(label: Text('Sr')),
                            DataColumn(label: Text('Description')),
                            DataColumn(label: Text('Amount')),
                            DataColumn(label: Text('')),
                          ],
                          rows: snapshot.data!.map((item) =>
                              DataRow(cells: [
                                DataCell(Text(item.sr.toString())),
                                DataCell(Text('${item.description} x ${item.unitQty}')),
                                DataCell(Text(NumberFormat.currency(locale: 'en-US',symbol: '',decimalDigits: 0).format(item.amount))),
                                DataCell(IconButton(onPressed: (){}, splashRadius: 20, icon: const Icon(Icons.delete_rounded,color: Colors.red,size: 18,))),
                              ])
                          ).toList(),

                        );
                      }

                    return const Center(
                      child: CupertinoActivityIndicator(),
                    );
                  },
                )

                ),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0x2600d0ff)
                  ),
                  child: SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(children: const [
                            Text('Total Qty',style: TextStyle(fontSize:20,fontWeight: FontWeight.w600),),
                            Spacer(),
                            Text('10',style :TextStyle(fontSize: 23,fontWeight: FontWeight.w600))
                          ],),
                          const SizedBox(height: 20,),
                          Row(children: const [
                            Text('Total Amount',style: TextStyle(fontSize:20,fontWeight: FontWeight.w600),),
                            Spacer(),
                            Text('45,000',style :TextStyle(fontSize: 23,fontWeight: FontWeight.w600))
                          ],)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),),
          ),
        ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 8.0),
           child: SizedBox(
             width: double.infinity,
             height: 80,
            child: TextButton(onPressed: (){},
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all<double>(5),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontWeight: FontWeight.bold))

              ),
              child: const Text('CHECK OUT'),
            ),
        ),
         )
      ],
    );
  }
}
