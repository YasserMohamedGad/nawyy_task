// To parse this JSON data, do
//
//     final searchModel = searchModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SearchModel? searchModelFromJson(String str) => SearchModel.fromJson(json.decode(str));

String searchModelToJson(SearchModel? data) => json.encode(data!.toJson());

class SearchModel {
  SearchModel({
    required this.totalCompounds,
    required this.totalProperties,
    required this.totalPropertyGroups,
    required this.values,
    required this.filters,
    required this.searchTrackingMsg,
    required this.seoBacklinks,
  });

  int? totalCompounds;
  int? totalProperties;
  int? totalPropertyGroups;
  List<Value?>? values;
  Filters? filters;
  String? searchTrackingMsg;
  List<SeoBacklink?>? seoBacklinks;

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
    totalCompounds: json["total_compounds"],
    totalProperties: json["total_properties"],
    totalPropertyGroups: json["total_property_groups"],
    values: json["values"] == null ? [] : List<Value?>.from(json["values"]!.map((x) => Value.fromJson(x))),
    filters: Filters.fromJson(json["filters"]),
    searchTrackingMsg: json["search_tracking_msg"],
    seoBacklinks: json["seo_backlinks"] == null ? [] : List<SeoBacklink?>.from(json["seo_backlinks"]!.map((x) => SeoBacklink.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "total_compounds": totalCompounds,
    "total_properties": totalProperties,
    "total_property_groups": totalPropertyGroups,
    "values": values == null ? [] : List<dynamic>.from(values!.map((x) => x!.toJson())),
    "filters": filters!.toJson(),
    "search_tracking_msg": searchTrackingMsg,
    "seo_backlinks": seoBacklinks == null ? [] : List<dynamic>.from(seoBacklinks!.map((x) => x!.toJson())),
  };
}

class Filters {
  Filters({
    required this.minPrice,
    required this.maxPrice,
  });

  int? minPrice;
  int? maxPrice;

  factory Filters.fromJson(Map<String, dynamic> json) => Filters(
    minPrice: json["min_price"],
    maxPrice: json["max_price"],
  );

  Map<String, dynamic> toJson() => {
    "min_price": minPrice,
    "max_price": maxPrice,
  };
}

class SeoBacklink {
  SeoBacklink({
    required this.name,
    required this.slug,
  });

  String? name;
  String? slug;

  factory SeoBacklink.fromJson(Map<String, dynamic> json) => SeoBacklink(
    name: json["name"],
    slug: json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "slug": slug,
  };
}

class Value {
  Value({
    required this.id,
    required this.slug,
    required this.name,
    required this.propertyType,
    required this.compound,
    required this.area,
    required this.developer,
    required this.image,
    required this.finishing,
    required this.minUnitArea,
    required this.maxUnitArea,
    required this.minPrice,
    required this.maxPrice,
    required this.currency,
    required this.maxInstallmentYears,
    required this.minInstallments,
    required this.minDownPayment,
    required this.numberOfBathrooms,
    required this.numberOfBedrooms,
    required this.minReadyBy,
    required this.sponsored,
    required this.newProperty,
    required this.company,
    required this.resale,
    required this.financing,
    required this.type,
    required this.hasOffers,
    required this.offerTitle,
    required this.limitedTimeOffer,
    required this.inQuickSearch,
    required this.recommended,
    required this.manualRanking,
    required this.completenessScore,
    required this.favorite,
  });

  int? id;
  String? slug;
  String? name;
  PropertyType? propertyType;
  Compound? compound;
  Area? area;
  Compound? developer;
  String? image;
  Finishing? finishing;
  int? minUnitArea;
  int? maxUnitArea;
  int? minPrice;
  int? maxPrice;
  Currency? currency;
  int? maxInstallmentYears;
  int? minInstallments;
  int? minDownPayment;
  int? numberOfBathrooms;
  int? numberOfBedrooms;
  DateTime? minReadyBy;
  int? sponsored;
  bool? newProperty;
  dynamic company;
  bool? resale;
  bool? financing;
  String? type;
  bool? hasOffers;
  OfferTitle? offerTitle;
  bool? limitedTimeOffer;
  int? inQuickSearch;
  dynamic recommended;
  dynamic manualRanking;
  int? completenessScore;
  dynamic favorite;

  factory Value.fromJson(Map<String, dynamic> json) => Value(
    id: json["id"],
    slug: json["slug"],
    name: json["name"],
    propertyType: PropertyType.fromJson(json["property_type"]),
    compound: Compound.fromJson(json["compound"]),
    area: Area.fromJson(json["area"]),
    developer: Compound.fromJson(json["developer"]),
    image: json["image"],
    finishing: finishingValues.map[json["finishing"]],
    minUnitArea: json["min_unit_area"],
    maxUnitArea: json["max_unit_area"],
    minPrice: json["min_price"],
    maxPrice: json["max_price"],
    currency: currencyValues.map[json["currency"]],
    maxInstallmentYears: json["max_installment_years"],
    minInstallments: json["min_installments"],
    minDownPayment: json["min_down_payment"],
    numberOfBathrooms: json["number_of_bathrooms"],
    numberOfBedrooms: json["number_of_bedrooms"],
    minReadyBy: DateTime.parse(json["min_ready_by"]),
    sponsored: json["sponsored"],
    newProperty: json["new_property"],
    company: json["company"],
    resale: json["resale"],
    financing: json["financing"],
    type: json["type"],
    hasOffers: json["has_offers"],
    offerTitle: offerTitleValues.map[json["offer_title"]],
    limitedTimeOffer: json["limited_time_offer"],
    inQuickSearch: json["in_quick_search"],
    recommended: json["recommended"],
    manualRanking: json["manual_ranking"],
    completenessScore: json["completeness_score"],
    favorite: json["favorite"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slug,
    "name": name,
    "property_type": propertyType!.toJson(),
    "compound": compound!.toJson(),
    "area": area!.toJson(),
    "developer": developer!.toJson(),
    "image": image,
    "finishing": finishingValues.reverse![finishing],
    "min_unit_area": minUnitArea,
    "max_unit_area": maxUnitArea,
    "min_price": minPrice,
    "max_price": maxPrice,
    "currency": currencyValues.reverse![currency],
    "max_installment_years": maxInstallmentYears,
    "min_installments": minInstallments,
    "min_down_payment": minDownPayment,
    "number_of_bathrooms": numberOfBathrooms,
    "number_of_bedrooms": numberOfBedrooms,
    "min_ready_by": "${minReadyBy!.year.toString().padLeft(4, '0')}-${minReadyBy!.month.toString().padLeft(2, '0')}-${minReadyBy!.day.toString().padLeft(2, '0')}",
    "sponsored": sponsored,
    "new_property": newProperty,
    "company": company,
    "resale": resale,
    "financing": financing,
    "type": type,
    "has_offers": hasOffers,
    "offer_title": offerTitleValues.reverse![offerTitle],
    "limited_time_offer": limitedTimeOffer,
    "in_quick_search": inQuickSearch,
    "recommended": recommended,
    "manual_ranking": manualRanking,
    "completeness_score": completenessScore,
    "favorite": favorite,
  };
}

class Area {
  Area({
    required this.id,
    required this.name,
  });

  int? id;
  AreaName? name;

  factory Area.fromJson(Map<String, dynamic> json) => Area(
    id: json["id"],
    name: areaNameValues.map[json["name"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": areaNameValues.reverse![name],
  };
}

enum AreaName { NEW_CAIRO, THE_6_TH_OF_OCTOBER_CITY, NEW_HELIOPOLIS }

final areaNameValues = EnumValues({
  "New Cairo": AreaName.NEW_CAIRO,
  "New Heliopolis": AreaName.NEW_HELIOPOLIS,
  "6th of October City": AreaName.THE_6_TH_OF_OCTOBER_CITY
});

class Compound {
  Compound({
    required this.id,
    required this.name,
    required this.slug,
    required this.sponsored,
    required this.logoPath,
  });

  int? id;
  String? name;
  String? slug;
  int? sponsored;
  String? logoPath;

  factory Compound.fromJson(Map<String, dynamic> json) => Compound(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    sponsored: json["sponsored"],
    logoPath: json["logo_path"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "sponsored": sponsored,
    "logo_path": logoPath,
  };
}

enum Currency { EGP }

final currencyValues = EnumValues({
  "EGP": Currency.EGP
});

enum Finishing { NOT_FINISHED, FINISHED }

final finishingValues = EnumValues({
  "finished": Finishing.FINISHED,
  "not_finished": Finishing.NOT_FINISHED
});

enum OfferTitle { THE_5_DOWN_PAYMENT_INSTALMENTS_UP_TO_9_YEARS, EMPTY }

final offerTitleValues = EnumValues({
  "": OfferTitle.EMPTY,
  "5% Down Payment , instalments up to 9 years": OfferTitle.THE_5_DOWN_PAYMENT_INSTALMENTS_UP_TO_9_YEARS
});

class PropertyType {
  PropertyType({
    required this.id,
    required this.name,
    required this.manualRanking,
  });

  int? id;
  PropertyTypeName? name;
  int? manualRanking;

  factory PropertyType.fromJson(Map<String, dynamic> json) => PropertyType(
    id: json["id"],
    name: propertyTypeNameValues.map[json["name"]],
    manualRanking: json["manual_ranking"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": propertyTypeNameValues.reverse![name],
    "manual_ranking": manualRanking,
  };
}

enum PropertyTypeName { APARTMENT }

final propertyTypeNameValues = EnumValues({
  "Apartment": PropertyTypeName.APARTMENT
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
