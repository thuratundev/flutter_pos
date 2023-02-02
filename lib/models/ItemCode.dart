
class ItemCode
{
  final int code;
  final String usrCode;
  final String description;
  final double salePrice;
  String? secondDescription;
  int? unitQty;
  double? amount;
  final String? remark;
  final String? imgUrl;

  ItemCode({
    required this.code,
    required this.usrCode,
    required this.description,
    required this.salePrice,
    this.secondDescription,
    this.unitQty,
    this.remark,
    this.imgUrl
});
}
