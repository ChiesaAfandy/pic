class RequestModel{
  String item;
  String amount;
  String unit;

  RequestModel({
    this.item,
    this.unit,
    this.amount
  });

 factory RequestModel.fromJson(Map<String, dynamic> json) {
    return RequestModel(
      item: json['item'],
      unit: json['unit'],
      amount: json['amount'],
    );
  }
  
 
 }