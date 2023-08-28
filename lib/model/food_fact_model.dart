// To parse this JSON data, do
//
//     final foodFactModel = foodFactModelFromJson(jsonString);

import 'dart:convert';

foodFactModel foodFactModelFromJson(String str) =>
    foodFactModel.fromJson(json.decode(str));

String foodFactModelToJson(foodFactModel data) => json.encode(data.toJson());

class foodFactModel {
  String? code;
  Product? product;
  int? status;
  String? statusVerbose;

  foodFactModel({
    this.code,
    this.product,
    this.status,
    this.statusVerbose,
  });

  factory foodFactModel.fromJson(Map<String, dynamic> json) => foodFactModel(
        code: json["code"],
        product:
            json["product"] == null ? null : Product.fromJson(json["product"]),
        status: json["status"],
        statusVerbose: json["status_verbose"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "product": product?.toJson(),
        "status": status,
        "status_verbose": statusVerbose,
      };
}

class Product {
  String? id;
  List<String>? keywords;
  List<dynamic>? addedCountriesTags;
  List<dynamic>? additivesDebugTags;
  int? additivesN;
  int? additivesOldN;
  List<String>? additivesOldTags;
  List<String>? additivesOriginalTags;
  List<dynamic>? additivesPrevOriginalTags;
  List<String>? additivesTags;
  String? allergens;
  String? allergensFromIngredients;
  String? allergensFromUser;
  List<String>? allergensHierarchy;
  String? allergensImported;
  String? allergensLc;
  List<String>? allergensTags;
  List<dynamic>? aminoAcidsPrevTags;
  List<dynamic>? aminoAcidsTags;
  String? brandOwner;
  String? brandOwnerImported;
  String? brands;
  List<String>? brandsTags;
  String? categories;
  List<String>? categoriesHierarchy;
  String? categoriesImported;
  String? categoriesLc;
  String? categoriesOld;
  CategoriesProperties? categoriesProperties;
  List<String>? categoriesPropertiesTags;
  List<String>? categoriesTags;
  CategoriesProperties? categoryProperties;
  List<dynamic>? checkersTags;
  List<String>? ciqualFoodNameTags;
  List<dynamic>? citiesTags;
  String? code;
  List<String>? codesTags;
  String? comparedToCategory;
  int? complete;
  double? completeness;
  List<String>? correctorsTags;
  String? countries;
  List<String>? countriesHierarchy;
  String? countriesImported;
  String? countriesLc;
  List<String>? countriesTags;
  int? createdT;
  String? creator;
  List<dynamic>? dataQualityBugsTags;
  List<dynamic>? dataQualityErrorsTags;
  List<String>? dataQualityInfoTags;
  List<String>? dataQualityTags;
  List<String>? dataQualityWarningsTags;
  String? dataSources;
  String? dataSourcesImported;
  List<String>? dataSourcesTags;
  List<String>? debugParamSortedLangs;
  EcoscoreData? ecoscoreData;
  EcoscoreExtendedData? ecoscoreExtendedData;
  String? ecoscoreExtendedDataVersion;
  String? ecoscoreGrade;
  List<String>? ecoscoreTags;
  List<String>? editors;
  List<String>? editorsTags;
  String? embCodes;
  String? embCodes20141016;
  String? embCodesOrig;
  List<dynamic>? embCodesTags;
  List<String>? entryDatesTags;
  String? environmentImpactLevel;
  List<dynamic>? environmentImpactLevelTags;
  String? expirationDate;
  String? foodGroups;
  List<String>? foodGroupsTags;
  String? genericNameEn;
  String? genericNameFr;
  String? productId;
  String? imageFrontSmallUrl;
  String? imageFrontThumbUrl;
  String? imageFrontUrl;
  String? imageIngredientsSmallUrl;
  String? imageIngredientsThumbUrl;
  String? imageIngredientsUrl;
  String? imageNutritionSmallUrl;
  String? imageNutritionThumbUrl;
  String? imageNutritionUrl;
  String? imageSmallUrl;
  String? imageThumbUrl;
  String? imageUrl;
  Images? images;
  List<String>? informersTags;
  List<ProductIngredient>? ingredients;
  IngredientsAnalysis? ingredientsAnalysis;
  List<String>? ingredientsAnalysisTags;
  int? ingredientsFromOrThatMayBeFromPalmOilN;
  int? ingredientsFromPalmOilN;
  List<dynamic>? ingredientsFromPalmOilTags;
  List<String>? ingredientsHierarchy;
  int? ingredientsN;
  List<String>? ingredientsNTags;
  List<String>? ingredientsOriginalTags;
  int? ingredientsPercentAnalysis;
  List<String>? ingredientsTags;
  String? ingredientsText;
  String? ingredientsTextDebug;
  List<dynamic>? ingredientsTextDebugTags;
  String? ingredientsTextEn;
  String? ingredientsTextEnImported;
  String? ingredientsTextFr;
  String? ingredientsTextWithAllergens;
  String? ingredientsTextWithAllergensEn;
  String? ingredientsTextWithAllergensFr;
  int? ingredientsThatMayBeFromPalmOilN;
  List<dynamic>? ingredientsThatMayBeFromPalmOilTags;
  int? ingredientsWithSpecifiedPercentN;
  int? ingredientsWithSpecifiedPercentSum;
  int? ingredientsWithUnspecifiedPercentN;
  int? ingredientsWithUnspecifiedPercentSum;
  String? interfaceVersionCreated;
  String? interfaceVersionModified;
  int? knownIngredientsN;
  String? labels;
  List<String>? labelsHierarchy;
  String? labelsLc;
  String? labelsOld;
  List<String>? labelsTags;
  String? lang;
  Languages? languages;
  LanguagesCodes? languagesCodes;
  List<String>? languagesHierarchy;
  List<String>? languagesTags;
  List<String>? lastEditDatesTags;
  String? lastEditor;
  List<String>? lastImageDatesTags;
  int? lastImageT;
  String? lastModifiedBy;
  int? lastModifiedT;
  String? lc;
  String? lcImported;
  String? link;
  List<dynamic>? mainCountriesTags;
  String? manufacturingPlaces;
  List<String>? manufacturingPlacesTags;
  String? maxImgid;
  List<dynamic>? mineralsPrevTags;
  List<dynamic>? mineralsTags;
  List<String>? miscTags;
  String? noNutritionData;
  int? novaGroup;
  String? novaGroupDebug;
  String? novaGroups;
  Map<String, List<List<String>>>? novaGroupsMarkers;
  List<String>? novaGroupsTags;
  List<dynamic>? nucleotidesPrevTags;
  List<dynamic>? nucleotidesTags;
  NutrientLevels? nutrientLevels;
  List<String>? nutrientLevelsTags;
  Nutriments? nutriments;
  NutriscoreData? nutriscoreData;
  String? nutriscoreGrade;
  int? nutriscoreScore;
  int? nutriscoreScoreOpposite;
  String? nutritionData;
  String? nutritionDataPer;
  String? nutritionDataPerImported;
  String? nutritionDataPrepared;
  String? nutritionDataPreparedPer;
  String? nutritionDataPreparedPerImported;
  String? nutritionGradeFr;
  String? nutritionGrades;
  List<String>? nutritionGradesTags;
  int? nutritionScoreBeverage;
  String? nutritionScoreDebug;
  int? nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients;
  int? nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue;
  String? obsolete;
  String? obsoleteSinceDate;
  String? originEn;
  String? originFr;
  String? origins;
  List<String>? originsHierarchy;
  String? originsLc;
  String? originsOld;
  List<String>? originsTags;
  List<dynamic>? otherNutritionalSubstancesTags;
  String? packaging;
  List<String>? packagingHierarchy;
  String? packagingLc;
  List<String>? packagingMaterialsTags;
  String? packagingOld;
  String? packagingOldBeforeTaxonomization;
  List<dynamic>? packagingRecyclingTags;
  List<dynamic>? packagingShapesTags;
  List<String>? packagingTags;
  String? packagingTextEn;
  String? packagingTextFr;
  List<ProductPackaging>? packagings;
  PackagingsMaterials? packagingsMaterials;
  int? packagingsN;
  List<String>? photographersTags;
  String? pnnsGroups1;
  List<String>? pnnsGroups1Tags;
  String? pnnsGroups2;
  List<String>? pnnsGroups2Tags;
  int? popularityKey;
  List<String>? popularityTags;
  String? productName;
  String? productNameEn;
  String? productNameEnImported;
  String? productNameFr;
  String? purchasePlaces;
  List<dynamic>? purchasePlacesTags;
  String? quantity;
  List<dynamic>? removedCountriesTags;
  int? rev;
  int? scansN;
  SelectedImages? selectedImages;
  String? servingQuantity;
  String? servingSize;
  String? servingSizeImported;
  List<Source>? sources;
  SourcesFields? sourcesFields;
  String? states;
  List<String>? statesHierarchy;
  List<String>? statesTags;
  String? stores;
  List<String>? storesTags;
  String? traces;
  String? tracesFromIngredients;
  String? tracesFromUser;
  List<dynamic>? tracesHierarchy;
  String? tracesLc;
  List<dynamic>? tracesTags;
  int? uniqueScansN;
  int? unknownIngredientsN;
  List<dynamic>? unknownNutrientsTags;
  String? updateKey;
  List<dynamic>? vitaminsPrevTags;
  List<dynamic>? vitaminsTags;
  List<dynamic>? weighersTags;

  Product({
    this.id,
    this.keywords,
    this.addedCountriesTags,
    this.additivesDebugTags,
    this.additivesN,
    this.additivesOldN,
    this.additivesOldTags,
    this.additivesOriginalTags,
    this.additivesPrevOriginalTags,
    this.additivesTags,
    this.allergens,
    this.allergensFromIngredients,
    this.allergensFromUser,
    this.allergensHierarchy,
    this.allergensImported,
    this.allergensLc,
    this.allergensTags,
    this.aminoAcidsPrevTags,
    this.aminoAcidsTags,
    this.brandOwner,
    this.brandOwnerImported,
    this.brands,
    this.brandsTags,
    this.categories,
    this.categoriesHierarchy,
    this.categoriesImported,
    this.categoriesLc,
    this.categoriesOld,
    this.categoriesProperties,
    this.categoriesPropertiesTags,
    this.categoriesTags,
    this.categoryProperties,
    this.checkersTags,
    this.ciqualFoodNameTags,
    this.citiesTags,
    this.code,
    this.codesTags,
    this.comparedToCategory,
    this.complete,
    this.completeness,
    this.correctorsTags,
    this.countries,
    this.countriesHierarchy,
    this.countriesImported,
    this.countriesLc,
    this.countriesTags,
    this.createdT,
    this.creator,
    this.dataQualityBugsTags,
    this.dataQualityErrorsTags,
    this.dataQualityInfoTags,
    this.dataQualityTags,
    this.dataQualityWarningsTags,
    this.dataSources,
    this.dataSourcesImported,
    this.dataSourcesTags,
    this.debugParamSortedLangs,
    this.ecoscoreData,
    this.ecoscoreExtendedData,
    this.ecoscoreExtendedDataVersion,
    this.ecoscoreGrade,
    this.ecoscoreTags,
    this.editors,
    this.editorsTags,
    this.embCodes,
    this.embCodes20141016,
    this.embCodesOrig,
    this.embCodesTags,
    this.entryDatesTags,
    this.environmentImpactLevel,
    this.environmentImpactLevelTags,
    this.expirationDate,
    this.foodGroups,
    this.foodGroupsTags,
    this.genericNameEn,
    this.genericNameFr,
    this.productId,
    this.imageFrontSmallUrl,
    this.imageFrontThumbUrl,
    this.imageFrontUrl,
    this.imageIngredientsSmallUrl,
    this.imageIngredientsThumbUrl,
    this.imageIngredientsUrl,
    this.imageNutritionSmallUrl,
    this.imageNutritionThumbUrl,
    this.imageNutritionUrl,
    this.imageSmallUrl,
    this.imageThumbUrl,
    this.imageUrl,
    this.images,
    this.informersTags,
    this.ingredients,
    this.ingredientsAnalysis,
    this.ingredientsAnalysisTags,
    this.ingredientsFromOrThatMayBeFromPalmOilN,
    this.ingredientsFromPalmOilN,
    this.ingredientsFromPalmOilTags,
    this.ingredientsHierarchy,
    this.ingredientsN,
    this.ingredientsNTags,
    this.ingredientsOriginalTags,
    this.ingredientsPercentAnalysis,
    this.ingredientsTags,
    this.ingredientsText,
    this.ingredientsTextDebug,
    this.ingredientsTextDebugTags,
    this.ingredientsTextEn,
    this.ingredientsTextEnImported,
    this.ingredientsTextFr,
    this.ingredientsTextWithAllergens,
    this.ingredientsTextWithAllergensEn,
    this.ingredientsTextWithAllergensFr,
    this.ingredientsThatMayBeFromPalmOilN,
    this.ingredientsThatMayBeFromPalmOilTags,
    this.ingredientsWithSpecifiedPercentN,
    this.ingredientsWithSpecifiedPercentSum,
    this.ingredientsWithUnspecifiedPercentN,
    this.ingredientsWithUnspecifiedPercentSum,
    this.interfaceVersionCreated,
    this.interfaceVersionModified,
    this.knownIngredientsN,
    this.labels,
    this.labelsHierarchy,
    this.labelsLc,
    this.labelsOld,
    this.labelsTags,
    this.lang,
    this.languages,
    this.languagesCodes,
    this.languagesHierarchy,
    this.languagesTags,
    this.lastEditDatesTags,
    this.lastEditor,
    this.lastImageDatesTags,
    this.lastImageT,
    this.lastModifiedBy,
    this.lastModifiedT,
    this.lc,
    this.lcImported,
    this.link,
    this.mainCountriesTags,
    this.manufacturingPlaces,
    this.manufacturingPlacesTags,
    this.maxImgid,
    this.mineralsPrevTags,
    this.mineralsTags,
    this.miscTags,
    this.noNutritionData,
    this.novaGroup,
    this.novaGroupDebug,
    this.novaGroups,
    this.novaGroupsMarkers,
    this.novaGroupsTags,
    this.nucleotidesPrevTags,
    this.nucleotidesTags,
    this.nutrientLevels,
    this.nutrientLevelsTags,
    this.nutriments,
    this.nutriscoreData,
    this.nutriscoreGrade,
    this.nutriscoreScore,
    this.nutriscoreScoreOpposite,
    this.nutritionData,
    this.nutritionDataPer,
    this.nutritionDataPerImported,
    this.nutritionDataPrepared,
    this.nutritionDataPreparedPer,
    this.nutritionDataPreparedPerImported,
    this.nutritionGradeFr,
    this.nutritionGrades,
    this.nutritionGradesTags,
    this.nutritionScoreBeverage,
    this.nutritionScoreDebug,
    this.nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients,
    this.nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue,
    this.obsolete,
    this.obsoleteSinceDate,
    this.originEn,
    this.originFr,
    this.origins,
    this.originsHierarchy,
    this.originsLc,
    this.originsOld,
    this.originsTags,
    this.otherNutritionalSubstancesTags,
    this.packaging,
    this.packagingHierarchy,
    this.packagingLc,
    this.packagingMaterialsTags,
    this.packagingOld,
    this.packagingOldBeforeTaxonomization,
    this.packagingRecyclingTags,
    this.packagingShapesTags,
    this.packagingTags,
    this.packagingTextEn,
    this.packagingTextFr,
    this.packagings,
    this.packagingsMaterials,
    this.packagingsN,
    this.photographersTags,
    this.pnnsGroups1,
    this.pnnsGroups1Tags,
    this.pnnsGroups2,
    this.pnnsGroups2Tags,
    this.popularityKey,
    this.popularityTags,
    this.productName,
    this.productNameEn,
    this.productNameEnImported,
    this.productNameFr,
    this.purchasePlaces,
    this.purchasePlacesTags,
    this.quantity,
    this.removedCountriesTags,
    this.rev,
    this.scansN,
    this.selectedImages,
    this.servingQuantity,
    this.servingSize,
    this.servingSizeImported,
    this.sources,
    this.sourcesFields,
    this.states,
    this.statesHierarchy,
    this.statesTags,
    this.stores,
    this.storesTags,
    this.traces,
    this.tracesFromIngredients,
    this.tracesFromUser,
    this.tracesHierarchy,
    this.tracesLc,
    this.tracesTags,
    this.uniqueScansN,
    this.unknownIngredientsN,
    this.unknownNutrientsTags,
    this.updateKey,
    this.vitaminsPrevTags,
    this.vitaminsTags,
    this.weighersTags,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["_id"],
        keywords: json["_keywords"] == null
            ? []
            : List<String>.from(json["_keywords"]!.map((x) => x)),
        addedCountriesTags: json["added_countries_tags"] == null
            ? []
            : List<dynamic>.from(json["added_countries_tags"]!.map((x) => x)),
        additivesDebugTags: json["additives_debug_tags"] == null
            ? []
            : List<dynamic>.from(json["additives_debug_tags"]!.map((x) => x)),
        additivesN: json["additives_n"],
        additivesOldN: json["additives_old_n"],
        additivesOldTags: json["additives_old_tags"] == null
            ? []
            : List<String>.from(json["additives_old_tags"]!.map((x) => x)),
        additivesOriginalTags: json["additives_original_tags"] == null
            ? []
            : List<String>.from(json["additives_original_tags"]!.map((x) => x)),
        additivesPrevOriginalTags: json["additives_prev_original_tags"] == null
            ? []
            : List<dynamic>.from(
                json["additives_prev_original_tags"]!.map((x) => x)),
        additivesTags: json["additives_tags"] == null
            ? []
            : List<String>.from(json["additives_tags"]!.map((x) => x)),
        allergens: json["allergens"],
        allergensFromIngredients: json["allergens_from_ingredients"],
        allergensFromUser: json["allergens_from_user"],
        allergensHierarchy: json["allergens_hierarchy"] == null
            ? []
            : List<String>.from(json["allergens_hierarchy"]!.map((x) => x)),
        allergensImported: json["allergens_imported"],
        allergensLc: json["allergens_lc"],
        allergensTags: json["allergens_tags"] == null
            ? []
            : List<String>.from(json["allergens_tags"]!.map((x) => x)),
        aminoAcidsPrevTags: json["amino_acids_prev_tags"] == null
            ? []
            : List<dynamic>.from(json["amino_acids_prev_tags"]!.map((x) => x)),
        aminoAcidsTags: json["amino_acids_tags"] == null
            ? []
            : List<dynamic>.from(json["amino_acids_tags"]!.map((x) => x)),
        brandOwner: json["brand_owner"],
        brandOwnerImported: json["brand_owner_imported"],
        brands: json["brands"],
        brandsTags: json["brands_tags"] == null
            ? []
            : List<String>.from(json["brands_tags"]!.map((x) => x)),
        categories: json["categories"],
        categoriesHierarchy: json["categories_hierarchy"] == null
            ? []
            : List<String>.from(json["categories_hierarchy"]!.map((x) => x)),
        categoriesImported: json["categories_imported"],
        categoriesLc: json["categories_lc"],
        categoriesOld: json["categories_old"],
        categoriesProperties: json["categories_properties"] == null
            ? null
            : CategoriesProperties.fromJson(json["categories_properties"]),
        categoriesPropertiesTags: json["categories_properties_tags"] == null
            ? []
            : List<String>.from(
                json["categories_properties_tags"]!.map((x) => x)),
        categoriesTags: json["categories_tags"] == null
            ? []
            : List<String>.from(json["categories_tags"]!.map((x) => x)),
        categoryProperties: json["category_properties"] == null
            ? null
            : CategoriesProperties.fromJson(json["category_properties"]),
        checkersTags: json["checkers_tags"] == null
            ? []
            : List<dynamic>.from(json["checkers_tags"]!.map((x) => x)),
        ciqualFoodNameTags: json["ciqual_food_name_tags"] == null
            ? []
            : List<String>.from(json["ciqual_food_name_tags"]!.map((x) => x)),
        citiesTags: json["cities_tags"] == null
            ? []
            : List<dynamic>.from(json["cities_tags"]!.map((x) => x)),
        code: json["code"],
        codesTags: json["codes_tags"] == null
            ? []
            : List<String>.from(json["codes_tags"]!.map((x) => x)),
        comparedToCategory: json["compared_to_category"],
        complete: json["complete"],
        completeness: json["completeness"]?.toDouble(),
        correctorsTags: json["correctors_tags"] == null
            ? []
            : List<String>.from(json["correctors_tags"]!.map((x) => x)),
        countries: json["countries"],
        countriesHierarchy: json["countries_hierarchy"] == null
            ? []
            : List<String>.from(json["countries_hierarchy"]!.map((x) => x)),
        countriesImported: json["countries_imported"],
        countriesLc: json["countries_lc"],
        countriesTags: json["countries_tags"] == null
            ? []
            : List<String>.from(json["countries_tags"]!.map((x) => x)),
        createdT: json["created_t"],
        creator: json["creator"],
        dataQualityBugsTags: json["data_quality_bugs_tags"] == null
            ? []
            : List<dynamic>.from(json["data_quality_bugs_tags"]!.map((x) => x)),
        dataQualityErrorsTags: json["data_quality_errors_tags"] == null
            ? []
            : List<dynamic>.from(
                json["data_quality_errors_tags"]!.map((x) => x)),
        dataQualityInfoTags: json["data_quality_info_tags"] == null
            ? []
            : List<String>.from(json["data_quality_info_tags"]!.map((x) => x)),
        dataQualityTags: json["data_quality_tags"] == null
            ? []
            : List<String>.from(json["data_quality_tags"]!.map((x) => x)),
        dataQualityWarningsTags: json["data_quality_warnings_tags"] == null
            ? []
            : List<String>.from(
                json["data_quality_warnings_tags"]!.map((x) => x)),
        dataSources: json["data_sources"],
        dataSourcesImported: json["data_sources_imported"],
        dataSourcesTags: json["data_sources_tags"] == null
            ? []
            : List<String>.from(json["data_sources_tags"]!.map((x) => x)),
        debugParamSortedLangs: json["debug_param_sorted_langs"] == null
            ? []
            : List<String>.from(
                json["debug_param_sorted_langs"]!.map((x) => x)),
        ecoscoreData: json["ecoscore_data"] == null
            ? null
            : EcoscoreData.fromJson(json["ecoscore_data"]),
        ecoscoreExtendedData: json["ecoscore_extended_data"] == null
            ? null
            : EcoscoreExtendedData.fromJson(json["ecoscore_extended_data"]),
        ecoscoreExtendedDataVersion: json["ecoscore_extended_data_version"],
        ecoscoreGrade: json["ecoscore_grade"],
        ecoscoreTags: json["ecoscore_tags"] == null
            ? []
            : List<String>.from(json["ecoscore_tags"]!.map((x) => x)),
        editors: json["editors"] == null
            ? []
            : List<String>.from(json["editors"]!.map((x) => x)),
        editorsTags: json["editors_tags"] == null
            ? []
            : List<String>.from(json["editors_tags"]!.map((x) => x)),
        embCodes: json["emb_codes"],
        embCodes20141016: json["emb_codes_20141016"],
        embCodesOrig: json["emb_codes_orig"],
        embCodesTags: json["emb_codes_tags"] == null
            ? []
            : List<dynamic>.from(json["emb_codes_tags"]!.map((x) => x)),
        entryDatesTags: json["entry_dates_tags"] == null
            ? []
            : List<String>.from(json["entry_dates_tags"]!.map((x) => x)),
        environmentImpactLevel: json["environment_impact_level"],
        environmentImpactLevelTags:
            json["environment_impact_level_tags"] == null
                ? []
                : List<dynamic>.from(
                    json["environment_impact_level_tags"]!.map((x) => x)),
        expirationDate: json["expiration_date"],
        foodGroups: json["food_groups"],
        foodGroupsTags: json["food_groups_tags"] == null
            ? []
            : List<String>.from(json["food_groups_tags"]!.map((x) => x)),
        genericNameEn: json["generic_name_en"],
        genericNameFr: json["generic_name_fr"],
        productId: json["id"],
        imageFrontSmallUrl: json["image_front_small_url"],
        imageFrontThumbUrl: json["image_front_thumb_url"],
        imageFrontUrl: json["image_front_url"],
        imageIngredientsSmallUrl: json["image_ingredients_small_url"],
        imageIngredientsThumbUrl: json["image_ingredients_thumb_url"],
        imageIngredientsUrl: json["image_ingredients_url"],
        imageNutritionSmallUrl: json["image_nutrition_small_url"],
        imageNutritionThumbUrl: json["image_nutrition_thumb_url"],
        imageNutritionUrl: json["image_nutrition_url"],
        imageSmallUrl: json["image_small_url"],
        imageThumbUrl: json["image_thumb_url"],
        imageUrl: json["image_url"],
        images: json["images"] == null ? null : Images.fromJson(json["images"]),
        informersTags: json["informers_tags"] == null
            ? []
            : List<String>.from(json["informers_tags"]!.map((x) => x)),
        ingredients: json["ingredients"] == null
            ? []
            : List<ProductIngredient>.from(
                json["ingredients"]!.map((x) => ProductIngredient.fromJson(x))),
        ingredientsAnalysis: json["ingredients_analysis"] == null
            ? null
            : IngredientsAnalysis.fromJson(json["ingredients_analysis"]),
        ingredientsAnalysisTags: json["ingredients_analysis_tags"] == null
            ? []
            : List<String>.from(
                json["ingredients_analysis_tags"]!.map((x) => x)),
        ingredientsFromOrThatMayBeFromPalmOilN:
            json["ingredients_from_or_that_may_be_from_palm_oil_n"],
        ingredientsFromPalmOilN: json["ingredients_from_palm_oil_n"],
        ingredientsFromPalmOilTags:
            json["ingredients_from_palm_oil_tags"] == null
                ? []
                : List<dynamic>.from(
                    json["ingredients_from_palm_oil_tags"]!.map((x) => x)),
        ingredientsHierarchy: json["ingredients_hierarchy"] == null
            ? []
            : List<String>.from(json["ingredients_hierarchy"]!.map((x) => x)),
        ingredientsN: json["ingredients_n"],
        ingredientsNTags: json["ingredients_n_tags"] == null
            ? []
            : List<String>.from(json["ingredients_n_tags"]!.map((x) => x)),
        ingredientsOriginalTags: json["ingredients_original_tags"] == null
            ? []
            : List<String>.from(
                json["ingredients_original_tags"]!.map((x) => x)),
        ingredientsPercentAnalysis: json["ingredients_percent_analysis"],
        ingredientsTags: json["ingredients_tags"] == null
            ? []
            : List<String>.from(json["ingredients_tags"]!.map((x) => x)),
        ingredientsText: json["ingredients_text"],
        ingredientsTextDebug: json["ingredients_text_debug"],
        ingredientsTextDebugTags: json["ingredients_text_debug_tags"] == null
            ? []
            : List<dynamic>.from(
                json["ingredients_text_debug_tags"]!.map((x) => x)),
        ingredientsTextEn: json["ingredients_text_en"],
        ingredientsTextEnImported: json["ingredients_text_en_imported"],
        ingredientsTextFr: json["ingredients_text_fr"],
        ingredientsTextWithAllergens: json["ingredients_text_with_allergens"],
        ingredientsTextWithAllergensEn:
            json["ingredients_text_with_allergens_en"],
        ingredientsTextWithAllergensFr:
            json["ingredients_text_with_allergens_fr"],
        ingredientsThatMayBeFromPalmOilN:
            json["ingredients_that_may_be_from_palm_oil_n"],
        ingredientsThatMayBeFromPalmOilTags:
            json["ingredients_that_may_be_from_palm_oil_tags"] == null
                ? []
                : List<dynamic>.from(
                    json["ingredients_that_may_be_from_palm_oil_tags"]!
                        .map((x) => x)),
        ingredientsWithSpecifiedPercentN:
            json["ingredients_with_specified_percent_n"],
        ingredientsWithSpecifiedPercentSum:
            json["ingredients_with_specified_percent_sum"],
        ingredientsWithUnspecifiedPercentN:
            json["ingredients_with_unspecified_percent_n"],
        ingredientsWithUnspecifiedPercentSum:
            json["ingredients_with_unspecified_percent_sum"],
        interfaceVersionCreated: json["interface_version_created"],
        interfaceVersionModified: json["interface_version_modified"],
        knownIngredientsN: json["known_ingredients_n"],
        labels: json["labels"],
        labelsHierarchy: json["labels_hierarchy"] == null
            ? []
            : List<String>.from(json["labels_hierarchy"]!.map((x) => x)),
        labelsLc: json["labels_lc"],
        labelsOld: json["labels_old"],
        labelsTags: json["labels_tags"] == null
            ? []
            : List<String>.from(json["labels_tags"]!.map((x) => x)),
        lang: json["lang"],
        languages: json["languages"] == null
            ? null
            : Languages.fromJson(json["languages"]),
        languagesCodes: json["languages_codes"] == null
            ? null
            : LanguagesCodes.fromJson(json["languages_codes"]),
        languagesHierarchy: json["languages_hierarchy"] == null
            ? []
            : List<String>.from(json["languages_hierarchy"]!.map((x) => x)),
        languagesTags: json["languages_tags"] == null
            ? []
            : List<String>.from(json["languages_tags"]!.map((x) => x)),
        lastEditDatesTags: json["last_edit_dates_tags"] == null
            ? []
            : List<String>.from(json["last_edit_dates_tags"]!.map((x) => x)),
        lastEditor: json["last_editor"],
        lastImageDatesTags: json["last_image_dates_tags"] == null
            ? []
            : List<String>.from(json["last_image_dates_tags"]!.map((x) => x)),
        lastImageT: json["last_image_t"],
        lastModifiedBy: json["last_modified_by"],
        lastModifiedT: json["last_modified_t"],
        lc: json["lc"],
        lcImported: json["lc_imported"],
        link: json["link"],
        mainCountriesTags: json["main_countries_tags"] == null
            ? []
            : List<dynamic>.from(json["main_countries_tags"]!.map((x) => x)),
        manufacturingPlaces: json["manufacturing_places"],
        manufacturingPlacesTags: json["manufacturing_places_tags"] == null
            ? []
            : List<String>.from(
                json["manufacturing_places_tags"]!.map((x) => x)),
        maxImgid: json["max_imgid"],
        mineralsPrevTags: json["minerals_prev_tags"] == null
            ? []
            : List<dynamic>.from(json["minerals_prev_tags"]!.map((x) => x)),
        mineralsTags: json["minerals_tags"] == null
            ? []
            : List<dynamic>.from(json["minerals_tags"]!.map((x) => x)),
        miscTags: json["misc_tags"] == null
            ? []
            : List<String>.from(json["misc_tags"]!.map((x) => x)),
        noNutritionData: json["no_nutrition_data"],
        novaGroup: json["nova_group"],
        novaGroupDebug: json["nova_group_debug"],
        novaGroups: json["nova_groups"],
        novaGroupsMarkers: Map.from(json["nova_groups_markers"]!).map((k, v) =>
            MapEntry<String, List<List<String>>>(
                k,
                List<List<String>>.from(
                    v.map((x) => List<String>.from(x.map((x) => x)))))),
        novaGroupsTags: json["nova_groups_tags"] == null
            ? []
            : List<String>.from(json["nova_groups_tags"]!.map((x) => x)),
        nucleotidesPrevTags: json["nucleotides_prev_tags"] == null
            ? []
            : List<dynamic>.from(json["nucleotides_prev_tags"]!.map((x) => x)),
        nucleotidesTags: json["nucleotides_tags"] == null
            ? []
            : List<dynamic>.from(json["nucleotides_tags"]!.map((x) => x)),
        nutrientLevels: json["nutrient_levels"] == null
            ? null
            : NutrientLevels.fromJson(json["nutrient_levels"]),
        nutrientLevelsTags: json["nutrient_levels_tags"] == null
            ? []
            : List<String>.from(json["nutrient_levels_tags"]!.map((x) => x)),
        nutriments: json["nutriments"] == null
            ? null
            : Nutriments.fromJson(json["nutriments"]),
        nutriscoreData: json["nutriscore_data"] == null
            ? null
            : NutriscoreData.fromJson(json["nutriscore_data"]),
        nutriscoreGrade: json["nutriscore_grade"],
        nutriscoreScore: json["nutriscore_score"],
        nutriscoreScoreOpposite: json["nutriscore_score_opposite"],
        nutritionData: json["nutrition_data"],
        nutritionDataPer: json["nutrition_data_per"],
        nutritionDataPerImported: json["nutrition_data_per_imported"],
        nutritionDataPrepared: json["nutrition_data_prepared"],
        nutritionDataPreparedPer: json["nutrition_data_prepared_per"],
        nutritionDataPreparedPerImported:
            json["nutrition_data_prepared_per_imported"],
        nutritionGradeFr: json["nutrition_grade_fr"],
        nutritionGrades: json["nutrition_grades"],
        nutritionGradesTags: json["nutrition_grades_tags"] == null
            ? []
            : List<String>.from(json["nutrition_grades_tags"]!.map((x) => x)),
        nutritionScoreBeverage: json["nutrition_score_beverage"],
        nutritionScoreDebug: json["nutrition_score_debug"],
        nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients: json[
            "nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients"],
        nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue: json[
            "nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients_value"],
        obsolete: json["obsolete"],
        obsoleteSinceDate: json["obsolete_since_date"],
        originEn: json["origin_en"],
        originFr: json["origin_fr"],
        origins: json["origins"],
        originsHierarchy: json["origins_hierarchy"] == null
            ? []
            : List<String>.from(json["origins_hierarchy"]!.map((x) => x)),
        originsLc: json["origins_lc"],
        originsOld: json["origins_old"],
        originsTags: json["origins_tags"] == null
            ? []
            : List<String>.from(json["origins_tags"]!.map((x) => x)),
        otherNutritionalSubstancesTags:
            json["other_nutritional_substances_tags"] == null
                ? []
                : List<dynamic>.from(
                    json["other_nutritional_substances_tags"]!.map((x) => x)),
        packaging: json["packaging"],
        packagingHierarchy: json["packaging_hierarchy"] == null
            ? []
            : List<String>.from(json["packaging_hierarchy"]!.map((x) => x)),
        packagingLc: json["packaging_lc"],
        packagingMaterialsTags: json["packaging_materials_tags"] == null
            ? []
            : List<String>.from(
                json["packaging_materials_tags"]!.map((x) => x)),
        packagingOld: json["packaging_old"],
        packagingOldBeforeTaxonomization:
            json["packaging_old_before_taxonomization"],
        packagingRecyclingTags: json["packaging_recycling_tags"] == null
            ? []
            : List<dynamic>.from(
                json["packaging_recycling_tags"]!.map((x) => x)),
        packagingShapesTags: json["packaging_shapes_tags"] == null
            ? []
            : List<dynamic>.from(json["packaging_shapes_tags"]!.map((x) => x)),
        packagingTags: json["packaging_tags"] == null
            ? []
            : List<String>.from(json["packaging_tags"]!.map((x) => x)),
        packagingTextEn: json["packaging_text_en"],
        packagingTextFr: json["packaging_text_fr"],
        packagings: json["packagings"] == null
            ? []
            : List<ProductPackaging>.from(
                json["packagings"]!.map((x) => ProductPackaging.fromJson(x))),
        packagingsMaterials: json["packagings_materials"] == null
            ? null
            : PackagingsMaterials.fromJson(json["packagings_materials"]),
        packagingsN: json["packagings_n"],
        photographersTags: json["photographers_tags"] == null
            ? []
            : List<String>.from(json["photographers_tags"]!.map((x) => x)),
        pnnsGroups1: json["pnns_groups_1"],
        pnnsGroups1Tags: json["pnns_groups_1_tags"] == null
            ? []
            : List<String>.from(json["pnns_groups_1_tags"]!.map((x) => x)),
        pnnsGroups2: json["pnns_groups_2"],
        pnnsGroups2Tags: json["pnns_groups_2_tags"] == null
            ? []
            : List<String>.from(json["pnns_groups_2_tags"]!.map((x) => x)),
        popularityKey: json["popularity_key"],
        popularityTags: json["popularity_tags"] == null
            ? []
            : List<String>.from(json["popularity_tags"]!.map((x) => x)),
        productName: json["product_name"],
        productNameEn: json["product_name_en"],
        productNameEnImported: json["product_name_en_imported"],
        productNameFr: json["product_name_fr"],
        purchasePlaces: json["purchase_places"],
        purchasePlacesTags: json["purchase_places_tags"] == null
            ? []
            : List<dynamic>.from(json["purchase_places_tags"]!.map((x) => x)),
        quantity: json["quantity"],
        removedCountriesTags: json["removed_countries_tags"] == null
            ? []
            : List<dynamic>.from(json["removed_countries_tags"]!.map((x) => x)),
        rev: json["rev"],
        scansN: json["scans_n"],
        selectedImages: json["selected_images"] == null
            ? null
            : SelectedImages.fromJson(json["selected_images"]),
        servingQuantity: json["serving_quantity"],
        servingSize: json["serving_size"],
        servingSizeImported: json["serving_size_imported"],
        sources: json["sources"] == null
            ? []
            : List<Source>.from(
                json["sources"]!.map((x) => Source.fromJson(x))),
        sourcesFields: json["sources_fields"] == null
            ? null
            : SourcesFields.fromJson(json["sources_fields"]),
        states: json["states"],
        statesHierarchy: json["states_hierarchy"] == null
            ? []
            : List<String>.from(json["states_hierarchy"]!.map((x) => x)),
        statesTags: json["states_tags"] == null
            ? []
            : List<String>.from(json["states_tags"]!.map((x) => x)),
        stores: json["stores"],
        storesTags: json["stores_tags"] == null
            ? []
            : List<String>.from(json["stores_tags"]!.map((x) => x)),
        traces: json["traces"],
        tracesFromIngredients: json["traces_from_ingredients"],
        tracesFromUser: json["traces_from_user"],
        tracesHierarchy: json["traces_hierarchy"] == null
            ? []
            : List<dynamic>.from(json["traces_hierarchy"]!.map((x) => x)),
        tracesLc: json["traces_lc"],
        tracesTags: json["traces_tags"] == null
            ? []
            : List<dynamic>.from(json["traces_tags"]!.map((x) => x)),
        uniqueScansN: json["unique_scans_n"],
        unknownIngredientsN: json["unknown_ingredients_n"],
        unknownNutrientsTags: json["unknown_nutrients_tags"] == null
            ? []
            : List<dynamic>.from(json["unknown_nutrients_tags"]!.map((x) => x)),
        updateKey: json["update_key"],
        vitaminsPrevTags: json["vitamins_prev_tags"] == null
            ? []
            : List<dynamic>.from(json["vitamins_prev_tags"]!.map((x) => x)),
        vitaminsTags: json["vitamins_tags"] == null
            ? []
            : List<dynamic>.from(json["vitamins_tags"]!.map((x) => x)),
        weighersTags: json["weighers_tags"] == null
            ? []
            : List<dynamic>.from(json["weighers_tags"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "_keywords":
            keywords == null ? [] : List<dynamic>.from(keywords!.map((x) => x)),
        "added_countries_tags": addedCountriesTags == null
            ? []
            : List<dynamic>.from(addedCountriesTags!.map((x) => x)),
        "additives_debug_tags": additivesDebugTags == null
            ? []
            : List<dynamic>.from(additivesDebugTags!.map((x) => x)),
        "additives_n": additivesN,
        "additives_old_n": additivesOldN,
        "additives_old_tags": additivesOldTags == null
            ? []
            : List<dynamic>.from(additivesOldTags!.map((x) => x)),
        "additives_original_tags": additivesOriginalTags == null
            ? []
            : List<dynamic>.from(additivesOriginalTags!.map((x) => x)),
        "additives_prev_original_tags": additivesPrevOriginalTags == null
            ? []
            : List<dynamic>.from(additivesPrevOriginalTags!.map((x) => x)),
        "additives_tags": additivesTags == null
            ? []
            : List<dynamic>.from(additivesTags!.map((x) => x)),
        "allergens": allergens,
        "allergens_from_ingredients": allergensFromIngredients,
        "allergens_from_user": allergensFromUser,
        "allergens_hierarchy": allergensHierarchy == null
            ? []
            : List<dynamic>.from(allergensHierarchy!.map((x) => x)),
        "allergens_imported": allergensImported,
        "allergens_lc": allergensLc,
        "allergens_tags": allergensTags == null
            ? []
            : List<dynamic>.from(allergensTags!.map((x) => x)),
        "amino_acids_prev_tags": aminoAcidsPrevTags == null
            ? []
            : List<dynamic>.from(aminoAcidsPrevTags!.map((x) => x)),
        "amino_acids_tags": aminoAcidsTags == null
            ? []
            : List<dynamic>.from(aminoAcidsTags!.map((x) => x)),
        "brand_owner": brandOwner,
        "brand_owner_imported": brandOwnerImported,
        "brands": brands,
        "brands_tags": brandsTags == null
            ? []
            : List<dynamic>.from(brandsTags!.map((x) => x)),
        "categories": categories,
        "categories_hierarchy": categoriesHierarchy == null
            ? []
            : List<dynamic>.from(categoriesHierarchy!.map((x) => x)),
        "categories_imported": categoriesImported,
        "categories_lc": categoriesLc,
        "categories_old": categoriesOld,
        "categories_properties": categoriesProperties?.toJson(),
        "categories_properties_tags": categoriesPropertiesTags == null
            ? []
            : List<dynamic>.from(categoriesPropertiesTags!.map((x) => x)),
        "categories_tags": categoriesTags == null
            ? []
            : List<dynamic>.from(categoriesTags!.map((x) => x)),
        "category_properties": categoryProperties?.toJson(),
        "checkers_tags": checkersTags == null
            ? []
            : List<dynamic>.from(checkersTags!.map((x) => x)),
        "ciqual_food_name_tags": ciqualFoodNameTags == null
            ? []
            : List<dynamic>.from(ciqualFoodNameTags!.map((x) => x)),
        "cities_tags": citiesTags == null
            ? []
            : List<dynamic>.from(citiesTags!.map((x) => x)),
        "code": code,
        "codes_tags": codesTags == null
            ? []
            : List<dynamic>.from(codesTags!.map((x) => x)),
        "compared_to_category": comparedToCategory,
        "complete": complete,
        "completeness": completeness,
        "correctors_tags": correctorsTags == null
            ? []
            : List<dynamic>.from(correctorsTags!.map((x) => x)),
        "countries": countries,
        "countries_hierarchy": countriesHierarchy == null
            ? []
            : List<dynamic>.from(countriesHierarchy!.map((x) => x)),
        "countries_imported": countriesImported,
        "countries_lc": countriesLc,
        "countries_tags": countriesTags == null
            ? []
            : List<dynamic>.from(countriesTags!.map((x) => x)),
        "created_t": createdT,
        "creator": creator,
        "data_quality_bugs_tags": dataQualityBugsTags == null
            ? []
            : List<dynamic>.from(dataQualityBugsTags!.map((x) => x)),
        "data_quality_errors_tags": dataQualityErrorsTags == null
            ? []
            : List<dynamic>.from(dataQualityErrorsTags!.map((x) => x)),
        "data_quality_info_tags": dataQualityInfoTags == null
            ? []
            : List<dynamic>.from(dataQualityInfoTags!.map((x) => x)),
        "data_quality_tags": dataQualityTags == null
            ? []
            : List<dynamic>.from(dataQualityTags!.map((x) => x)),
        "data_quality_warnings_tags": dataQualityWarningsTags == null
            ? []
            : List<dynamic>.from(dataQualityWarningsTags!.map((x) => x)),
        "data_sources": dataSources,
        "data_sources_imported": dataSourcesImported,
        "data_sources_tags": dataSourcesTags == null
            ? []
            : List<dynamic>.from(dataSourcesTags!.map((x) => x)),
        "debug_param_sorted_langs": debugParamSortedLangs == null
            ? []
            : List<dynamic>.from(debugParamSortedLangs!.map((x) => x)),
        "ecoscore_data": ecoscoreData?.toJson(),
        "ecoscore_extended_data": ecoscoreExtendedData?.toJson(),
        "ecoscore_extended_data_version": ecoscoreExtendedDataVersion,
        "ecoscore_grade": ecoscoreGrade,
        "ecoscore_tags": ecoscoreTags == null
            ? []
            : List<dynamic>.from(ecoscoreTags!.map((x) => x)),
        "editors":
            editors == null ? [] : List<dynamic>.from(editors!.map((x) => x)),
        "editors_tags": editorsTags == null
            ? []
            : List<dynamic>.from(editorsTags!.map((x) => x)),
        "emb_codes": embCodes,
        "emb_codes_20141016": embCodes20141016,
        "emb_codes_orig": embCodesOrig,
        "emb_codes_tags": embCodesTags == null
            ? []
            : List<dynamic>.from(embCodesTags!.map((x) => x)),
        "entry_dates_tags": entryDatesTags == null
            ? []
            : List<dynamic>.from(entryDatesTags!.map((x) => x)),
        "environment_impact_level": environmentImpactLevel,
        "environment_impact_level_tags": environmentImpactLevelTags == null
            ? []
            : List<dynamic>.from(environmentImpactLevelTags!.map((x) => x)),
        "expiration_date": expirationDate,
        "food_groups": foodGroups,
        "food_groups_tags": foodGroupsTags == null
            ? []
            : List<dynamic>.from(foodGroupsTags!.map((x) => x)),
        "generic_name_en": genericNameEn,
        "generic_name_fr": genericNameFr,
        "id": productId,
        "image_front_small_url": imageFrontSmallUrl,
        "image_front_thumb_url": imageFrontThumbUrl,
        "image_front_url": imageFrontUrl,
        "image_ingredients_small_url": imageIngredientsSmallUrl,
        "image_ingredients_thumb_url": imageIngredientsThumbUrl,
        "image_ingredients_url": imageIngredientsUrl,
        "image_nutrition_small_url": imageNutritionSmallUrl,
        "image_nutrition_thumb_url": imageNutritionThumbUrl,
        "image_nutrition_url": imageNutritionUrl,
        "image_small_url": imageSmallUrl,
        "image_thumb_url": imageThumbUrl,
        "image_url": imageUrl,
        "images": images?.toJson(),
        "informers_tags": informersTags == null
            ? []
            : List<dynamic>.from(informersTags!.map((x) => x)),
        "ingredients": ingredients == null
            ? []
            : List<dynamic>.from(ingredients!.map((x) => x.toJson())),
        "ingredients_analysis": ingredientsAnalysis?.toJson(),
        "ingredients_analysis_tags": ingredientsAnalysisTags == null
            ? []
            : List<dynamic>.from(ingredientsAnalysisTags!.map((x) => x)),
        "ingredients_from_or_that_may_be_from_palm_oil_n":
            ingredientsFromOrThatMayBeFromPalmOilN,
        "ingredients_from_palm_oil_n": ingredientsFromPalmOilN,
        "ingredients_from_palm_oil_tags": ingredientsFromPalmOilTags == null
            ? []
            : List<dynamic>.from(ingredientsFromPalmOilTags!.map((x) => x)),
        "ingredients_hierarchy": ingredientsHierarchy == null
            ? []
            : List<dynamic>.from(ingredientsHierarchy!.map((x) => x)),
        "ingredients_n": ingredientsN,
        "ingredients_n_tags": ingredientsNTags == null
            ? []
            : List<dynamic>.from(ingredientsNTags!.map((x) => x)),
        "ingredients_original_tags": ingredientsOriginalTags == null
            ? []
            : List<dynamic>.from(ingredientsOriginalTags!.map((x) => x)),
        "ingredients_percent_analysis": ingredientsPercentAnalysis,
        "ingredients_tags": ingredientsTags == null
            ? []
            : List<dynamic>.from(ingredientsTags!.map((x) => x)),
        "ingredients_text": ingredientsText,
        "ingredients_text_debug": ingredientsTextDebug,
        "ingredients_text_debug_tags": ingredientsTextDebugTags == null
            ? []
            : List<dynamic>.from(ingredientsTextDebugTags!.map((x) => x)),
        "ingredients_text_en": ingredientsTextEn,
        "ingredients_text_en_imported": ingredientsTextEnImported,
        "ingredients_text_fr": ingredientsTextFr,
        "ingredients_text_with_allergens": ingredientsTextWithAllergens,
        "ingredients_text_with_allergens_en": ingredientsTextWithAllergensEn,
        "ingredients_text_with_allergens_fr": ingredientsTextWithAllergensFr,
        "ingredients_that_may_be_from_palm_oil_n":
            ingredientsThatMayBeFromPalmOilN,
        "ingredients_that_may_be_from_palm_oil_tags":
            ingredientsThatMayBeFromPalmOilTags == null
                ? []
                : List<dynamic>.from(
                    ingredientsThatMayBeFromPalmOilTags!.map((x) => x)),
        "ingredients_with_specified_percent_n":
            ingredientsWithSpecifiedPercentN,
        "ingredients_with_specified_percent_sum":
            ingredientsWithSpecifiedPercentSum,
        "ingredients_with_unspecified_percent_n":
            ingredientsWithUnspecifiedPercentN,
        "ingredients_with_unspecified_percent_sum":
            ingredientsWithUnspecifiedPercentSum,
        "interface_version_created": interfaceVersionCreated,
        "interface_version_modified": interfaceVersionModified,
        "known_ingredients_n": knownIngredientsN,
        "labels": labels,
        "labels_hierarchy": labelsHierarchy == null
            ? []
            : List<dynamic>.from(labelsHierarchy!.map((x) => x)),
        "labels_lc": labelsLc,
        "labels_old": labelsOld,
        "labels_tags": labelsTags == null
            ? []
            : List<dynamic>.from(labelsTags!.map((x) => x)),
        "lang": lang,
        "languages": languages?.toJson(),
        "languages_codes": languagesCodes?.toJson(),
        "languages_hierarchy": languagesHierarchy == null
            ? []
            : List<dynamic>.from(languagesHierarchy!.map((x) => x)),
        "languages_tags": languagesTags == null
            ? []
            : List<dynamic>.from(languagesTags!.map((x) => x)),
        "last_edit_dates_tags": lastEditDatesTags == null
            ? []
            : List<dynamic>.from(lastEditDatesTags!.map((x) => x)),
        "last_editor": lastEditor,
        "last_image_dates_tags": lastImageDatesTags == null
            ? []
            : List<dynamic>.from(lastImageDatesTags!.map((x) => x)),
        "last_image_t": lastImageT,
        "last_modified_by": lastModifiedBy,
        "last_modified_t": lastModifiedT,
        "lc": lc,
        "lc_imported": lcImported,
        "link": link,
        "main_countries_tags": mainCountriesTags == null
            ? []
            : List<dynamic>.from(mainCountriesTags!.map((x) => x)),
        "manufacturing_places": manufacturingPlaces,
        "manufacturing_places_tags": manufacturingPlacesTags == null
            ? []
            : List<dynamic>.from(manufacturingPlacesTags!.map((x) => x)),
        "max_imgid": maxImgid,
        "minerals_prev_tags": mineralsPrevTags == null
            ? []
            : List<dynamic>.from(mineralsPrevTags!.map((x) => x)),
        "minerals_tags": mineralsTags == null
            ? []
            : List<dynamic>.from(mineralsTags!.map((x) => x)),
        "misc_tags":
            miscTags == null ? [] : List<dynamic>.from(miscTags!.map((x) => x)),
        "no_nutrition_data": noNutritionData,
        "nova_group": novaGroup,
        "nova_group_debug": novaGroupDebug,
        "nova_groups": novaGroups,
        "nova_groups_markers": Map.from(novaGroupsMarkers!).map((k, v) =>
            MapEntry<String, dynamic>(
                k,
                List<dynamic>.from(
                    v.map((x) => List<dynamic>.from(x.map((x) => x)))))),
        "nova_groups_tags": novaGroupsTags == null
            ? []
            : List<dynamic>.from(novaGroupsTags!.map((x) => x)),
        "nucleotides_prev_tags": nucleotidesPrevTags == null
            ? []
            : List<dynamic>.from(nucleotidesPrevTags!.map((x) => x)),
        "nucleotides_tags": nucleotidesTags == null
            ? []
            : List<dynamic>.from(nucleotidesTags!.map((x) => x)),
        "nutrient_levels": nutrientLevels?.toJson(),
        "nutrient_levels_tags": nutrientLevelsTags == null
            ? []
            : List<dynamic>.from(nutrientLevelsTags!.map((x) => x)),
        "nutriments": nutriments?.toJson(),
        "nutriscore_data": nutriscoreData?.toJson(),
        "nutriscore_grade": nutriscoreGrade,
        "nutriscore_score": nutriscoreScore,
        "nutriscore_score_opposite": nutriscoreScoreOpposite,
        "nutrition_data": nutritionData,
        "nutrition_data_per": nutritionDataPer,
        "nutrition_data_per_imported": nutritionDataPerImported,
        "nutrition_data_prepared": nutritionDataPrepared,
        "nutrition_data_prepared_per": nutritionDataPreparedPer,
        "nutrition_data_prepared_per_imported":
            nutritionDataPreparedPerImported,
        "nutrition_grade_fr": nutritionGradeFr,
        "nutrition_grades": nutritionGrades,
        "nutrition_grades_tags": nutritionGradesTags == null
            ? []
            : List<dynamic>.from(nutritionGradesTags!.map((x) => x)),
        "nutrition_score_beverage": nutritionScoreBeverage,
        "nutrition_score_debug": nutritionScoreDebug,
        "nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients":
            nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients,
        "nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients_value":
            nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue,
        "obsolete": obsolete,
        "obsolete_since_date": obsoleteSinceDate,
        "origin_en": originEn,
        "origin_fr": originFr,
        "origins": origins,
        "origins_hierarchy": originsHierarchy == null
            ? []
            : List<dynamic>.from(originsHierarchy!.map((x) => x)),
        "origins_lc": originsLc,
        "origins_old": originsOld,
        "origins_tags": originsTags == null
            ? []
            : List<dynamic>.from(originsTags!.map((x) => x)),
        "other_nutritional_substances_tags": otherNutritionalSubstancesTags ==
                null
            ? []
            : List<dynamic>.from(otherNutritionalSubstancesTags!.map((x) => x)),
        "packaging": packaging,
        "packaging_hierarchy": packagingHierarchy == null
            ? []
            : List<dynamic>.from(packagingHierarchy!.map((x) => x)),
        "packaging_lc": packagingLc,
        "packaging_materials_tags": packagingMaterialsTags == null
            ? []
            : List<dynamic>.from(packagingMaterialsTags!.map((x) => x)),
        "packaging_old": packagingOld,
        "packaging_old_before_taxonomization": packagingOldBeforeTaxonomization,
        "packaging_recycling_tags": packagingRecyclingTags == null
            ? []
            : List<dynamic>.from(packagingRecyclingTags!.map((x) => x)),
        "packaging_shapes_tags": packagingShapesTags == null
            ? []
            : List<dynamic>.from(packagingShapesTags!.map((x) => x)),
        "packaging_tags": packagingTags == null
            ? []
            : List<dynamic>.from(packagingTags!.map((x) => x)),
        "packaging_text_en": packagingTextEn,
        "packaging_text_fr": packagingTextFr,
        "packagings": packagings == null
            ? []
            : List<dynamic>.from(packagings!.map((x) => x.toJson())),
        "packagings_materials": packagingsMaterials?.toJson(),
        "packagings_n": packagingsN,
        "photographers_tags": photographersTags == null
            ? []
            : List<dynamic>.from(photographersTags!.map((x) => x)),
        "pnns_groups_1": pnnsGroups1,
        "pnns_groups_1_tags": pnnsGroups1Tags == null
            ? []
            : List<dynamic>.from(pnnsGroups1Tags!.map((x) => x)),
        "pnns_groups_2": pnnsGroups2,
        "pnns_groups_2_tags": pnnsGroups2Tags == null
            ? []
            : List<dynamic>.from(pnnsGroups2Tags!.map((x) => x)),
        "popularity_key": popularityKey,
        "popularity_tags": popularityTags == null
            ? []
            : List<dynamic>.from(popularityTags!.map((x) => x)),
        "product_name": productName,
        "product_name_en": productNameEn,
        "product_name_en_imported": productNameEnImported,
        "product_name_fr": productNameFr,
        "purchase_places": purchasePlaces,
        "purchase_places_tags": purchasePlacesTags == null
            ? []
            : List<dynamic>.from(purchasePlacesTags!.map((x) => x)),
        "quantity": quantity,
        "removed_countries_tags": removedCountriesTags == null
            ? []
            : List<dynamic>.from(removedCountriesTags!.map((x) => x)),
        "rev": rev,
        "scans_n": scansN,
        "selected_images": selectedImages?.toJson(),
        "serving_quantity": servingQuantity,
        "serving_size": servingSize,
        "serving_size_imported": servingSizeImported,
        "sources": sources == null
            ? []
            : List<dynamic>.from(sources!.map((x) => x.toJson())),
        "sources_fields": sourcesFields?.toJson(),
        "states": states,
        "states_hierarchy": statesHierarchy == null
            ? []
            : List<dynamic>.from(statesHierarchy!.map((x) => x)),
        "states_tags": statesTags == null
            ? []
            : List<dynamic>.from(statesTags!.map((x) => x)),
        "stores": stores,
        "stores_tags": storesTags == null
            ? []
            : List<dynamic>.from(storesTags!.map((x) => x)),
        "traces": traces,
        "traces_from_ingredients": tracesFromIngredients,
        "traces_from_user": tracesFromUser,
        "traces_hierarchy": tracesHierarchy == null
            ? []
            : List<dynamic>.from(tracesHierarchy!.map((x) => x)),
        "traces_lc": tracesLc,
        "traces_tags": tracesTags == null
            ? []
            : List<dynamic>.from(tracesTags!.map((x) => x)),
        "unique_scans_n": uniqueScansN,
        "unknown_ingredients_n": unknownIngredientsN,
        "unknown_nutrients_tags": unknownNutrientsTags == null
            ? []
            : List<dynamic>.from(unknownNutrientsTags!.map((x) => x)),
        "update_key": updateKey,
        "vitamins_prev_tags": vitaminsPrevTags == null
            ? []
            : List<dynamic>.from(vitaminsPrevTags!.map((x) => x)),
        "vitamins_tags": vitaminsTags == null
            ? []
            : List<dynamic>.from(vitaminsTags!.map((x) => x)),
        "weighers_tags": weighersTags == null
            ? []
            : List<dynamic>.from(weighersTags!.map((x) => x)),
      };
}

class CategoriesProperties {
  CategoriesProperties();

  factory CategoriesProperties.fromJson(Map<String, dynamic> json) =>
      CategoriesProperties();

  Map<String, dynamic> toJson() => {};
}

class EcoscoreData {
  Adjustments? adjustments;
  Agribalyse? agribalyse;
  Missing? missing;
  int? missingAgribalyseMatchWarning;
  CategoriesProperties? scores;
  String? status;

  EcoscoreData({
    this.adjustments,
    this.agribalyse,
    this.missing,
    this.missingAgribalyseMatchWarning,
    this.scores,
    this.status,
  });

  factory EcoscoreData.fromJson(Map<String, dynamic> json) => EcoscoreData(
        adjustments: json["adjustments"] == null
            ? null
            : Adjustments.fromJson(json["adjustments"]),
        agribalyse: json["agribalyse"] == null
            ? null
            : Agribalyse.fromJson(json["agribalyse"]),
        missing:
            json["missing"] == null ? null : Missing.fromJson(json["missing"]),
        missingAgribalyseMatchWarning: json["missing_agribalyse_match_warning"],
        scores: json["scores"] == null
            ? null
            : CategoriesProperties.fromJson(json["scores"]),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "adjustments": adjustments?.toJson(),
        "agribalyse": agribalyse?.toJson(),
        "missing": missing?.toJson(),
        "missing_agribalyse_match_warning": missingAgribalyseMatchWarning,
        "scores": scores?.toJson(),
        "status": status,
      };
}

class Adjustments {
  OriginsOfIngredients? originsOfIngredients;
  AdjustmentsPackaging? packaging;
  ProductionSystem? productionSystem;
  CategoriesProperties? threatenedSpecies;

  Adjustments({
    this.originsOfIngredients,
    this.packaging,
    this.productionSystem,
    this.threatenedSpecies,
  });

  factory Adjustments.fromJson(Map<String, dynamic> json) => Adjustments(
        originsOfIngredients: json["origins_of_ingredients"] == null
            ? null
            : OriginsOfIngredients.fromJson(json["origins_of_ingredients"]),
        packaging: json["packaging"] == null
            ? null
            : AdjustmentsPackaging.fromJson(json["packaging"]),
        productionSystem: json["production_system"] == null
            ? null
            : ProductionSystem.fromJson(json["production_system"]),
        threatenedSpecies: json["threatened_species"] == null
            ? null
            : CategoriesProperties.fromJson(json["threatened_species"]),
      );

  Map<String, dynamic> toJson() => {
        "origins_of_ingredients": originsOfIngredients?.toJson(),
        "packaging": packaging?.toJson(),
        "production_system": productionSystem?.toJson(),
        "threatened_species": threatenedSpecies?.toJson(),
      };
}

class OriginsOfIngredients {
  List<AggregatedOrigin>? aggregatedOrigins;
  int? epiScore;
  int? epiValue;
  List<String>? originsFromOriginsField;
  int? transportationScore;
  Map<String, int>? transportationScores;
  int? transportationValue;
  Map<String, int>? transportationValues;
  int? value;
  Map<String, int>? values;

  OriginsOfIngredients({
    this.aggregatedOrigins,
    this.epiScore,
    this.epiValue,
    this.originsFromOriginsField,
    this.transportationScore,
    this.transportationScores,
    this.transportationValue,
    this.transportationValues,
    this.value,
    this.values,
  });

  factory OriginsOfIngredients.fromJson(Map<String, dynamic> json) =>
      OriginsOfIngredients(
        aggregatedOrigins: json["aggregated_origins"] == null
            ? []
            : List<AggregatedOrigin>.from(json["aggregated_origins"]!
                .map((x) => AggregatedOrigin.fromJson(x))),
        epiScore: json["epi_score"],
        epiValue: json["epi_value"],
        originsFromOriginsField: json["origins_from_origins_field"] == null
            ? []
            : List<String>.from(
                json["origins_from_origins_field"]!.map((x) => x)),
        transportationScore: json["transportation_score"],
        transportationScores: Map.from(json["transportation_scores"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
        transportationValue: json["transportation_value"],
        transportationValues: Map.from(json["transportation_values"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
        value: json["value"],
        values: Map.from(json["values"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "aggregated_origins": aggregatedOrigins == null
            ? []
            : List<dynamic>.from(aggregatedOrigins!.map((x) => x.toJson())),
        "epi_score": epiScore,
        "epi_value": epiValue,
        "origins_from_origins_field": originsFromOriginsField == null
            ? []
            : List<dynamic>.from(originsFromOriginsField!.map((x) => x)),
        "transportation_score": transportationScore,
        "transportation_scores": Map.from(transportationScores!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "transportation_value": transportationValue,
        "transportation_values": Map.from(transportationValues!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "value": value,
        "values":
            Map.from(values!).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}

class AggregatedOrigin {
  String? epiScore;
  String? origin;
  int? percent;
  dynamic transportationScore;

  AggregatedOrigin({
    this.epiScore,
    this.origin,
    this.percent,
    this.transportationScore,
  });

  factory AggregatedOrigin.fromJson(Map<String, dynamic> json) =>
      AggregatedOrigin(
        epiScore: json["epi_score"],
        origin: json["origin"],
        percent: json["percent"],
        transportationScore: json["transportation_score"],
      );

  Map<String, dynamic> toJson() => {
        "epi_score": epiScore,
        "origin": origin,
        "percent": percent,
        "transportation_score": transportationScore,
      };
}

class AdjustmentsPackaging {
  int? nonRecyclableAndNonBiodegradableMaterials;
  List<PackagingPackaging>? packagings;
  int? score;
  int? value;
  String? warning;

  AdjustmentsPackaging({
    this.nonRecyclableAndNonBiodegradableMaterials,
    this.packagings,
    this.score,
    this.value,
    this.warning,
  });

  factory AdjustmentsPackaging.fromJson(Map<String, dynamic> json) =>
      AdjustmentsPackaging(
        nonRecyclableAndNonBiodegradableMaterials:
            json["non_recyclable_and_non_biodegradable_materials"],
        packagings: json["packagings"] == null
            ? []
            : List<PackagingPackaging>.from(
                json["packagings"]!.map((x) => PackagingPackaging.fromJson(x))),
        score: json["score"],
        value: json["value"],
        warning: json["warning"],
      );

  Map<String, dynamic> toJson() => {
        "non_recyclable_and_non_biodegradable_materials":
            nonRecyclableAndNonBiodegradableMaterials,
        "packagings": packagings == null
            ? []
            : List<dynamic>.from(packagings!.map((x) => x.toJson())),
        "score": score,
        "value": value,
        "warning": warning,
      };
}

class PackagingPackaging {
  int? ecoscoreMaterialScore;
  int? ecoscoreShapeRatio;
  String? material;
  String? shape;
  String? nonRecyclableAndNonBiodegradable;

  PackagingPackaging({
    this.ecoscoreMaterialScore,
    this.ecoscoreShapeRatio,
    this.material,
    this.shape,
    this.nonRecyclableAndNonBiodegradable,
  });

  factory PackagingPackaging.fromJson(Map<String, dynamic> json) =>
      PackagingPackaging(
        ecoscoreMaterialScore: json["ecoscore_material_score"],
        ecoscoreShapeRatio: json["ecoscore_shape_ratio"],
        material: json["material"],
        shape: json["shape"],
        nonRecyclableAndNonBiodegradable:
            json["non_recyclable_and_non_biodegradable"],
      );

  Map<String, dynamic> toJson() => {
        "ecoscore_material_score": ecoscoreMaterialScore,
        "ecoscore_shape_ratio": ecoscoreShapeRatio,
        "material": material,
        "shape": shape,
        "non_recyclable_and_non_biodegradable":
            nonRecyclableAndNonBiodegradable,
      };
}

class ProductionSystem {
  List<dynamic>? labels;
  int? value;
  String? warning;

  ProductionSystem({
    this.labels,
    this.value,
    this.warning,
  });

  factory ProductionSystem.fromJson(Map<String, dynamic> json) =>
      ProductionSystem(
        labels: json["labels"] == null
            ? []
            : List<dynamic>.from(json["labels"]!.map((x) => x)),
        value: json["value"],
        warning: json["warning"],
      );

  Map<String, dynamic> toJson() => {
        "labels":
            labels == null ? [] : List<dynamic>.from(labels!.map((x) => x)),
        "value": value,
        "warning": warning,
      };
}

class Agribalyse {
  String? warning;

  Agribalyse({
    this.warning,
  });

  factory Agribalyse.fromJson(Map<String, dynamic> json) => Agribalyse(
        warning: json["warning"],
      );

  Map<String, dynamic> toJson() => {
        "warning": warning,
      };
}

class Missing {
  int? agbCategory;
  int? labels;
  int? packagings;

  Missing({
    this.agbCategory,
    this.labels,
    this.packagings,
  });

  factory Missing.fromJson(Map<String, dynamic> json) => Missing(
        agbCategory: json["agb_category"],
        labels: json["labels"],
        packagings: json["packagings"],
      );

  Map<String, dynamic> toJson() => {
        "agb_category": agbCategory,
        "labels": labels,
        "packagings": packagings,
      };
}

class EcoscoreExtendedData {
  Impact? impact;

  EcoscoreExtendedData({
    this.impact,
  });

  factory EcoscoreExtendedData.fromJson(Map<String, dynamic> json) =>
      EcoscoreExtendedData(
        impact: json["impact"] == null ? null : Impact.fromJson(json["impact"]),
      );

  Map<String, dynamic> toJson() => {
        "impact": impact?.toJson(),
      };
}

class Impact {
  double? efSingleScoreLogStddev;
  LikeliestImpacts? likeliestImpacts;
  Map<String, double>? likeliestRecipe;
  double? massRatioUncharacterized;
  UncharacterizedIngredients? uncharacterizedIngredients;
  UncharacterizedIngredientsMassProportionClass?
      uncharacterizedIngredientsMassProportion;
  UncharacterizedIngredientsMassProportionClass?
      uncharacterizedIngredientsRatio;
  List<String>? warnings;

  Impact({
    this.efSingleScoreLogStddev,
    this.likeliestImpacts,
    this.likeliestRecipe,
    this.massRatioUncharacterized,
    this.uncharacterizedIngredients,
    this.uncharacterizedIngredientsMassProportion,
    this.uncharacterizedIngredientsRatio,
    this.warnings,
  });

  factory Impact.fromJson(Map<String, dynamic> json) => Impact(
        efSingleScoreLogStddev: json["ef_single_score_log_stddev"]?.toDouble(),
        likeliestImpacts: json["likeliest_impacts"] == null
            ? null
            : LikeliestImpacts.fromJson(json["likeliest_impacts"]),
        likeliestRecipe: Map.from(json["likeliest_recipe"]!)
            .map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
        massRatioUncharacterized:
            json["mass_ratio_uncharacterized"]?.toDouble(),
        uncharacterizedIngredients: json["uncharacterized_ingredients"] == null
            ? null
            : UncharacterizedIngredients.fromJson(
                json["uncharacterized_ingredients"]),
        uncharacterizedIngredientsMassProportion:
            json["uncharacterized_ingredients_mass_proportion"] == null
                ? null
                : UncharacterizedIngredientsMassProportionClass.fromJson(
                    json["uncharacterized_ingredients_mass_proportion"]),
        uncharacterizedIngredientsRatio:
            json["uncharacterized_ingredients_ratio"] == null
                ? null
                : UncharacterizedIngredientsMassProportionClass.fromJson(
                    json["uncharacterized_ingredients_ratio"]),
        warnings: json["warnings"] == null
            ? []
            : List<String>.from(json["warnings"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "ef_single_score_log_stddev": efSingleScoreLogStddev,
        "likeliest_impacts": likeliestImpacts?.toJson(),
        "likeliest_recipe": Map.from(likeliestRecipe!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "mass_ratio_uncharacterized": massRatioUncharacterized,
        "uncharacterized_ingredients": uncharacterizedIngredients?.toJson(),
        "uncharacterized_ingredients_mass_proportion":
            uncharacterizedIngredientsMassProportion?.toJson(),
        "uncharacterized_ingredients_ratio":
            uncharacterizedIngredientsRatio?.toJson(),
        "warnings":
            warnings == null ? [] : List<dynamic>.from(warnings!.map((x) => x)),
      };
}

class LikeliestImpacts {
  double? climateChange;
  double? efSingleScore;

  LikeliestImpacts({
    this.climateChange,
    this.efSingleScore,
  });

  factory LikeliestImpacts.fromJson(Map<String, dynamic> json) =>
      LikeliestImpacts(
        climateChange: json["Climate_change"]?.toDouble(),
        efSingleScore: json["EF_single_score"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "Climate_change": climateChange,
        "EF_single_score": efSingleScore,
      };
}

class UncharacterizedIngredients {
  List<String>? impact;
  List<String>? nutrition;

  UncharacterizedIngredients({
    this.impact,
    this.nutrition,
  });

  factory UncharacterizedIngredients.fromJson(Map<String, dynamic> json) =>
      UncharacterizedIngredients(
        impact: json["impact"] == null
            ? []
            : List<String>.from(json["impact"]!.map((x) => x)),
        nutrition: json["nutrition"] == null
            ? []
            : List<String>.from(json["nutrition"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "impact":
            impact == null ? [] : List<dynamic>.from(impact!.map((x) => x)),
        "nutrition": nutrition == null
            ? []
            : List<dynamic>.from(nutrition!.map((x) => x)),
      };
}

class UncharacterizedIngredientsMassProportionClass {
  double? impact;
  double? nutrition;

  UncharacterizedIngredientsMassProportionClass({
    this.impact,
    this.nutrition,
  });

  factory UncharacterizedIngredientsMassProportionClass.fromJson(
          Map<String, dynamic> json) =>
      UncharacterizedIngredientsMassProportionClass(
        impact: json["impact"]?.toDouble(),
        nutrition: json["nutrition"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "impact": impact,
        "nutrition": nutrition,
      };
}

class Images {
  The1? the1;
  The1? the2;
  The1? the3;
  The4? the4;
  The1? the5;
  The1? the6;
  The1? the7;
  The1? the8;
  The1? the9;
  The1? the10;
  IngredientsEnClass? front;
  FrontEn? frontEn;
  FrontFr? frontFr;
  IngredientsEnClass? ingredients;
  IngredientsEnClass? ingredientsEn;
  FrontFr? ingredientsFr;
  IngredientsEnClass? nutrition;
  FrontFr? nutritionEn;

  Images({
    this.the1,
    this.the2,
    this.the3,
    this.the4,
    this.the5,
    this.the6,
    this.the7,
    this.the8,
    this.the9,
    this.the10,
    this.front,
    this.frontEn,
    this.frontFr,
    this.ingredients,
    this.ingredientsEn,
    this.ingredientsFr,
    this.nutrition,
    this.nutritionEn,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        the1: json["1"] == null ? null : The1.fromJson(json["1"]),
        the2: json["2"] == null ? null : The1.fromJson(json["2"]),
        the3: json["3"] == null ? null : The1.fromJson(json["3"]),
        the4: json["4"] == null ? null : The4.fromJson(json["4"]),
        the5: json["5"] == null ? null : The1.fromJson(json["5"]),
        the6: json["6"] == null ? null : The1.fromJson(json["6"]),
        the7: json["7"] == null ? null : The1.fromJson(json["7"]),
        the8: json["8"] == null ? null : The1.fromJson(json["8"]),
        the9: json["9"] == null ? null : The1.fromJson(json["9"]),
        the10: json["10"] == null ? null : The1.fromJson(json["10"]),
        front: json["front"] == null
            ? null
            : IngredientsEnClass.fromJson(json["front"]),
        frontEn: json["front_en"] == null
            ? null
            : FrontEn.fromJson(json["front_en"]),
        frontFr: json["front_fr"] == null
            ? null
            : FrontFr.fromJson(json["front_fr"]),
        ingredients: json["ingredients"] == null
            ? null
            : IngredientsEnClass.fromJson(json["ingredients"]),
        ingredientsEn: json["ingredients_en"] == null
            ? null
            : IngredientsEnClass.fromJson(json["ingredients_en"]),
        ingredientsFr: json["ingredients_fr"] == null
            ? null
            : FrontFr.fromJson(json["ingredients_fr"]),
        nutrition: json["nutrition"] == null
            ? null
            : IngredientsEnClass.fromJson(json["nutrition"]),
        nutritionEn: json["nutrition_en"] == null
            ? null
            : FrontFr.fromJson(json["nutrition_en"]),
      );

  Map<String, dynamic> toJson() => {
        "1": the1?.toJson(),
        "2": the2?.toJson(),
        "3": the3?.toJson(),
        "4": the4?.toJson(),
        "5": the5?.toJson(),
        "6": the6?.toJson(),
        "7": the7?.toJson(),
        "8": the8?.toJson(),
        "9": the9?.toJson(),
        "10": the10?.toJson(),
        "front": front?.toJson(),
        "front_en": frontEn?.toJson(),
        "front_fr": frontFr?.toJson(),
        "ingredients": ingredients?.toJson(),
        "ingredients_en": ingredientsEn?.toJson(),
        "ingredients_fr": ingredientsFr?.toJson(),
        "nutrition": nutrition?.toJson(),
        "nutrition_en": nutritionEn?.toJson(),
      };
}

class IngredientsEnClass {
  String? geometry;
  String? imgid;
  String? normalize;
  String? rev;
  Sizes? sizes;
  String? whiteMagic;
  int? ocr;
  String? orientation;

  IngredientsEnClass({
    this.geometry,
    this.imgid,
    this.normalize,
    this.rev,
    this.sizes,
    this.whiteMagic,
    this.ocr,
    this.orientation,
  });

  factory IngredientsEnClass.fromJson(Map<String, dynamic> json) =>
      IngredientsEnClass(
        geometry: json["geometry"],
        imgid: json["imgid"],
        normalize: json["normalize"],
        rev: json["rev"],
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        whiteMagic: json["white_magic"],
        ocr: json["ocr"],
        orientation: json["orientation"],
      );

  Map<String, dynamic> toJson() => {
        "geometry": geometry,
        "imgid": imgid,
        "normalize": normalize,
        "rev": rev,
        "sizes": sizes?.toJson(),
        "white_magic": whiteMagic,
        "ocr": ocr,
        "orientation": orientation,
      };
}

class Sizes {
  The100? the100;
  The100? the400;
  The100? full;
  The100? the200;

  Sizes({
    this.the100,
    this.the400,
    this.full,
    this.the200,
  });

  factory Sizes.fromJson(Map<String, dynamic> json) => Sizes(
        the100: json["100"] == null ? null : The100.fromJson(json["100"]),
        the400: json["400"] == null ? null : The100.fromJson(json["400"]),
        full: json["full"] == null ? null : The100.fromJson(json["full"]),
        the200: json["200"] == null ? null : The100.fromJson(json["200"]),
      );

  Map<String, dynamic> toJson() => {
        "100": the100?.toJson(),
        "400": the400?.toJson(),
        "full": full?.toJson(),
        "200": the200?.toJson(),
      };
}

class The100 {
  int? h;
  int? w;

  The100({
    this.h,
    this.w,
  });

  factory The100.fromJson(Map<String, dynamic> json) => The100(
        h: json["h"],
        w: json["w"],
      );

  Map<String, dynamic> toJson() => {
        "h": h,
        "w": w,
      };
}

class FrontEn {
  int? angle;
  String? coordinatesImageSize;
  String? geometry;
  String? imgid;
  dynamic normalize;
  String? rev;
  Sizes? sizes;
  dynamic whiteMagic;
  String? x1;
  String? x2;
  String? y1;
  String? y2;

  FrontEn({
    this.angle,
    this.coordinatesImageSize,
    this.geometry,
    this.imgid,
    this.normalize,
    this.rev,
    this.sizes,
    this.whiteMagic,
    this.x1,
    this.x2,
    this.y1,
    this.y2,
  });

  factory FrontEn.fromJson(Map<String, dynamic> json) => FrontEn(
        angle: json["angle"],
        coordinatesImageSize: json["coordinates_image_size"],
        geometry: json["geometry"],
        imgid: json["imgid"],
        normalize: json["normalize"],
        rev: json["rev"],
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        whiteMagic: json["white_magic"],
        x1: json["x1"],
        x2: json["x2"],
        y1: json["y1"],
        y2: json["y2"],
      );

  Map<String, dynamic> toJson() => {
        "angle": angle,
        "coordinates_image_size": coordinatesImageSize,
        "geometry": geometry,
        "imgid": imgid,
        "normalize": normalize,
        "rev": rev,
        "sizes": sizes?.toJson(),
        "white_magic": whiteMagic,
        "x1": x1,
        "x2": x2,
        "y1": y1,
        "y2": y2,
      };
}

class FrontFr {
  dynamic angle;
  String? coordinatesImageSize;
  String? geometry;
  String? imgid;
  String? normalize;
  String? rev;
  Sizes? sizes;
  String? whiteMagic;
  String? x1;
  String? x2;
  String? y1;
  String? y2;
  int? ocr;
  String? orientation;

  FrontFr({
    this.angle,
    this.coordinatesImageSize,
    this.geometry,
    this.imgid,
    this.normalize,
    this.rev,
    this.sizes,
    this.whiteMagic,
    this.x1,
    this.x2,
    this.y1,
    this.y2,
    this.ocr,
    this.orientation,
  });

  factory FrontFr.fromJson(Map<String, dynamic> json) => FrontFr(
        angle: json["angle"],
        coordinatesImageSize: json["coordinates_image_size"],
        geometry: json["geometry"],
        imgid: json["imgid"],
        normalize: json["normalize"],
        rev: json["rev"],
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        whiteMagic: json["white_magic"],
        x1: json["x1"],
        x2: json["x2"],
        y1: json["y1"],
        y2: json["y2"],
        ocr: json["ocr"],
        orientation: json["orientation"],
      );

  Map<String, dynamic> toJson() => {
        "angle": angle,
        "coordinates_image_size": coordinatesImageSize,
        "geometry": geometry,
        "imgid": imgid,
        "normalize": normalize,
        "rev": rev,
        "sizes": sizes?.toJson(),
        "white_magic": whiteMagic,
        "x1": x1,
        "x2": x2,
        "y1": y1,
        "y2": y2,
        "ocr": ocr,
        "orientation": orientation,
      };
}

class The1 {
  Sizes? sizes;
  int? uploadedT;
  String? uploader;

  The1({
    this.sizes,
    this.uploadedT,
    this.uploader,
  });

  factory The1.fromJson(Map<String, dynamic> json) => The1(
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        uploadedT: json["uploaded_t"],
        uploader: json["uploader"],
      );

  Map<String, dynamic> toJson() => {
        "sizes": sizes?.toJson(),
        "uploaded_t": uploadedT,
        "uploader": uploader,
      };
}

class The4 {
  Sizes? sizes;
  String? uploadedT;
  String? uploader;

  The4({
    this.sizes,
    this.uploadedT,
    this.uploader,
  });

  factory The4.fromJson(Map<String, dynamic> json) => The4(
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        uploadedT: json["uploaded_t"],
        uploader: json["uploader"],
      );

  Map<String, dynamic> toJson() => {
        "sizes": sizes?.toJson(),
        "uploaded_t": uploadedT,
        "uploader": uploader,
      };
}

class ProductIngredient {
  String? id;
  List<IngredientIngredient>? ingredients;
  double? percentEstimate;
  double? percentMax;
  double? percentMin;
  String? text;
  String? vegan;
  String? vegetarian;

  ProductIngredient({
    this.id,
    this.ingredients,
    this.percentEstimate,
    this.percentMax,
    this.percentMin,
    this.text,
    this.vegan,
    this.vegetarian,
  });

  factory ProductIngredient.fromJson(Map<String, dynamic> json) =>
      ProductIngredient(
        id: json["id"],
        ingredients: json["ingredients"] == null
            ? []
            : List<IngredientIngredient>.from(json["ingredients"]!
                .map((x) => IngredientIngredient.fromJson(x))),
        percentEstimate: json["percent_estimate"]?.toDouble(),
        percentMax: json["percent_max"]?.toDouble(),
        percentMin: json["percent_min"]?.toDouble(),
        text: json["text"],
        vegan: json["vegan"],
        vegetarian: json["vegetarian"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ingredients": ingredients == null
            ? []
            : List<dynamic>.from(ingredients!.map((x) => x.toJson())),
        "percent_estimate": percentEstimate,
        "percent_max": percentMax,
        "percent_min": percentMin,
        "text": text,
        "vegan": vegan,
        "vegetarian": vegetarian,
      };
}

class IngredientIngredient {
  String? id;
  double? percentEstimate;
  double? percentMax;
  double? percentMin;
  String? text;
  String? vegan;
  String? vegetarian;
  String? fromPalmOil;
  List<IngredientIngredient>? ingredients;

  IngredientIngredient({
    this.id,
    this.percentEstimate,
    this.percentMax,
    this.percentMin,
    this.text,
    this.vegan,
    this.vegetarian,
    this.fromPalmOil,
    this.ingredients,
  });

  factory IngredientIngredient.fromJson(Map<String, dynamic> json) =>
      IngredientIngredient(
        id: json["id"],
        percentEstimate: json["percent_estimate"]?.toDouble(),
        percentMax: json["percent_max"]?.toDouble(),
        percentMin: json["percent_min"]?.toDouble(),
        text: json["text"],
        vegan: json["vegan"],
        vegetarian: json["vegetarian"],
        fromPalmOil: json["from_palm_oil"],
        ingredients: json["ingredients"] == null
            ? []
            : List<IngredientIngredient>.from(json["ingredients"]!
                .map((x) => IngredientIngredient.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "percent_estimate": percentEstimate,
        "percent_max": percentMax,
        "percent_min": percentMin,
        "text": text,
        "vegan": vegan,
        "vegetarian": vegetarian,
        "from_palm_oil": fromPalmOil,
        "ingredients": ingredients == null
            ? []
            : List<dynamic>.from(ingredients!.map((x) => x.toJson())),
      };
}

class IngredientsAnalysis {
  List<String>? enMayContainPalmOil;
  List<String>? enMaybeVegetarian;
  List<String>? enNonVegan;

  IngredientsAnalysis({
    this.enMayContainPalmOil,
    this.enMaybeVegetarian,
    this.enNonVegan,
  });

  factory IngredientsAnalysis.fromJson(Map<String, dynamic> json) =>
      IngredientsAnalysis(
        enMayContainPalmOil: json["en:may-contain-palm-oil"] == null
            ? []
            : List<String>.from(json["en:may-contain-palm-oil"]!.map((x) => x)),
        enMaybeVegetarian: json["en:maybe-vegetarian"] == null
            ? []
            : List<String>.from(json["en:maybe-vegetarian"]!.map((x) => x)),
        enNonVegan: json["en:non-vegan"] == null
            ? []
            : List<String>.from(json["en:non-vegan"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "en:may-contain-palm-oil": enMayContainPalmOil == null
            ? []
            : List<dynamic>.from(enMayContainPalmOil!.map((x) => x)),
        "en:maybe-vegetarian": enMaybeVegetarian == null
            ? []
            : List<dynamic>.from(enMaybeVegetarian!.map((x) => x)),
        "en:non-vegan": enNonVegan == null
            ? []
            : List<dynamic>.from(enNonVegan!.map((x) => x)),
      };
}

class Languages {
  int? enEnglish;
  int? enFrench;

  Languages({
    this.enEnglish,
    this.enFrench,
  });

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        enEnglish: json["en:english"],
        enFrench: json["en:french"],
      );

  Map<String, dynamic> toJson() => {
        "en:english": enEnglish,
        "en:french": enFrench,
      };
}

class LanguagesCodes {
  int? en;
  int? fr;

  LanguagesCodes({
    this.en,
    this.fr,
  });

  factory LanguagesCodes.fromJson(Map<String, dynamic> json) => LanguagesCodes(
        en: json["en"],
        fr: json["fr"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "fr": fr,
      };
}

class NutrientLevels {
  String? fat;
  String? salt;
  String? saturatedFat;
  String? sugars;

  NutrientLevels({
    this.fat,
    this.salt,
    this.saturatedFat,
    this.sugars,
  });

  factory NutrientLevels.fromJson(Map<String, dynamic> json) => NutrientLevels(
        fat: json["fat"],
        salt: json["salt"],
        saturatedFat: json["saturated-fat"],
        sugars: json["sugars"],
      );

  Map<String, dynamic> toJson() => {
        "fat": fat,
        "salt": salt,
        "saturated-fat": saturatedFat,
        "sugars": sugars,
      };
}

class Nutriments {
  double? calcium;
  double? calcium100G;
  double? calciumServing;
  String? calciumUnit;
  int? calciumValue;
  double? carbohydrates;
  double? carbohydrates100G;
  int? carbohydratesServing;
  String? carbohydratesUnit;
  double? carbohydratesValue;
  double? cholesterol;
  double? cholesterol100G;
  double? cholesterolServing;
  String? cholesterolUnit;
  int? cholesterolValue;
  int? energy;
  int? energyKcal;
  int? energyKcal100G;
  int? energyKcalServing;
  String? energyKcalUnit;
  int? energyKcalValue;
  double? energyKcalValueComputed;
  int? energy100G;
  int? energyServing;
  String? energyUnit;
  int? energyValue;
  double? fat;
  double? fat100G;
  int? fatServing;
  String? fatUnit;
  double? fatValue;
  double? fiber;
  double? fiber100G;
  int? fiberServing;
  String? fiberUnit;
  double? fiberValue;
  int? fruitsVegetablesNutsEstimateFromIngredients100G;
  int? fruitsVegetablesNutsEstimateFromIngredientsServing;
  double? iron;
  double? iron100G;
  double? ironServing;
  String? ironUnit;
  double? ironValue;
  int? novaGroup;
  int? novaGroup100G;
  int? novaGroupServing;
  int? nutritionScoreFr;
  int? nutritionScoreFr100G;
  double? proteins;
  double? proteins100G;
  int? proteinsServing;
  String? proteinsUnit;
  double? proteinsValue;
  double? salt;
  double? salt100G;
  double? saltServing;
  String? saltUnit;
  double? saltValue;
  double? saturatedFat;
  double? saturatedFat100G;
  int? saturatedFatServing;
  String? saturatedFatUnit;
  double? saturatedFatValue;
  double? sodium;
  double? sodium100G;
  double? sodiumServing;
  String? sodiumUnit;
  double? sodiumValue;
  double? sugars;
  double? sugars100G;
  int? sugarsServing;
  String? sugarsUnit;
  double? sugarsValue;
  int? transFat;
  int? transFat100G;
  int? transFatServing;
  String? transFatUnit;
  int? transFatValue;
  int? vitaminA;
  int? vitaminA100G;
  int? vitaminAServing;
  String? vitaminAUnit;
  int? vitaminAValue;
  int? vitaminC;
  int? vitaminC100G;
  int? vitaminCServing;
  String? vitaminCUnit;
  int? vitaminCValue;

  Nutriments({
    this.calcium,
    this.calcium100G,
    this.calciumServing,
    this.calciumUnit,
    this.calciumValue,
    this.carbohydrates,
    this.carbohydrates100G,
    this.carbohydratesServing,
    this.carbohydratesUnit,
    this.carbohydratesValue,
    this.cholesterol,
    this.cholesterol100G,
    this.cholesterolServing,
    this.cholesterolUnit,
    this.cholesterolValue,
    this.energy,
    this.energyKcal,
    this.energyKcal100G,
    this.energyKcalServing,
    this.energyKcalUnit,
    this.energyKcalValue,
    this.energyKcalValueComputed,
    this.energy100G,
    this.energyServing,
    this.energyUnit,
    this.energyValue,
    this.fat,
    this.fat100G,
    this.fatServing,
    this.fatUnit,
    this.fatValue,
    this.fiber,
    this.fiber100G,
    this.fiberServing,
    this.fiberUnit,
    this.fiberValue,
    this.fruitsVegetablesNutsEstimateFromIngredients100G,
    this.fruitsVegetablesNutsEstimateFromIngredientsServing,
    this.iron,
    this.iron100G,
    this.ironServing,
    this.ironUnit,
    this.ironValue,
    this.novaGroup,
    this.novaGroup100G,
    this.novaGroupServing,
    this.nutritionScoreFr,
    this.nutritionScoreFr100G,
    this.proteins,
    this.proteins100G,
    this.proteinsServing,
    this.proteinsUnit,
    this.proteinsValue,
    this.salt,
    this.salt100G,
    this.saltServing,
    this.saltUnit,
    this.saltValue,
    this.saturatedFat,
    this.saturatedFat100G,
    this.saturatedFatServing,
    this.saturatedFatUnit,
    this.saturatedFatValue,
    this.sodium,
    this.sodium100G,
    this.sodiumServing,
    this.sodiumUnit,
    this.sodiumValue,
    this.sugars,
    this.sugars100G,
    this.sugarsServing,
    this.sugarsUnit,
    this.sugarsValue,
    this.transFat,
    this.transFat100G,
    this.transFatServing,
    this.transFatUnit,
    this.transFatValue,
    this.vitaminA,
    this.vitaminA100G,
    this.vitaminAServing,
    this.vitaminAUnit,
    this.vitaminAValue,
    this.vitaminC,
    this.vitaminC100G,
    this.vitaminCServing,
    this.vitaminCUnit,
    this.vitaminCValue,
  });

  factory Nutriments.fromJson(Map<String, dynamic> json) => Nutriments(
        calcium: json["calcium"]?.toDouble(),
        calcium100G: json["calcium_100g"]?.toDouble(),
        calciumServing: json["calcium_serving"]?.toDouble(),
        calciumUnit: json["calcium_unit"],
        calciumValue: json["calcium_value"],
        carbohydrates: json["carbohydrates"]?.toDouble(),
        carbohydrates100G: json["carbohydrates_100g"]?.toDouble(),
        carbohydratesServing: json["carbohydrates_serving"],
        carbohydratesUnit: json["carbohydrates_unit"],
        carbohydratesValue: json["carbohydrates_value"]?.toDouble(),
        cholesterol: json["cholesterol"]?.toDouble(),
        cholesterol100G: json["cholesterol_100g"]?.toDouble(),
        cholesterolServing: json["cholesterol_serving"]?.toDouble(),
        cholesterolUnit: json["cholesterol_unit"],
        cholesterolValue: json["cholesterol_value"],
        energy: json["energy"],
        energyKcal: json["energy-kcal"],
        energyKcal100G: json["energy-kcal_100g"],
        energyKcalServing: json["energy-kcal_serving"],
        energyKcalUnit: json["energy-kcal_unit"],
        energyKcalValue: json["energy-kcal_value"],
        energyKcalValueComputed: json["energy-kcal_value_computed"]?.toDouble(),
        energy100G: json["energy_100g"],
        energyServing: json["energy_serving"],
        energyUnit: json["energy_unit"],
        energyValue: json["energy_value"],
        fat: json["fat"]?.toDouble(),
        fat100G: json["fat_100g"]?.toDouble(),
        fatServing: json["fat_serving"],
        fatUnit: json["fat_unit"],
        fatValue: json["fat_value"]?.toDouble(),
        fiber: json["fiber"]?.toDouble(),
        fiber100G: json["fiber_100g"]?.toDouble(),
        fiberServing: json["fiber_serving"],
        fiberUnit: json["fiber_unit"],
        fiberValue: json["fiber_value"]?.toDouble(),
        fruitsVegetablesNutsEstimateFromIngredients100G:
            json["fruits-vegetables-nuts-estimate-from-ingredients_100g"],
        fruitsVegetablesNutsEstimateFromIngredientsServing:
            json["fruits-vegetables-nuts-estimate-from-ingredients_serving"],
        iron: json["iron"]?.toDouble(),
        iron100G: json["iron_100g"]?.toDouble(),
        ironServing: json["iron_serving"]?.toDouble(),
        ironUnit: json["iron_unit"],
        ironValue: json["iron_value"]?.toDouble(),
        novaGroup: json["nova-group"],
        novaGroup100G: json["nova-group_100g"],
        novaGroupServing: json["nova-group_serving"],
        nutritionScoreFr: json["nutrition-score-fr"],
        nutritionScoreFr100G: json["nutrition-score-fr_100g"],
        proteins: json["proteins"]?.toDouble(),
        proteins100G: json["proteins_100g"]?.toDouble(),
        proteinsServing: json["proteins_serving"],
        proteinsUnit: json["proteins_unit"],
        proteinsValue: json["proteins_value"]?.toDouble(),
        salt: json["salt"]?.toDouble(),
        salt100G: json["salt_100g"]?.toDouble(),
        saltServing: json["salt_serving"]?.toDouble(),
        saltUnit: json["salt_unit"],
        saltValue: json["salt_value"]?.toDouble(),
        saturatedFat: json["saturated-fat"]?.toDouble(),
        saturatedFat100G: json["saturated-fat_100g"]?.toDouble(),
        saturatedFatServing: json["saturated-fat_serving"],
        saturatedFatUnit: json["saturated-fat_unit"],
        saturatedFatValue: json["saturated-fat_value"]?.toDouble(),
        sodium: json["sodium"]?.toDouble(),
        sodium100G: json["sodium_100g"]?.toDouble(),
        sodiumServing: json["sodium_serving"]?.toDouble(),
        sodiumUnit: json["sodium_unit"],
        sodiumValue: json["sodium_value"]?.toDouble(),
        sugars: json["sugars"]?.toDouble(),
        sugars100G: json["sugars_100g"]?.toDouble(),
        sugarsServing: json["sugars_serving"],
        sugarsUnit: json["sugars_unit"],
        sugarsValue: json["sugars_value"]?.toDouble(),
        transFat: json["trans-fat"],
        transFat100G: json["trans-fat_100g"],
        transFatServing: json["trans-fat_serving"],
        transFatUnit: json["trans-fat_unit"],
        transFatValue: json["trans-fat_value"],
        vitaminA: json["vitamin-a"],
        vitaminA100G: json["vitamin-a_100g"],
        vitaminAServing: json["vitamin-a_serving"],
        vitaminAUnit: json["vitamin-a_unit"],
        vitaminAValue: json["vitamin-a_value"],
        vitaminC: json["vitamin-c"],
        vitaminC100G: json["vitamin-c_100g"],
        vitaminCServing: json["vitamin-c_serving"],
        vitaminCUnit: json["vitamin-c_unit"],
        vitaminCValue: json["vitamin-c_value"],
      );

  Map<String, dynamic> toJson() => {
        "calcium": calcium,
        "calcium_100g": calcium100G,
        "calcium_serving": calciumServing,
        "calcium_unit": calciumUnit,
        "calcium_value": calciumValue,
        "carbohydrates": carbohydrates,
        "carbohydrates_100g": carbohydrates100G,
        "carbohydrates_serving": carbohydratesServing,
        "carbohydrates_unit": carbohydratesUnit,
        "carbohydrates_value": carbohydratesValue,
        "cholesterol": cholesterol,
        "cholesterol_100g": cholesterol100G,
        "cholesterol_serving": cholesterolServing,
        "cholesterol_unit": cholesterolUnit,
        "cholesterol_value": cholesterolValue,
        "energy": energy,
        "energy-kcal": energyKcal,
        "energy-kcal_100g": energyKcal100G,
        "energy-kcal_serving": energyKcalServing,
        "energy-kcal_unit": energyKcalUnit,
        "energy-kcal_value": energyKcalValue,
        "energy-kcal_value_computed": energyKcalValueComputed,
        "energy_100g": energy100G,
        "energy_serving": energyServing,
        "energy_unit": energyUnit,
        "energy_value": energyValue,
        "fat": fat,
        "fat_100g": fat100G,
        "fat_serving": fatServing,
        "fat_unit": fatUnit,
        "fat_value": fatValue,
        "fiber": fiber,
        "fiber_100g": fiber100G,
        "fiber_serving": fiberServing,
        "fiber_unit": fiberUnit,
        "fiber_value": fiberValue,
        "fruits-vegetables-nuts-estimate-from-ingredients_100g":
            fruitsVegetablesNutsEstimateFromIngredients100G,
        "fruits-vegetables-nuts-estimate-from-ingredients_serving":
            fruitsVegetablesNutsEstimateFromIngredientsServing,
        "iron": iron,
        "iron_100g": iron100G,
        "iron_serving": ironServing,
        "iron_unit": ironUnit,
        "iron_value": ironValue,
        "nova-group": novaGroup,
        "nova-group_100g": novaGroup100G,
        "nova-group_serving": novaGroupServing,
        "nutrition-score-fr": nutritionScoreFr,
        "nutrition-score-fr_100g": nutritionScoreFr100G,
        "proteins": proteins,
        "proteins_100g": proteins100G,
        "proteins_serving": proteinsServing,
        "proteins_unit": proteinsUnit,
        "proteins_value": proteinsValue,
        "salt": salt,
        "salt_100g": salt100G,
        "salt_serving": saltServing,
        "salt_unit": saltUnit,
        "salt_value": saltValue,
        "saturated-fat": saturatedFat,
        "saturated-fat_100g": saturatedFat100G,
        "saturated-fat_serving": saturatedFatServing,
        "saturated-fat_unit": saturatedFatUnit,
        "saturated-fat_value": saturatedFatValue,
        "sodium": sodium,
        "sodium_100g": sodium100G,
        "sodium_serving": sodiumServing,
        "sodium_unit": sodiumUnit,
        "sodium_value": sodiumValue,
        "sugars": sugars,
        "sugars_100g": sugars100G,
        "sugars_serving": sugarsServing,
        "sugars_unit": sugarsUnit,
        "sugars_value": sugarsValue,
        "trans-fat": transFat,
        "trans-fat_100g": transFat100G,
        "trans-fat_serving": transFatServing,
        "trans-fat_unit": transFatUnit,
        "trans-fat_value": transFatValue,
        "vitamin-a": vitaminA,
        "vitamin-a_100g": vitaminA100G,
        "vitamin-a_serving": vitaminAServing,
        "vitamin-a_unit": vitaminAUnit,
        "vitamin-a_value": vitaminAValue,
        "vitamin-c": vitaminC,
        "vitamin-c_100g": vitaminC100G,
        "vitamin-c_serving": vitaminCServing,
        "vitamin-c_unit": vitaminCUnit,
        "vitamin-c_value": vitaminCValue,
      };
}

class NutriscoreData {
  int? energy;
  int? energyPoints;
  int? energyValue;
  double? fiber;
  int? fiberPoints;
  double? fiberValue;
  int? fruitsVegetablesNutsColzaWalnutOliveOils;
  int? fruitsVegetablesNutsColzaWalnutOliveOilsPoints;
  int? fruitsVegetablesNutsColzaWalnutOliveOilsValue;
  String? grade;
  int? isBeverage;
  int? isCheese;
  int? isFat;
  int? isWater;
  int? negativePoints;
  int? positivePoints;
  double? proteins;
  int? proteinsPoints;
  double? proteinsValue;
  double? saturatedFat;
  int? saturatedFatPoints;
  double? saturatedFatRatio;
  int? saturatedFatRatioPoints;
  double? saturatedFatRatioValue;
  double? saturatedFatValue;
  int? score;
  double? sodium;
  int? sodiumPoints;
  double? sodiumValue;
  double? sugars;
  int? sugarsPoints;
  double? sugarsValue;

  NutriscoreData({
    this.energy,
    this.energyPoints,
    this.energyValue,
    this.fiber,
    this.fiberPoints,
    this.fiberValue,
    this.fruitsVegetablesNutsColzaWalnutOliveOils,
    this.fruitsVegetablesNutsColzaWalnutOliveOilsPoints,
    this.fruitsVegetablesNutsColzaWalnutOliveOilsValue,
    this.grade,
    this.isBeverage,
    this.isCheese,
    this.isFat,
    this.isWater,
    this.negativePoints,
    this.positivePoints,
    this.proteins,
    this.proteinsPoints,
    this.proteinsValue,
    this.saturatedFat,
    this.saturatedFatPoints,
    this.saturatedFatRatio,
    this.saturatedFatRatioPoints,
    this.saturatedFatRatioValue,
    this.saturatedFatValue,
    this.score,
    this.sodium,
    this.sodiumPoints,
    this.sodiumValue,
    this.sugars,
    this.sugarsPoints,
    this.sugarsValue,
  });

  factory NutriscoreData.fromJson(Map<String, dynamic> json) => NutriscoreData(
        energy: json["energy"],
        energyPoints: json["energy_points"],
        energyValue: json["energy_value"],
        fiber: json["fiber"]?.toDouble(),
        fiberPoints: json["fiber_points"],
        fiberValue: json["fiber_value"]?.toDouble(),
        fruitsVegetablesNutsColzaWalnutOliveOils:
            json["fruits_vegetables_nuts_colza_walnut_olive_oils"],
        fruitsVegetablesNutsColzaWalnutOliveOilsPoints:
            json["fruits_vegetables_nuts_colza_walnut_olive_oils_points"],
        fruitsVegetablesNutsColzaWalnutOliveOilsValue:
            json["fruits_vegetables_nuts_colza_walnut_olive_oils_value"],
        grade: json["grade"],
        isBeverage: json["is_beverage"],
        isCheese: json["is_cheese"],
        isFat: json["is_fat"],
        isWater: json["is_water"],
        negativePoints: json["negative_points"],
        positivePoints: json["positive_points"],
        proteins: json["proteins"]?.toDouble(),
        proteinsPoints: json["proteins_points"],
        proteinsValue: json["proteins_value"]?.toDouble(),
        saturatedFat: json["saturated_fat"]?.toDouble(),
        saturatedFatPoints: json["saturated_fat_points"],
        saturatedFatRatio: json["saturated_fat_ratio"]?.toDouble(),
        saturatedFatRatioPoints: json["saturated_fat_ratio_points"],
        saturatedFatRatioValue: json["saturated_fat_ratio_value"]?.toDouble(),
        saturatedFatValue: json["saturated_fat_value"]?.toDouble(),
        score: json["score"],
        sodium: json["sodium"]?.toDouble(),
        sodiumPoints: json["sodium_points"],
        sodiumValue: json["sodium_value"]?.toDouble(),
        sugars: json["sugars"]?.toDouble(),
        sugarsPoints: json["sugars_points"],
        sugarsValue: json["sugars_value"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "energy": energy,
        "energy_points": energyPoints,
        "energy_value": energyValue,
        "fiber": fiber,
        "fiber_points": fiberPoints,
        "fiber_value": fiberValue,
        "fruits_vegetables_nuts_colza_walnut_olive_oils":
            fruitsVegetablesNutsColzaWalnutOliveOils,
        "fruits_vegetables_nuts_colza_walnut_olive_oils_points":
            fruitsVegetablesNutsColzaWalnutOliveOilsPoints,
        "fruits_vegetables_nuts_colza_walnut_olive_oils_value":
            fruitsVegetablesNutsColzaWalnutOliveOilsValue,
        "grade": grade,
        "is_beverage": isBeverage,
        "is_cheese": isCheese,
        "is_fat": isFat,
        "is_water": isWater,
        "negative_points": negativePoints,
        "positive_points": positivePoints,
        "proteins": proteins,
        "proteins_points": proteinsPoints,
        "proteins_value": proteinsValue,
        "saturated_fat": saturatedFat,
        "saturated_fat_points": saturatedFatPoints,
        "saturated_fat_ratio": saturatedFatRatio,
        "saturated_fat_ratio_points": saturatedFatRatioPoints,
        "saturated_fat_ratio_value": saturatedFatRatioValue,
        "saturated_fat_value": saturatedFatValue,
        "score": score,
        "sodium": sodium,
        "sodium_points": sodiumPoints,
        "sodium_value": sodiumValue,
        "sugars": sugars,
        "sugars_points": sugarsPoints,
        "sugars_value": sugarsValue,
      };
}

class ProductPackaging {
  String? material;

  ProductPackaging({
    this.material,
  });

  factory ProductPackaging.fromJson(Map<String, dynamic> json) =>
      ProductPackaging(
        material: json["material"],
      );

  Map<String, dynamic> toJson() => {
        "material": material,
      };
}

class PackagingsMaterials {
  CategoriesProperties? all;
  CategoriesProperties? enPlastic;
  CategoriesProperties? enUnknown;

  PackagingsMaterials({
    this.all,
    this.enPlastic,
    this.enUnknown,
  });

  factory PackagingsMaterials.fromJson(Map<String, dynamic> json) =>
      PackagingsMaterials(
        all: json["all"] == null
            ? null
            : CategoriesProperties.fromJson(json["all"]),
        enPlastic: json["en:plastic"] == null
            ? null
            : CategoriesProperties.fromJson(json["en:plastic"]),
        enUnknown: json["en:unknown"] == null
            ? null
            : CategoriesProperties.fromJson(json["en:unknown"]),
      );

  Map<String, dynamic> toJson() => {
        "all": all?.toJson(),
        "en:plastic": enPlastic?.toJson(),
        "en:unknown": enUnknown?.toJson(),
      };
}

class SelectedImages {
  SelectedImagesFront? front;
  SelectedImagesFront? ingredients;
  Nutrition? nutrition;

  SelectedImages({
    this.front,
    this.ingredients,
    this.nutrition,
  });

  factory SelectedImages.fromJson(Map<String, dynamic> json) => SelectedImages(
        front: json["front"] == null
            ? null
            : SelectedImagesFront.fromJson(json["front"]),
        ingredients: json["ingredients"] == null
            ? null
            : SelectedImagesFront.fromJson(json["ingredients"]),
        nutrition: json["nutrition"] == null
            ? null
            : Nutrition.fromJson(json["nutrition"]),
      );

  Map<String, dynamic> toJson() => {
        "front": front?.toJson(),
        "ingredients": ingredients?.toJson(),
        "nutrition": nutrition?.toJson(),
      };
}

class SelectedImagesFront {
  FrontDisplay? display;
  FrontDisplay? small;
  FrontDisplay? thumb;

  SelectedImagesFront({
    this.display,
    this.small,
    this.thumb,
  });

  factory SelectedImagesFront.fromJson(Map<String, dynamic> json) =>
      SelectedImagesFront(
        display: json["display"] == null
            ? null
            : FrontDisplay.fromJson(json["display"]),
        small:
            json["small"] == null ? null : FrontDisplay.fromJson(json["small"]),
        thumb:
            json["thumb"] == null ? null : FrontDisplay.fromJson(json["thumb"]),
      );

  Map<String, dynamic> toJson() => {
        "display": display?.toJson(),
        "small": small?.toJson(),
        "thumb": thumb?.toJson(),
      };
}

class FrontDisplay {
  String? en;
  String? fr;

  FrontDisplay({
    this.en,
    this.fr,
  });

  factory FrontDisplay.fromJson(Map<String, dynamic> json) => FrontDisplay(
        en: json["en"],
        fr: json["fr"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "fr": fr,
      };
}

class Nutrition {
  NutritionDisplay? display;
  NutritionDisplay? small;
  NutritionDisplay? thumb;

  Nutrition({
    this.display,
    this.small,
    this.thumb,
  });

  factory Nutrition.fromJson(Map<String, dynamic> json) => Nutrition(
        display: json["display"] == null
            ? null
            : NutritionDisplay.fromJson(json["display"]),
        small: json["small"] == null
            ? null
            : NutritionDisplay.fromJson(json["small"]),
        thumb: json["thumb"] == null
            ? null
            : NutritionDisplay.fromJson(json["thumb"]),
      );

  Map<String, dynamic> toJson() => {
        "display": display?.toJson(),
        "small": small?.toJson(),
        "thumb": thumb?.toJson(),
      };
}

class NutritionDisplay {
  String? en;

  NutritionDisplay({
    this.en,
  });

  factory NutritionDisplay.fromJson(Map<String, dynamic> json) =>
      NutritionDisplay(
        en: json["en"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
      };
}

class Source {
  List<String>? fields;
  String? id;
  List<dynamic>? images;
  int? importT;
  dynamic manufacturer;
  String? name;
  dynamic url;

  Source({
    this.fields,
    this.id,
    this.images,
    this.importT,
    this.manufacturer,
    this.name,
    this.url,
  });

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        fields: json["fields"] == null
            ? []
            : List<String>.from(json["fields"]!.map((x) => x)),
        id: json["id"],
        images: json["images"] == null
            ? []
            : List<dynamic>.from(json["images"]!.map((x) => x)),
        importT: json["import_t"],
        manufacturer: json["manufacturer"],
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "fields":
            fields == null ? [] : List<dynamic>.from(fields!.map((x) => x)),
        "id": id,
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "import_t": importT,
        "manufacturer": manufacturer,
        "name": name,
        "url": url,
      };
}

class SourcesFields {
  OrgDatabaseUsda? orgDatabaseUsda;

  SourcesFields({
    this.orgDatabaseUsda,
  });

  factory SourcesFields.fromJson(Map<String, dynamic> json) => SourcesFields(
        orgDatabaseUsda: json["org-database-usda"] == null
            ? null
            : OrgDatabaseUsda.fromJson(json["org-database-usda"]),
      );

  Map<String, dynamic> toJson() => {
        "org-database-usda": orgDatabaseUsda?.toJson(),
      };
}

class OrgDatabaseUsda {
  DateTime? availableDate;
  String? fdcCategory;
  String? fdcDataSource;
  String? fdcId;
  DateTime? modifiedDate;
  DateTime? publicationDate;

  OrgDatabaseUsda({
    this.availableDate,
    this.fdcCategory,
    this.fdcDataSource,
    this.fdcId,
    this.modifiedDate,
    this.publicationDate,
  });

  factory OrgDatabaseUsda.fromJson(Map<String, dynamic> json) =>
      OrgDatabaseUsda(
        availableDate: json["available_date"] == null
            ? null
            : DateTime.parse(json["available_date"]),
        fdcCategory: json["fdc_category"],
        fdcDataSource: json["fdc_data_source"],
        fdcId: json["fdc_id"],
        modifiedDate: json["modified_date"] == null
            ? null
            : DateTime.parse(json["modified_date"]),
        publicationDate: json["publication_date"] == null
            ? null
            : DateTime.parse(json["publication_date"]),
      );

  Map<String, dynamic> toJson() => {
        "available_date": availableDate?.toIso8601String(),
        "fdc_category": fdcCategory,
        "fdc_data_source": fdcDataSource,
        "fdc_id": fdcId,
        "modified_date": modifiedDate?.toIso8601String(),
        "publication_date": publicationDate?.toIso8601String(),
      };
}
