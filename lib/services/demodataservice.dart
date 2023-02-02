
import 'dart:async';

import 'package:cafeposlite/models/SaleDet.dart';
import 'package:cafeposlite/models/modelpackages.dart';

class DemoDataService
{


  Future<List<ItemCode>> getDemoDataList()=>
    Future.delayed(const Duration(milliseconds: 5000),()
    {
      List<ItemCode> itemCodes = <ItemCode>[];
      itemCodes.add(ItemCode(code: 1, usrCode: '1001', description: 'Beef Burger', salePrice: 1500,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100',secondDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'));itemCodes.add(ItemCode(code: 2, usrCode: '1002', description: 'Pork Burger', salePrice: 1850,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100',secondDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),);
      itemCodes.add(ItemCode(code: 3, usrCode: '1003', description: 'Chicken Burger', salePrice: 4700,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100',secondDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),);
      itemCodes.add(ItemCode(code: 4, usrCode: '1004', description: 'Cheese Burger', salePrice: 6500,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100',secondDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),);
      itemCodes.add(ItemCode(code: 1, usrCode: '1001', description: 'Beef Burger', salePrice: 8000,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100',secondDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),);
      itemCodes.add(ItemCode(code: 2, usrCode: '1002', description: 'Pork Burger', salePrice: 10000,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100',secondDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),);
      itemCodes.add(ItemCode(code: 3, usrCode: '1003', description: 'Chicken Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100',secondDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),);
      itemCodes.add(ItemCode(code: 4, usrCode: '1004', description: 'Cheese Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100',secondDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),);
      itemCodes.add(ItemCode(code: 1, usrCode: '1001', description: 'Beef Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100',secondDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),);
      itemCodes.add(ItemCode(code: 2, usrCode: '1002', description: 'Pork Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 3, usrCode: '1003', description: 'Chicken Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 4, usrCode: '1004', description: 'Cheese Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 1, usrCode: '1001', description: 'Beef Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 2, usrCode: '1002', description: 'Pork Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 3, usrCode: '1003', description: 'Chicken Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 4, usrCode: '1004', description: 'Cheese Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 1, usrCode: '1001', description: 'Beef Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 2, usrCode: '1002', description: 'Pork Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 3, usrCode: '1003', description: 'Chicken Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 4, usrCode: '1004', description: 'Cheese Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 1, usrCode: '1001', description: 'Beef Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 2, usrCode: '1002', description: 'Pork Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 3, usrCode: '1003', description: 'Chicken Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 4, usrCode: '1004', description: 'Cheese Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 1, usrCode: '1001', description: 'Beef Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 2, usrCode: '1002', description: 'Pork Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 3, usrCode: '1003', description: 'Chicken Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 4, usrCode: '1004', description: 'Cheese Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 1, usrCode: '1001', description: 'Beef Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 2, usrCode: '1002', description: 'Pork Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 3, usrCode: '1003', description: 'Chicken Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      itemCodes.add(ItemCode(code: 4, usrCode: '1004', description: 'Cheese Burger', salePrice: 100.0,imgUrl: 'https://api.lorem.space/image/burger?w=150&h=100'),);
      return itemCodes;
    });

  Future<List<SaleDet>> getDemoInvoiceData()=> Future.delayed(const Duration(milliseconds: 5000),()
  {
    List<SaleDet> invoiceItems = <SaleDet>[];
    invoiceItems.add(SaleDet(sr: 1, code: 1, description: 'Pork Burger', usrCode: '001', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 2, code: 2, description: 'Chicken Burger', usrCode: '002', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 3, code: 3, description: 'Pork Burger', usrCode: '003', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 4, code: 4, description: 'Pork Burger', usrCode: '004', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 5, code: 5, description: 'Pork Burger', usrCode: '005', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 6, code: 6, description: 'Pork Burger', usrCode: '006', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 7, code: 7, description: 'Pork Burger', usrCode: '007', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 8,code: 8, description: 'Pork Burger', usrCode: '0018', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 9, code: 9, description: 'Pork Burger', usrCode: '001', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 1, code: 1, description: 'Pork Burger', usrCode: '001', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 2, code: 2, description: 'Chicken Burger', usrCode: '002', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 3, code: 3, description: 'Pork Burger', usrCode: '003', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 4, code: 4, description: 'Pork Burger', usrCode: '004', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 5, code: 5, description: 'Pork Burger', usrCode: '005', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 6, code: 6, description: 'Pork Burger', usrCode: '006', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 7, code: 7, description: 'Pork Burger', usrCode: '007', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 8,code: 8, description: 'Pork Burger', usrCode: '0018', unitQty: 1, salePrice: 2000, amount: 2000));
    invoiceItems.add(SaleDet(sr: 9, code: 9, description: 'Pork Burger', usrCode: '001', unitQty: 1, salePrice: 2000, amount: 2000));


    return invoiceItems;
  });
}