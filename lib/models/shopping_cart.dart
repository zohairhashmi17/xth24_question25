class ShoppingCart {
  // final int? success;
  // final List<dynamic>? error;
  final Data? data;

  ShoppingCart({
    // this.success,
    // this.error,
    this.data,
  });

  factory ShoppingCart.fromJson(Map<String, dynamic> json) => ShoppingCart(
    // success: json["success"],
    // error: json["error"] == null ? [] : List<dynamic>.from(json["error"]!.map((x) => x)),
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    // "success": success,
    // "error": error == null ? [] : List<dynamic>.from(error!.map((x) => x)),
    "data": data?.toJson(),
  };
}

class Data {
  final Cart? cart;
  final RecommendedProducts? recommendedProducts;

  Data({
    this.cart,
    this.recommendedProducts,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    cart: json["cart"] == null ? null : Cart.fromJson(json["cart"]),
    recommendedProducts: json["recommended_products"] == null ? null : RecommendedProducts.fromJson(json["recommended_products"]),
  );

  Map<String, dynamic> toJson() => {
    "cart": cart?.toJson(),
    "recommended_products": recommendedProducts?.toJson(),
  };
}

class Cart {
  final List<CartProduct>? products;
  final List<dynamic>? vouchers;
  final String? couponStatus;
  final String? coupon;
  final dynamic voucherStatus;
  final String? voucher;
  final int? rewardStatus;
  final String? reward;
  final List<Total>? totals;
  final String? offer;
  final int? offerAverage;
  final String? total;
  final double? totalRaw;
  final int? totalProductCount;

  Cart({
    this.products,
    this.vouchers,
    this.couponStatus,
    this.coupon,
    this.voucherStatus,
    this.voucher,
    this.rewardStatus,
    this.reward,
    this.totals,
    this.offer,
    this.offerAverage,
    this.total,
    this.totalRaw,
    this.totalProductCount,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
    products: json["products"] == null ? [] : List<CartProduct>.from(json["products"]!.map((x) => CartProduct.fromJson(x))),
    vouchers: json["vouchers"] == null ? [] : List<dynamic>.from(json["vouchers"]!.map((x) => x)),
    couponStatus: json["coupon_status"],
    coupon: json["coupon"],
    voucherStatus: json["voucher_status"],
    voucher: json["voucher"],
    rewardStatus: json["reward_status"],
    reward: json["reward"],
    totals: json["totals"] == null ? [] : List<Total>.from(json["totals"]!.map((x) => Total.fromJson(x))),
    offer: json["offer"],
    offerAverage: json["offer_average"],
    total: json["total"],
    totalRaw: json["total_raw"]?.toDouble(),
    totalProductCount: json["total_product_count"],
  );

  Map<String, dynamic> toJson() => {
    "products": products == null ? [] : List<dynamic>.from(products!.map((x) => x.toJson())),
    "vouchers": vouchers == null ? [] : List<dynamic>.from(vouchers!.map((x) => x)),
    "coupon_status": couponStatus,
    "coupon": coupon,
    "voucher_status": voucherStatus,
    "voucher": voucher,
    "reward_status": rewardStatus,
    "reward": reward,
    "totals": totals == null ? [] : List<dynamic>.from(totals!.map((x) => x.toJson())),
    "offer": offer,
    "offer_average": offerAverage,
    "total": total,
    "total_raw": totalRaw,
    "total_product_count": totalProductCount,
  };
}

class CartProduct {
  final String? key;
  final String? thumb;
  final String? name;
  final String? productId;
  final String? categoryId;
  final String? manufacturerName;
  final dynamic model;
  final List<dynamic>? option;
  final String? quantity;
  final String? minimum;
  final String? maximum;
  final bool? stock;
  final String? reward;
  final int? priceNoTax;
  final String? priceNoTaxFormatted;
  final String? price;
  final String? priceFormatted;
  final String? total;
  final String? totalFormatted;
  final int? avaialbleQuantity;
  final dynamic crossDiscount;
  final String? enName;
  final String? eventPrice;
  final List<PurpleSpecial>? special;
  final List<PurpleCategoryHierarchy>? categoryHierarchy;

  CartProduct({
    this.key,
    this.thumb,
    this.name,
    this.productId,
    this.categoryId,
    this.manufacturerName,
    this.model,
    this.option,
    this.quantity,
    this.minimum,
    this.maximum,
    this.stock,
    this.reward,
    this.priceNoTax,
    this.priceNoTaxFormatted,
    this.price,
    this.priceFormatted,
    this.total,
    this.totalFormatted,
    this.avaialbleQuantity,
    this.crossDiscount,
    this.enName,
    this.eventPrice,
    this.special,
    this.categoryHierarchy,
  });

  factory CartProduct.fromJson(Map<String, dynamic> json) => CartProduct(
    key: json["key"],
    thumb: json["thumb"],
    name: json["name"],
    productId: json["product_id"],
    categoryId: json["category_id"],
    manufacturerName: json["manufacturer_name"],
    model: json["model"],
    option: json["option"] == null ? [] : List<dynamic>.from(json["option"]!.map((x) => x)),
    quantity: json["quantity"],
    minimum: json["minimum"],
    maximum: json["maximum"],
    stock: json["stock"],
    reward: json["reward"],
    priceNoTax: json["price_no_tax"],
    priceNoTaxFormatted: json["price_no_tax_formatted"],
    price: json["price"],
    priceFormatted: json["price_formatted"],
    total: json["total"],
    totalFormatted: json["total_formatted"],
    avaialbleQuantity: json["avaialble_quantity"],
    crossDiscount: json["cross_discount"],
    enName: json["en_name"],
    eventPrice: json["event_price"],
    special: json["special"] == null ? [] : List<PurpleSpecial>.from(json["special"]!.map((x) => PurpleSpecial.fromJson(x))),
    categoryHierarchy: json["category_hierarchy"] == null ? [] : List<PurpleCategoryHierarchy>.from(json["category_hierarchy"]!.map((x) => PurpleCategoryHierarchy.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "thumb": thumb,
    "name": name,
    "product_id": productId,
    "category_id": categoryId,
    "manufacturer_name": manufacturerName,
    "model": model,
    "option": option == null ? [] : List<dynamic>.from(option!.map((x) => x)),
    "quantity": quantity,
    "minimum": minimum,
    "maximum": maximum,
    "stock": stock,
    "reward": reward,
    "price_no_tax": priceNoTax,
    "price_no_tax_formatted": priceNoTaxFormatted,
    "price": price,
    "price_formatted": priceFormatted,
    "total": total,
    "total_formatted": totalFormatted,
    "avaialble_quantity": avaialbleQuantity,
    "cross_discount": crossDiscount,
    "en_name": enName,
    "event_price": eventPrice,
    "special": special == null ? [] : List<dynamic>.from(special!.map((x) => x.toJson())),
    "category_hierarchy": categoryHierarchy == null ? [] : List<dynamic>.from(categoryHierarchy!.map((x) => x.toJson())),
  };
}

class PurpleCategoryHierarchy {
  final String? categoryId;
  final String? name;
  final String? enName;

  PurpleCategoryHierarchy({
    this.categoryId,
    this.name,
    this.enName,
  });

  factory PurpleCategoryHierarchy.fromJson(Map<String, dynamic> json) => PurpleCategoryHierarchy(
    categoryId: json["category_id"],
    name: json["name"],
    enName: json["en_name"],
  );

  Map<String, dynamic> toJson() => {
    "category_id": categoryId,
    "name": name,
    "en_name": enName,
  };
}

class PurpleSpecial {
  final String? discountRatio;
  final String? originalPrice;
  final String? priceFormated;
  final double? originalPriceWithoutCurrency;
  final double? priceWithoutCurrency;

  PurpleSpecial({
    this.discountRatio,
    this.originalPrice,
    this.priceFormated,
    this.originalPriceWithoutCurrency,
    this.priceWithoutCurrency,
  });

  factory PurpleSpecial.fromJson(Map<String, dynamic> json) => PurpleSpecial(
    discountRatio: json["discount_ratio"],
    originalPrice: json["original_price"],
    priceFormated: json["price_formated"],
    originalPriceWithoutCurrency: json["originalPriceWithoutCurrency"]?.toDouble(),
    priceWithoutCurrency: json["priceWithoutCurrency"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "discount_ratio": discountRatio,
    "original_price": originalPrice,
    "price_formated": priceFormated,
    "originalPriceWithoutCurrency": originalPriceWithoutCurrency,
    "priceWithoutCurrency": priceWithoutCurrency,
  };
}

class Total {
  final String? title;
  final String? text;
  final String? value;
  final String? code;

  Total({
    this.title,
    this.text,
    this.value,
    this.code,
  });

  factory Total.fromJson(Map<String, dynamic> json) => Total(
    title: json["title"],
    text: json["text"],
    value: json["value"],
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "text": text,
    "value": value,
    "code": code,
  };
}

class RecommendedProducts {
  final List<RecommendedProductsProduct>? products;
  final Ad? ad;

  RecommendedProducts({
    this.products,
    this.ad,
  });

  factory RecommendedProducts.fromJson(Map<String, dynamic> json) => RecommendedProducts(
    products: json["products"] == null ? [] : List<RecommendedProductsProduct>.from(json["products"]!.map((x) => RecommendedProductsProduct.fromJson(x))),
    ad: json["Ad"] == null ? null : Ad.fromJson(json["Ad"]),
  );

  Map<String, dynamic> toJson() => {
    "products": products == null ? [] : List<dynamic>.from(products!.map((x) => x.toJson())),
    "Ad": ad?.toJson(),
  };
}

class Ad {
  final List<dynamic>? filters;

  Ad({
    this.filters,
  });

  factory Ad.fromJson(Map<String, dynamic> json) => Ad(
    filters: json["filters"] == null ? [] : List<dynamic>.from(json["filters"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "filters": filters == null ? [] : List<dynamic>.from(filters!.map((x) => x)),
  };
}

class RecommendedProductsProduct {
  final String? id;
  final String? thumb;
  final String? priceFormated;
  final String? priceWithoutCurrency;
  final double? price;
  final String? name;
  final String? enName;
  final String? description;
  final String? sku;
  final Isbn? isbn;
  final bool? hasOption;
  final int? categoryId;
  final int? quantity;
  final List<FluffySpecial>? special;
  final String? manufacturer;
  final bool? isNew;
  final bool? isExclusive;
  final int? order;
  final dynamic score;
  final String? eventPrice;
  final double? rating;
  final String? totalReviews;
  final String? seoUrlAr;
  final String? seoUrlEn;
  final ShareUrl? shareUrl;
  final List<Option>? options;
  final List<FluffyCategoryHierarchy>? categoryHierarchy;
  final Tag? tag;

  RecommendedProductsProduct({
    this.id,
    this.thumb,
    this.priceFormated,
    this.priceWithoutCurrency,
    this.price,
    this.name,
    this.enName,
    this.description,
    this.sku,
    this.isbn,
    this.hasOption,
    this.categoryId,
    this.quantity,
    this.special,
    this.manufacturer,
    this.isNew,
    this.isExclusive,
    this.order,
    this.score,
    this.eventPrice,
    this.rating,
    this.totalReviews,
    this.seoUrlAr,
    this.seoUrlEn,
    this.shareUrl,
    this.options,
    this.categoryHierarchy,
    this.tag,
  });

  factory RecommendedProductsProduct.fromJson(Map<String, dynamic> json) => RecommendedProductsProduct(
    id: json["id"],
    thumb: json["thumb"],
    priceFormated: json["price_formated"],
    priceWithoutCurrency: json["priceWithoutCurrency"],
    price: json["price"]?.toDouble(),
    name: json["name"],
    enName: json["en_name"],
    description: json["description"],
    sku: json["sku"],
    isbn: isbnValues.map[json["isbn"]]!,
    hasOption: json["has_option"],
    categoryId: json["category_id"],
    quantity: json["quantity"],
    special: json["special"] == null ? [] : List<FluffySpecial>.from(json["special"]!.map((x) => FluffySpecial.fromJson(x))),
    manufacturer: json["manufacturer"],
    isNew: json["is_new"],
    isExclusive: json["is_exclusive"],
    order: json["order"],
    score: json["score"],
    eventPrice: json["event_price"],
    rating: json["rating"]?.toDouble(),
    totalReviews: json["total_reviews"],
    seoUrlAr: json["seo_url_ar"],
    seoUrlEn: json["seo_url_en"],
    shareUrl: shareUrlValues.map[json["share_url"]]!,
    options: json["options"] == null ? [] : List<Option>.from(json["options"]!.map((x) => Option.fromJson(x))),
    categoryHierarchy: json["category_hierarchy"] == null ? [] : List<FluffyCategoryHierarchy>.from(json["category_hierarchy"]!.map((x) => FluffyCategoryHierarchy.fromJson(x))),
    tag: json["tag"] == null ? null : Tag.fromJson(json["tag"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "thumb": thumb,
    "price_formated": priceFormated,
    "priceWithoutCurrency": priceWithoutCurrency,
    "price": price,
    "name": name,
    "en_name": enName,
    "description": description,
    "sku": sku,
    "isbn": isbnValues.reverse[isbn],
    "has_option": hasOption,
    "category_id": categoryId,
    "quantity": quantity,
    "special": special == null ? [] : List<dynamic>.from(special!.map((x) => x.toJson())),
    "manufacturer": manufacturer,
    "is_new": isNew,
    "is_exclusive": isExclusive,
    "order": order,
    "score": score,
    "event_price": eventPrice,
    "rating": rating,
    "total_reviews": totalReviews,
    "seo_url_ar": seoUrlAr,
    "seo_url_en": seoUrlEn,
    "share_url": shareUrlValues.reverse[shareUrl],
    "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x.toJson())),
    "category_hierarchy": categoryHierarchy == null ? [] : List<dynamic>.from(categoryHierarchy!.map((x) => x.toJson())),
    "tag": tag?.toJson(),
  };
}

class FluffyCategoryHierarchy {
  final int? categoryId;
  final String? name;
  final String? enName;

  FluffyCategoryHierarchy({
    this.categoryId,
    this.name,
    this.enName,
  });

  factory FluffyCategoryHierarchy.fromJson(Map<String, dynamic> json) => FluffyCategoryHierarchy(
    categoryId: json["category_id"],
    name: json["name"],
    enName: json["en_name"],
  );

  Map<String, dynamic> toJson() => {
    "category_id": categoryId,
    "name": name,
    "en_name": enName,
  };
}

enum Isbn {
  EMPTY,
  THE_607845012375,
  THE_8681217213173
}

final isbnValues = EnumValues({
  "": Isbn.EMPTY,
  "607845012375": Isbn.THE_607845012375,
  "8681217213173": Isbn.THE_8681217213173
});

class Option {
  final int? optionId;
  final int? productOptionId;
  final String? type;
  final int? required;
  final String? name;
  final String? enName;
  final List<OptionValue>? optionValue;

  Option({
    this.optionId,
    this.productOptionId,
    this.type,
    this.required,
    this.name,
    this.enName,
    this.optionValue,
  });

  factory Option.fromJson(Map<String, dynamic> json) => Option(
    optionId: json["option_id"],
    productOptionId: json["product_option_id"],
    type: json["type"],
    required: json["required"],
    name: json["name"],
    enName: json["en_name"],
    optionValue: json["option_value"] == null ? [] : List<OptionValue>.from(json["option_value"]!.map((x) => OptionValue.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "option_id": optionId,
    "product_option_id": productOptionId,
    "type": type,
    "required": required,
    "name": name,
    "en_name": enName,
    "option_value": optionValue == null ? [] : List<dynamic>.from(optionValue!.map((x) => x.toJson())),
  };
}

class OptionValue {
  final int? productOptionVariantId;
  final int? quantity;
  final String? image;
  final String? hexColor;
  final String? sku;
  final String? price;
  final PriceFormated? priceFormated;
  final String? eventPrice;
  final String? name;
  final String? enName;

  OptionValue({
    this.productOptionVariantId,
    this.quantity,
    this.image,
    this.hexColor,
    this.sku,
    this.price,
    this.priceFormated,
    this.eventPrice,
    this.name,
    this.enName,
  });

  factory OptionValue.fromJson(Map<String, dynamic> json) => OptionValue(
    productOptionVariantId: json["product_option_variant_id"],
    quantity: json["quantity"],
    image: json["image"],
    hexColor: json["hex_color"],
    sku: json["sku"],
    price: json["price"],
    priceFormated: priceFormatedValues.map[json["price_formated"]]!,
    eventPrice: json["event_price"],
    name: json["name"],
    enName: json["en_name"],
  );

  Map<String, dynamic> toJson() => {
    "product_option_variant_id": productOptionVariantId,
    "quantity": quantity,
    "image": image,
    "hex_color": hexColor,
    "sku": sku,
    "price": price,
    "price_formated": priceFormatedValues.reverse[priceFormated],
    "event_price": eventPrice,
    "name": name,
    "en_name": enName,
  };
}

enum PriceFormated {
  SAR_0,
  SAR_17825,
  SAR_5520
}

final priceFormatedValues = EnumValues({
  "SAR 0": PriceFormated.SAR_0,
  "SAR 178.25": PriceFormated.SAR_17825,
  "SAR 55.20": PriceFormated.SAR_5520
});

enum ShareUrl {
  EMPTY
}

final shareUrlValues = EnumValues({
  "-": ShareUrl.EMPTY
});

class FluffySpecial {
  final String? discountRatio;
  final String? originalPrice;
  final String? priceFormated;
  final double? originalPriceWithoutCurrency;
  final int? priceWithoutCurrency;
  final int? dateStart;
  final int? dateEnd;
  final String? tagName;
  final String? tagColor;

  FluffySpecial({
    this.discountRatio,
    this.originalPrice,
    this.priceFormated,
    this.originalPriceWithoutCurrency,
    this.priceWithoutCurrency,
    this.dateStart,
    this.dateEnd,
    this.tagName,
    this.tagColor,
  });

  factory FluffySpecial.fromJson(Map<String, dynamic> json) => FluffySpecial(
    discountRatio: json["discount_ratio"],
    originalPrice: json["original_price"],
    priceFormated: json["price_formated"],
    originalPriceWithoutCurrency: json["originalPriceWithoutCurrency"]?.toDouble(),
    priceWithoutCurrency: json["priceWithoutCurrency"],
    dateStart: json["date_start"],
    dateEnd: json["date_end"],
    tagName: json["tag_name"],
    tagColor: json["tag_color"],
  );

  Map<String, dynamic> toJson() => {
    "discount_ratio": discountRatio,
    "original_price": originalPrice,
    "price_formated": priceFormated,
    "originalPriceWithoutCurrency": originalPriceWithoutCurrency,
    "priceWithoutCurrency": priceWithoutCurrency,
    "date_start": dateStart,
    "date_end": dateEnd,
    "tag_name": tagName,
    "tag_color": tagColor,
  };
}

class Tag {
  final String? text;
  final String? backgroundColor;

  Tag({
    this.text,
    this.backgroundColor,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
    text: json["text"],
    backgroundColor: json["background_color"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "background_color": backgroundColor,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
