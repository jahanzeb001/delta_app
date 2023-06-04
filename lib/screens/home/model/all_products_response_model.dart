// To parse this JSON data, do
//
//     final allProductsResponse = allProductsResponseFromJson(jsonString);

import 'dart:convert';

List<AllProductsResponse> allProductsResponseFromJson(String str) =>
    List<AllProductsResponse>.from(
        json.decode(str).map((x) => AllProductsResponse.fromJson(x)));

String allProductsResponseToJson(List<AllProductsResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllProductsResponse {
  int? id;
  String? name;
  String? slug;
  String? permalink;
  DateTime? dateCreated;
  DateTime? dateCreatedGmt;
  DateTime? dateModified;
  DateTime? dateModifiedGmt;
  String? type;
  Status? status;
  bool? featured;
  CatalogVisibility? catalogVisibility;
  String? description;
  String? shortDescription;
  String? sku;
  String? price;
  String? regularPrice;
  String? salePrice;
  dynamic dateOnSaleFrom;
  dynamic dateOnSaleFromGmt;
  dynamic dateOnSaleTo;
  dynamic dateOnSaleToGmt;
  bool? onSale;
  bool? purchasable;
  int? totalSales;
  bool? virtual;
  bool? downloadable;
  List<dynamic>? downloads;
  int? downloadLimit;
  int? downloadExpiry;
  String? externalUrl;
  String? buttonText;
  TaxStatus? taxStatus;
  String? taxClass;
  bool? manageStock;
  int? stockQuantity;
  Backorders? backorders;
  bool? backordersAllowed;
  bool? backordered;
  dynamic lowStockAmount;
  bool? soldIndividually;
  String? weight;
  Dimensions? dimensions;
  bool? shippingRequired;
  bool? shippingTaxable;
  String? shippingClass;
  int? shippingClassId;
  bool? reviewsAllowed;
  String? averageRating;
  int? ratingCount;
  List<dynamic>? upsellIds;
  List<dynamic>? crossSellIds;
  int? parentId;
  String? purchaseNote;
  List<Category>? categories;
  List<Category>? tags;
  List<Image>? images;
  List<Attribute>? attributes;
  List<dynamic>? defaultAttributes;
  List<dynamic>? variations;
  List<dynamic>? groupedProducts;
  int? menuOrder;
  String? priceHtml;
  List<int>? relatedIds;
  List<MetaDatum>? metaData;
  StockStatus? stockStatus;
  bool? hasOptions;
  String? yoastHead;
  YoastHeadJson? yoastHeadJson;
  Links? links;

  AllProductsResponse({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.lowStockAmount,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.groupedProducts,
    this.menuOrder,
    this.priceHtml,
    this.relatedIds,
    this.metaData,
    this.stockStatus,
    this.hasOptions,
    this.yoastHead,
    this.yoastHeadJson,
    this.links,
  });

  factory AllProductsResponse.fromJson(Map<String, dynamic> json) =>
      AllProductsResponse(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        permalink: json["permalink"],
        dateCreated: json["date_created"] == null
            ? null
            : DateTime.parse(json["date_created"]),
        dateCreatedGmt: json["date_created_gmt"] == null
            ? null
            : DateTime.parse(json["date_created_gmt"]),
        dateModified: json["date_modified"] == null
            ? null
            : DateTime.parse(json["date_modified"]),
        dateModifiedGmt: json["date_modified_gmt"] == null
            ? null
            : DateTime.parse(json["date_modified_gmt"]),
        type: json["type"]!,
        status: statusValues.map[json["status"]],
        featured: json["featured"],
        catalogVisibility:
            catalogVisibilityValues.map[json["catalog_visibility"]],
        description: json["description"],
        shortDescription: json["short_description"],
        sku: json["sku"],
        price: json["price"],
        regularPrice: json["regular_price"],
        salePrice: json["sale_price"],
        dateOnSaleFrom: json["date_on_sale_from"],
        dateOnSaleFromGmt: json["date_on_sale_from_gmt"],
        dateOnSaleTo: json["date_on_sale_to"],
        dateOnSaleToGmt: json["date_on_sale_to_gmt"],
        onSale: json["on_sale"],
        purchasable: json["purchasable"],
        totalSales: json["total_sales"],
        virtual: json["virtual"],
        downloadable: json["downloadable"],
        downloads: json["downloads"] == null
            ? []
            : List<dynamic>.from(json["downloads"]!.map((x) => x)),
        downloadLimit: json["download_limit"],
        downloadExpiry: json["download_expiry"],
        externalUrl: json["external_url"],
        buttonText: json["button_text"],
        taxStatus: taxStatusValues.map[json["tax_status"]],
        taxClass: json["tax_class"],
        manageStock: json["manage_stock"],
        stockQuantity: json["stock_quantity"],
        backorders: backordersValues.map[json["backorders"]],
        backordersAllowed: json["backorders_allowed"],
        backordered: json["backordered"],
        lowStockAmount: json["low_stock_amount"],
        soldIndividually: json["sold_individually"],
        weight: json["weight"],
        dimensions: json["dimensions"] == null
            ? null
            : Dimensions.fromJson(json["dimensions"]),
        shippingRequired: json["shipping_required"],
        shippingTaxable: json["shipping_taxable"],
        shippingClass: json["shipping_class"],
        shippingClassId: json["shipping_class_id"],
        reviewsAllowed: json["reviews_allowed"],
        averageRating: json["average_rating"],
        ratingCount: json["rating_count"],
        upsellIds: json["upsell_ids"] == null
            ? []
            : List<dynamic>.from(json["upsell_ids"]!.map((x) => x)),
        crossSellIds: json["cross_sell_ids"] == null
            ? []
            : List<dynamic>.from(json["cross_sell_ids"]!.map((x) => x)),
        parentId: json["parent_id"],
        purchaseNote: json["purchase_note"],
        categories: json["categories"] == null
            ? []
            : List<Category>.from(
                json["categories"]!.map((x) => Category.fromJson(x))),
        tags: json["tags"] == null
            ? []
            : List<Category>.from(
                json["tags"]!.map((x) => Category.fromJson(x))),
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
        attributes: json["attributes"] == null
            ? []
            : List<Attribute>.from(
                json["attributes"]!.map((x) => Attribute.fromJson(x))),
        defaultAttributes: json["default_attributes"] == null
            ? []
            : List<dynamic>.from(json["default_attributes"]!.map((x) => x)),
        variations: json["variations"] == null
            ? []
            : List<dynamic>.from(json["variations"]!.map((x) => x)),
        groupedProducts: json["grouped_products"] == null
            ? []
            : List<dynamic>.from(json["grouped_products"]!.map((x) => x)),
        menuOrder: json["menu_order"],
        priceHtml: json["price_html"],
        relatedIds: json["related_ids"] == null
            ? []
            : List<int>.from(json["related_ids"]!.map((x) => x)),
        metaData: json["meta_data"] == null
            ? []
            : List<MetaDatum>.from(
                json["meta_data"]!.map((x) => MetaDatum.fromJson(x))),
        stockStatus: stockStatusValues.map[json["stock_status"]],
        hasOptions: json["has_options"],
        yoastHead: json["yoast_head"],
        yoastHeadJson: json["yoast_head_json"] == null
            ? null
            : YoastHeadJson.fromJson(json["yoast_head_json"]),
        links: json["_links"] == null ? null : Links.fromJson(json["_links"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "permalink": permalink,
        "date_created": dateCreated?.toIso8601String(),
        "date_created_gmt": dateCreatedGmt?.toIso8601String(),
        "date_modified": dateModified?.toIso8601String(),
        "date_modified_gmt": dateModifiedGmt?.toIso8601String(),
        "type": allProductsResponseTypeValues.reverse[type],
        "status": statusValues.reverse[status],
        "featured": featured,
        "catalog_visibility":
            catalogVisibilityValues.reverse[catalogVisibility],
        "description": description,
        "short_description": shortDescription,
        "sku": sku,
        "price": price,
        "regular_price": regularPrice,
        "sale_price": salePrice,
        "date_on_sale_from": dateOnSaleFrom,
        "date_on_sale_from_gmt": dateOnSaleFromGmt,
        "date_on_sale_to": dateOnSaleTo,
        "date_on_sale_to_gmt": dateOnSaleToGmt,
        "on_sale": onSale,
        "purchasable": purchasable,
        "total_sales": totalSales,
        "virtual": virtual,
        "downloadable": downloadable,
        "downloads": downloads == null
            ? []
            : List<dynamic>.from(downloads!.map((x) => x)),
        "download_limit": downloadLimit,
        "download_expiry": downloadExpiry,
        "external_url": externalUrl,
        "button_text": buttonText,
        "tax_status": taxStatusValues.reverse[taxStatus],
        "tax_class": taxClass,
        "manage_stock": manageStock,
        "stock_quantity": stockQuantity,
        "backorders": backordersValues.reverse[backorders],
        "backorders_allowed": backordersAllowed,
        "backordered": backordered,
        "low_stock_amount": lowStockAmount,
        "sold_individually": soldIndividually,
        "weight": weight,
        "dimensions": dimensions?.toJson(),
        "shipping_required": shippingRequired,
        "shipping_taxable": shippingTaxable,
        "shipping_class": shippingClass,
        "shipping_class_id": shippingClassId,
        "reviews_allowed": reviewsAllowed,
        "average_rating": averageRating,
        "rating_count": ratingCount,
        "upsell_ids": upsellIds == null
            ? []
            : List<dynamic>.from(upsellIds!.map((x) => x)),
        "cross_sell_ids": crossSellIds == null
            ? []
            : List<dynamic>.from(crossSellIds!.map((x) => x)),
        "parent_id": parentId,
        "purchase_note": purchaseNote,
        "categories": categories == null
            ? []
            : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "tags": tags == null
            ? []
            : List<dynamic>.from(tags!.map((x) => x.toJson())),
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "attributes": attributes == null
            ? []
            : List<dynamic>.from(attributes!.map((x) => x.toJson())),
        "default_attributes": defaultAttributes == null
            ? []
            : List<dynamic>.from(defaultAttributes!.map((x) => x)),
        "variations": variations == null
            ? []
            : List<dynamic>.from(variations!.map((x) => x)),
        "grouped_products": groupedProducts == null
            ? []
            : List<dynamic>.from(groupedProducts!.map((x) => x)),
        "menu_order": menuOrder,
        "price_html": priceHtml,
        "related_ids": relatedIds == null
            ? []
            : List<dynamic>.from(relatedIds!.map((x) => x)),
        "meta_data": metaData == null
            ? []
            : List<dynamic>.from(metaData!.map((x) => x.toJson())),
        "stock_status": stockStatusValues.reverse[stockStatus],
        "has_options": hasOptions,
        "yoast_head": yoastHead,
        "yoast_head_json": yoastHeadJson?.toJson(),
        "_links": links?.toJson(),
      };
}

class Attribute {
  int? id;
  String? name;
  int? position;
  bool? visible;
  bool? variation;
  List<String>? options;

  Attribute({
    this.id,
    this.name,
    this.position,
    this.visible,
    this.variation,
    this.options,
  });

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        id: json["id"],
        name: json["name"],
        position: json["position"],
        visible: json["visible"],
        variation: json["variation"],
        options: json["options"] == null
            ? []
            : List<String>.from(json["options"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "position": position,
        "visible": visible,
        "variation": variation,
        "options":
            options == null ? [] : List<dynamic>.from(options!.map((x) => x)),
      };
}

enum Backorders { NO }

final backordersValues = EnumValues({"no": Backorders.NO});

enum CatalogVisibility { VISIBLE }

final catalogVisibilityValues =
    EnumValues({"visible": CatalogVisibility.VISIBLE});

class Category {
  int? id;
  String? name;
  String? slug;

  Category({
    this.id,
    this.name,
    this.slug,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
      };
}

class Dimensions {
  String? length;
  String? width;
  String? height;

  Dimensions({
    this.length,
    this.width,
    this.height,
  });

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        length: json["length"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "length": length,
        "width": width,
        "height": height,
      };
}

class Image {
  int? id;
  DateTime? dateCreated;
  DateTime? dateCreatedGmt;
  DateTime? dateModified;
  DateTime? dateModifiedGmt;
  String? src;
  String? name;
  String? alt;

  Image({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        dateCreated: json["date_created"] == null
            ? null
            : DateTime.parse(json["date_created"]),
        dateCreatedGmt: json["date_created_gmt"] == null
            ? null
            : DateTime.parse(json["date_created_gmt"]),
        dateModified: json["date_modified"] == null
            ? null
            : DateTime.parse(json["date_modified"]),
        dateModifiedGmt: json["date_modified_gmt"] == null
            ? null
            : DateTime.parse(json["date_modified_gmt"]),
        src: json["src"],
        name: json["name"],
        alt: json["alt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date_created": dateCreated?.toIso8601String(),
        "date_created_gmt": dateCreatedGmt?.toIso8601String(),
        "date_modified": dateModified?.toIso8601String(),
        "date_modified_gmt": dateModifiedGmt?.toIso8601String(),
        "src": src,
        "name": name,
        "alt": alt,
      };
}

class Links {
  List<Collection>? self;
  List<Collection>? collection;

  Links({
    this.self,
    this.collection,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: json["self"] == null
            ? []
            : List<Collection>.from(
                json["self"]!.map((x) => Collection.fromJson(x))),
        collection: json["collection"] == null
            ? []
            : List<Collection>.from(
                json["collection"]!.map((x) => Collection.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "self": self == null
            ? []
            : List<dynamic>.from(self!.map((x) => x.toJson())),
        "collection": collection == null
            ? []
            : List<dynamic>.from(collection!.map((x) => x.toJson())),
      };
}

class Collection {
  String? href;

  Collection({
    this.href,
  });

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "href": href,
      };
}

class MetaDatum {
  int? id;
  String? key;
  dynamic value;

  MetaDatum({
    this.id,
    this.key,
    this.value,
  });

  factory MetaDatum.fromJson(Map<String, dynamic> json) => MetaDatum(
        id: json["id"],
        key: json["key"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "key": key,
        "value": value,
      };
}

class ValueElement {
  String? title;
  String? id;
  String? content;
  String? name;

  ValueElement({
    this.title,
    this.id,
    this.content,
    this.name,
  });

  factory ValueElement.fromJson(Map<String, dynamic> json) => ValueElement(
        title: json["title"],
        id: json["id"],
        content: json["content"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "id": id,
        "content": content,
        "name": name,
      };
}

class PurpleValue {
  String? ae;

  PurpleValue({
    this.ae,
  });

  factory PurpleValue.fromJson(Map<String, dynamic> json) => PurpleValue(
        ae: json["AE"],
      );

  Map<String, dynamic> toJson() => {
        "AE": ae,
      };
}

enum Status { PUBLISH }

final statusValues = EnumValues({"publish": Status.PUBLISH});

enum StockStatus { INSTOCK, OUTOFSTOCK }

final stockStatusValues = EnumValues(
    {"instock": StockStatus.INSTOCK, "outofstock": StockStatus.OUTOFSTOCK});

enum TaxStatus { TAXABLE }

final taxStatusValues = EnumValues({"taxable": TaxStatus.TAXABLE});

enum AllProductsResponseType { SIMPLE }

final allProductsResponseTypeValues =
    EnumValues({"simple": AllProductsResponseType.SIMPLE});

class YoastHeadJson {
  String? title;
  String? description;
  Robots? robots;
  String? canonical;
  OgLocale? ogLocale;
  OgType? ogType;
  String? ogTitle;
  String? ogDescription;
  String? ogUrl;
  OgSiteName? ogSiteName;
  DateTime? articleModifiedTime;
  List<OgImage>? ogImage;
  TwitterCard? twitterCard;
  TwitterMisc? twitterMisc;
  Schema? schema;

  YoastHeadJson({
    this.title,
    this.description,
    this.robots,
    this.canonical,
    this.ogLocale,
    this.ogType,
    this.ogTitle,
    this.ogDescription,
    this.ogUrl,
    this.ogSiteName,
    this.articleModifiedTime,
    this.ogImage,
    this.twitterCard,
    this.twitterMisc,
    this.schema,
  });

  factory YoastHeadJson.fromJson(Map<String, dynamic> json) => YoastHeadJson(
        title: json["title"],
        description: json["description"],
        robots: json["robots"] == null ? null : Robots.fromJson(json["robots"]),
        canonical: json["canonical"],
        ogLocale: ogLocaleValues.map[json["og_locale"]],
        ogType: ogTypeValues.map[json["og_type"]],
        ogTitle: json["og_title"],
        ogDescription: json["og_description"],
        ogUrl: json["og_url"],
        ogSiteName: ogSiteNameValues.map[json["og_site_name"]],
        articleModifiedTime: json["article_modified_time"] == null
            ? null
            : DateTime.parse(json["article_modified_time"]),
        ogImage: json["og_image"] == null
            ? []
            : List<OgImage>.from(
                json["og_image"].map((x) => OgImage.fromJson(x))),
        twitterCard: twitterCardValues.map[json["twitter_card"]],
        twitterMisc: json["twitter_misc"] == null
            ? null
            : TwitterMisc.fromJson(json["twitter_misc"]),
        schema: json["schema"] == null ? null : Schema.fromJson(json["schema"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "robots": robots?.toJson(),
        "canonical": canonical,
        "og_locale": ogLocaleValues.reverse[ogLocale],
        "og_type": ogTypeValues.reverse[ogType],
        "og_title": ogTitle,
        "og_description": ogDescription,
        "og_url": ogUrl,
        "og_site_name": ogSiteNameValues.reverse[ogSiteName],
        "article_modified_time": articleModifiedTime?.toIso8601String(),
        "og_image": ogImage == null
            ? []
            : List<dynamic>.from(ogImage!.map((x) => x.toJson())),
        "twitter_card": twitterCardValues.reverse[twitterCard],
        "twitter_misc": twitterMisc?.toJson(),
        "schema": schema?.toJson(),
      };
}

class OgImage {
  int? width;
  int? height;
  String? url;
  OgImageType? type;

  OgImage({
    this.width,
    this.height,
    this.url,
    this.type,
  });

  factory OgImage.fromJson(Map<String, dynamic> json) => OgImage(
        width: json["width"],
        height: json["height"],
        url: json["url"],
        type: ogImageTypeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "url": url,
        "type": ogImageTypeValues.reverse[type],
      };
}

enum OgImageType { IMAGE_PNG, IMAGE_JPEG }

final ogImageTypeValues = EnumValues(
    {"image/jpeg": OgImageType.IMAGE_JPEG, "image/png": OgImageType.IMAGE_PNG});

enum OgLocale { EN_US }

final ogLocaleValues = EnumValues({"en_US": OgLocale.EN_US});

enum OgSiteName { DITLLCAE }

final ogSiteNameValues = EnumValues({"Ditllcae": OgSiteName.DITLLCAE});

enum OgType { ARTICLE }

final ogTypeValues = EnumValues({"article": OgType.ARTICLE});

class Robots {
  Index? index;
  Follow? follow;
  MaxSnippet? maxSnippet;
  MaxImagePreview? maxImagePreview;
  MaxVideoPreview? maxVideoPreview;

  Robots({
    this.index,
    this.follow,
    this.maxSnippet,
    this.maxImagePreview,
    this.maxVideoPreview,
  });

  factory Robots.fromJson(Map<String, dynamic> json) => Robots(
        index: indexValues.map[json["index"]],
        follow: followValues.map[json["follow"]],
        maxSnippet: maxSnippetValues.map[json["max-snippet"]],
        maxImagePreview: maxImagePreviewValues.map[json["max-image-preview"]],
        maxVideoPreview: maxVideoPreviewValues.map[json["max-video-preview"]],
      );

  Map<String, dynamic> toJson() => {
        "index": indexValues.reverse[index],
        "follow": followValues.reverse[follow],
        "max-snippet": maxSnippetValues.reverse[maxSnippet],
        "max-image-preview": maxImagePreviewValues.reverse[maxImagePreview],
        "max-video-preview": maxVideoPreviewValues.reverse[maxVideoPreview],
      };
}

enum Follow { FOLLOW }

final followValues = EnumValues({"follow": Follow.FOLLOW});

enum Index { INDEX }

final indexValues = EnumValues({"index": Index.INDEX});

enum MaxImagePreview { MAX_IMAGE_PREVIEW_LARGE }

final maxImagePreviewValues = EnumValues(
    {"max-image-preview:large": MaxImagePreview.MAX_IMAGE_PREVIEW_LARGE});

enum MaxSnippet { MAX_SNIPPET_1 }

final maxSnippetValues =
    EnumValues({"max-snippet:-1": MaxSnippet.MAX_SNIPPET_1});

enum MaxVideoPreview { MAX_VIDEO_PREVIEW_1 }

final maxVideoPreviewValues =
    EnumValues({"max-video-preview:-1": MaxVideoPreview.MAX_VIDEO_PREVIEW_1});

class Schema {
  String? context;
  List<Graph>? graph;

  Schema({
    this.context,
    this.graph,
  });

  factory Schema.fromJson(Map<String, dynamic> json) => Schema(
        context: json["@context"],
        graph: json["@graph"] == null
            ? []
            : List<Graph>.from(json["@graph"]!.map((x) => Graph.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "@context": context,
        "@graph": graph == null
            ? []
            : List<dynamic>.from(graph!.map((x) => x.toJson())),
      };
}

class Graph {
  GraphType? type;
  String? id;
  String? url;
  String? name;
  Breadcrumb? isPartOf;
  DateTime? datePublished;
  DateTime? dateModified;
  String? description;
  Breadcrumb? breadcrumb;
  InLanguage? inLanguage;
  List<PotentialAction>? potentialAction;
  List<ItemListElement>? itemListElement;
  Breadcrumb? publisher;
  Logo? logo;
  Breadcrumb? image;

  Graph({
    this.type,
    this.id,
    this.url,
    this.name,
    this.isPartOf,
    this.datePublished,
    this.dateModified,
    this.description,
    this.breadcrumb,
    this.inLanguage,
    this.potentialAction,
    this.itemListElement,
    this.publisher,
    this.logo,
    this.image,
  });

  factory Graph.fromJson(Map<String, dynamic> json) => Graph(
        type: graphTypeValues.map[json["@type"]]!,
        id: json["@id"],
        url: json["url"],
        name: json["name"],
        isPartOf: json["isPartOf"] == null
            ? null
            : Breadcrumb.fromJson(json["isPartOf"]),
        datePublished: json["datePublished"] == null
            ? null
            : DateTime.parse(json["datePublished"]),
        dateModified: json["dateModified"] == null
            ? null
            : DateTime.parse(json["dateModified"]),
        description: json["description"],
        breadcrumb: json["breadcrumb"] == null
            ? null
            : Breadcrumb.fromJson(json["breadcrumb"]),
        inLanguage: inLanguageValues.map[json["inLanguage"]],
        potentialAction: json["potentialAction"] == null
            ? []
            : List<PotentialAction>.from(json["potentialAction"]
                .map((x) => PotentialAction.fromJson(x))),
        itemListElement: json["itemListElement"] == null
            ? []
            : List<ItemListElement>.from(json["itemListElement"]
                .map((x) => ItemListElement.fromJson(x))),
        publisher: json["publisher"] == null
            ? null
            : Breadcrumb.fromJson(json["publisher"]),
        logo: json["logo"] == null ? null : Logo.fromJson(json["logo"]),
        image:
            json["image"] == null ? null : Breadcrumb.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "@type": graphTypeValues.reverse[type],
        "@id": id,
        "url": url,
        "name": name,
        "isPartOf": isPartOf?.toJson(),
        "datePublished": datePublished?.toIso8601String(),
        "dateModified": dateModified?.toIso8601String(),
        "description": description,
        "breadcrumb": breadcrumb?.toJson(),
        "inLanguage": inLanguageValues.reverse[inLanguage],
        "potentialAction": potentialAction == null
            ? []
            : List<dynamic>.from(potentialAction!.map((x) => x.toJson())),
        "itemListElement": itemListElement == null
            ? []
            : List<dynamic>.from(itemListElement!.map((x) => x.toJson())),
        "publisher": publisher?.toJson(),
        "logo": logo?.toJson(),
        "image": image?.toJson(),
      };
}

class Breadcrumb {
  String? id;

  Breadcrumb({
    this.id,
  });

  factory Breadcrumb.fromJson(Map<String, dynamic> json) => Breadcrumb(
        id: json["@id"],
      );

  Map<String, dynamic> toJson() => {
        "@id": id,
      };
}

enum InLanguage { EN_US }

final inLanguageValues = EnumValues({"en-US": InLanguage.EN_US});

class ItemListElement {
  ItemListElementType? type;
  int? position;
  String? name;
  String? item;

  ItemListElement({
    this.type,
    this.position,
    this.name,
    this.item,
  });

  factory ItemListElement.fromJson(Map<String, dynamic> json) =>
      ItemListElement(
        type: itemListElementTypeValues.map[json["@type"]]!,
        position: json["position"],
        name: json["name"],
        item: json["item"],
      );

  Map<String, dynamic> toJson() => {
        "@type": itemListElementTypeValues.reverse[type],
        "position": position,
        "name": name,
        "item": item,
      };
}

enum ItemListElementType { LIST_ITEM }

final itemListElementTypeValues =
    EnumValues({"ListItem": ItemListElementType.LIST_ITEM});

class Logo {
  LogoType? type;
  InLanguage? inLanguage;
  String? id;
  String? url;
  String? contentUrl;
  int? width;
  int? height;
  OgSiteName? caption;

  Logo({
    this.type,
    this.inLanguage,
    this.id,
    this.url,
    this.contentUrl,
    this.width,
    this.height,
    this.caption,
  });

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
        type: logoTypeValues.map[json["@type"]]!,
        inLanguage: inLanguageValues.map[json["inLanguage"]]!,
        id: json["@id"],
        url: json["url"],
        contentUrl: json["contentUrl"],
        width: json["width"],
        height: json["height"],
        caption: ogSiteNameValues.map[json["caption"]]!,
      );

  Map<String, dynamic> toJson() => {
        "@type": logoTypeValues.reverse[type],
        "inLanguage": inLanguageValues.reverse[inLanguage],
        "@id": id,
        "url": url,
        "contentUrl": contentUrl,
        "width": width,
        "height": height,
        "caption": ogSiteNameValues.reverse[caption],
      };
}

enum LogoType { IMAGE_OBJECT }

final logoTypeValues = EnumValues({"ImageObject": LogoType.IMAGE_OBJECT});

class PotentialAction {
  PotentialActionType? type;
  dynamic target;
  QueryInput? queryInput;

  PotentialAction({
    this.type,
    this.target,
    this.queryInput,
  });

  factory PotentialAction.fromJson(Map<String, dynamic> json) =>
      PotentialAction(
        type: potentialActionTypeValues.map[json["@type"]],
        target: json["target"],
        queryInput: queryInputValues.map[json["query-input"]],
      );

  Map<String, dynamic> toJson() => {
        "@type": potentialActionTypeValues.reverse[type],
        "target": target,
        "query-input": queryInputValues.reverse[queryInput],
      };
}

enum QueryInput { REQUIRED_NAME_SEARCH_TERM_STRING }

final queryInputValues = EnumValues({
  "required name=search_term_string":
      QueryInput.REQUIRED_NAME_SEARCH_TERM_STRING
});

class TargetClass {
  TargetType? type;
  UrlTemplate? urlTemplate;

  TargetClass({
    this.type,
    this.urlTemplate,
  });

  factory TargetClass.fromJson(Map<String, dynamic> json) => TargetClass(
        type: targetTypeValues.map[json["@type"]]!,
        urlTemplate: urlTemplateValues.map[json["urlTemplate"]]!,
      );

  Map<String, dynamic> toJson() => {
        "@type": targetTypeValues.reverse[type],
        "urlTemplate": urlTemplateValues.reverse[urlTemplate],
      };
}

enum TargetType { ENTRY_POINT }

final targetTypeValues = EnumValues({"EntryPoint": TargetType.ENTRY_POINT});

enum UrlTemplate { HTTPS_DITLLCAE_COM_S_SEARCH_TERM_STRING }

final urlTemplateValues = EnumValues({
  "https://ditllcae.com/?s={search_term_string}":
      UrlTemplate.HTTPS_DITLLCAE_COM_S_SEARCH_TERM_STRING
});

enum PotentialActionType { READ_ACTION, SEARCH_ACTION }

final potentialActionTypeValues = EnumValues({
  "ReadAction": PotentialActionType.READ_ACTION,
  "SearchAction": PotentialActionType.SEARCH_ACTION
});

enum GraphType { WEB_PAGE, BREADCRUMB_LIST, WEB_SITE, ORGANIZATION }

final graphTypeValues = EnumValues({
  "BreadcrumbList": GraphType.BREADCRUMB_LIST,
  "Organization": GraphType.ORGANIZATION,
  "WebPage": GraphType.WEB_PAGE,
  "WebSite": GraphType.WEB_SITE
});

enum TwitterCard { SUMMARY_LARGE_IMAGE }

final twitterCardValues =
    EnumValues({"summary_large_image": TwitterCard.SUMMARY_LARGE_IMAGE});

class TwitterMisc {
  EstReadingTime? estReadingTime;

  TwitterMisc({
    this.estReadingTime,
  });

  factory TwitterMisc.fromJson(Map<String, dynamic> json) => TwitterMisc(
        estReadingTime: estReadingTimeValues.map[json["Est. reading time"]]!,
      );

  Map<String, dynamic> toJson() => {
        "Est. reading time": estReadingTimeValues.reverse[estReadingTime],
      };
}

enum EstReadingTime { THE_2_MINUTES, THE_1_MINUTE }

final estReadingTimeValues = EnumValues({
  "1 minute": EstReadingTime.THE_1_MINUTE,
  "2 minutes": EstReadingTime.THE_2_MINUTES
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
