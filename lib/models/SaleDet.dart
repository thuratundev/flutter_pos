
class SaleDet
{
  int sr;
  int code;
  String usrCode;
  String description;
  int unitQty;
  double? salePrice;
  double? amount;



  SaleDet(
  {
    required this.sr,
    required this.code,
    required this.usrCode,
    required this.description,
    required this.unitQty,
    this.salePrice,
    this.amount,
  });
}