class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;
  Map<String, String>? listPrice;
  Map<String, String>? retailPrice;
  SaleInfo(
      {this.country,
      this.saleability,
      this.isEbook,
      this.listPrice,
      this.retailPrice});

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        country: json['country'] as String?,
        saleability: json['saleability'] as String?,
        isEbook: json['isEbook'] as bool?,
        listPrice: (json['listPrice'] as Map<String, dynamic>?)
            ?.map((key, value) => MapEntry(key, value.toString())),
        retailPrice: (json['retailPrice'] as Map<String, dynamic>?)
            ?.map((key, value) => MapEntry(key, value.toString())),
      );

  Map<String, dynamic> toJson() => {
        'country': country,
        'saleability': saleability,
        'isEbook': isEbook,
        'listPrice': listPrice,
        'retailPrice': retailPrice
      };
  get price => (listPrice==null ? 'Free' : '${listPrice!['amount']!}  ${listPrice!['currencyCode']!}');
}
