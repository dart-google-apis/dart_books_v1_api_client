part of books_v1_api_client;

class Annotation {

  /** Anchor text after excerpt. */
  String afterSelectedText;

  /** Anchor text before excerpt. */
  String beforeSelectedText;

  /** Selection ranges sent from the client. */
  AnnotationClientVersionRanges clientVersionRanges;

  /** Timestamp for the created time of this annotation. */
  String created;

  /** Selection ranges for the most recent content version. */
  AnnotationCurrentVersionRanges currentVersionRanges;

  /** User-created data for this annotation. */
  String data;

  /** Indicates that this annotation is deleted. */
  bool deleted;

  /** The highlight style for this annotation. */
  String highlightStyle;

  /** Id of this annotation, in the form of a GUID. */
  String id;

  /** Resource type. */
  String kind;

  /** The layer this annotation is for. */
  String layerId;

  /** Pages that this annotation spans. */
  List<String> pageIds;

  /** Excerpt from the volume. */
  String selectedText;

  /** URL to this resource. */
  String selfLink;

  /** Timestamp for the last time this annotation was modified. */
  String updated;

  /** The volume that this annotation belongs to. */
  String volumeId;

  /** Create new Annotation from JSON data */
  Annotation.fromJson(Map json) {
    if (json.containsKey("afterSelectedText")) {
      afterSelectedText = json["afterSelectedText"];
    }
    if (json.containsKey("beforeSelectedText")) {
      beforeSelectedText = json["beforeSelectedText"];
    }
    if (json.containsKey("clientVersionRanges")) {
      clientVersionRanges = new AnnotationClientVersionRanges.fromJson(json["clientVersionRanges"]);
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("currentVersionRanges")) {
      currentVersionRanges = new AnnotationCurrentVersionRanges.fromJson(json["currentVersionRanges"]);
    }
    if (json.containsKey("data")) {
      data = json["data"];
    }
    if (json.containsKey("deleted")) {
      deleted = json["deleted"];
    }
    if (json.containsKey("highlightStyle")) {
      highlightStyle = json["highlightStyle"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("layerId")) {
      layerId = json["layerId"];
    }
    if (json.containsKey("pageIds")) {
      pageIds = [];
      json["pageIds"].forEach((item) {
        pageIds.add(item);
      });
    }
    if (json.containsKey("selectedText")) {
      selectedText = json["selectedText"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("volumeId")) {
      volumeId = json["volumeId"];
    }
  }

  /** Create JSON Object for Annotation */
  Map toJson() {
    var output = new Map();

    if (afterSelectedText != null) {
      output["afterSelectedText"] = afterSelectedText;
    }
    if (beforeSelectedText != null) {
      output["beforeSelectedText"] = beforeSelectedText;
    }
    if (clientVersionRanges != null) {
      output["clientVersionRanges"] = clientVersionRanges.toJson();
    }
    if (created != null) {
      output["created"] = created;
    }
    if (currentVersionRanges != null) {
      output["currentVersionRanges"] = currentVersionRanges.toJson();
    }
    if (data != null) {
      output["data"] = data;
    }
    if (deleted != null) {
      output["deleted"] = deleted;
    }
    if (highlightStyle != null) {
      output["highlightStyle"] = highlightStyle;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (layerId != null) {
      output["layerId"] = layerId;
    }
    if (pageIds != null) {
      output["pageIds"] = new List();
      pageIds.forEach((item) {
        output["pageIds"].add(item);
      });
    }
    if (selectedText != null) {
      output["selectedText"] = selectedText;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (volumeId != null) {
      output["volumeId"] = volumeId;
    }

    return output;
  }

  /** Return String representation of Annotation */
  String toString() => JSON.stringify(this.toJson());

}

/** Selection ranges for the most recent content version. */
class AnnotationCurrentVersionRanges {

  /** Range in CFI format for this annotation for version above. */
  BooksAnnotationsRange cfiRange;

  /** Content version applicable to ranges below. */
  String contentVersion;

  /** Range in GB image format for this annotation for version above. */
  BooksAnnotationsRange gbImageRange;

  /** Range in GB text format for this annotation for version above. */
  BooksAnnotationsRange gbTextRange;

  /** Create new AnnotationCurrentVersionRanges from JSON data */
  AnnotationCurrentVersionRanges.fromJson(Map json) {
    if (json.containsKey("cfiRange")) {
      cfiRange = new BooksAnnotationsRange.fromJson(json["cfiRange"]);
    }
    if (json.containsKey("contentVersion")) {
      contentVersion = json["contentVersion"];
    }
    if (json.containsKey("gbImageRange")) {
      gbImageRange = new BooksAnnotationsRange.fromJson(json["gbImageRange"]);
    }
    if (json.containsKey("gbTextRange")) {
      gbTextRange = new BooksAnnotationsRange.fromJson(json["gbTextRange"]);
    }
  }

  /** Create JSON Object for AnnotationCurrentVersionRanges */
  Map toJson() {
    var output = new Map();

    if (cfiRange != null) {
      output["cfiRange"] = cfiRange.toJson();
    }
    if (contentVersion != null) {
      output["contentVersion"] = contentVersion;
    }
    if (gbImageRange != null) {
      output["gbImageRange"] = gbImageRange.toJson();
    }
    if (gbTextRange != null) {
      output["gbTextRange"] = gbTextRange.toJson();
    }

    return output;
  }

  /** Return String representation of AnnotationCurrentVersionRanges */
  String toString() => JSON.stringify(this.toJson());

}

/** Selection ranges sent from the client. */
class AnnotationClientVersionRanges {

  /** Range in CFI format for this annotation sent by client. */
  BooksAnnotationsRange cfiRange;

  /** Content version the client sent in. */
  String contentVersion;

  /** Range in GB image format for this annotation sent by client. */
  BooksAnnotationsRange gbImageRange;

  /** Range in GB text format for this annotation sent by client. */
  BooksAnnotationsRange gbTextRange;

  /** Create new AnnotationClientVersionRanges from JSON data */
  AnnotationClientVersionRanges.fromJson(Map json) {
    if (json.containsKey("cfiRange")) {
      cfiRange = new BooksAnnotationsRange.fromJson(json["cfiRange"]);
    }
    if (json.containsKey("contentVersion")) {
      contentVersion = json["contentVersion"];
    }
    if (json.containsKey("gbImageRange")) {
      gbImageRange = new BooksAnnotationsRange.fromJson(json["gbImageRange"]);
    }
    if (json.containsKey("gbTextRange")) {
      gbTextRange = new BooksAnnotationsRange.fromJson(json["gbTextRange"]);
    }
  }

  /** Create JSON Object for AnnotationClientVersionRanges */
  Map toJson() {
    var output = new Map();

    if (cfiRange != null) {
      output["cfiRange"] = cfiRange.toJson();
    }
    if (contentVersion != null) {
      output["contentVersion"] = contentVersion;
    }
    if (gbImageRange != null) {
      output["gbImageRange"] = gbImageRange.toJson();
    }
    if (gbTextRange != null) {
      output["gbTextRange"] = gbTextRange.toJson();
    }

    return output;
  }

  /** Return String representation of AnnotationClientVersionRanges */
  String toString() => JSON.stringify(this.toJson());

}

class Annotationdata {

  /** The type of annotation this data is for. */
  String annotationType;

  /** Base64 encoded data for this annotation data. */
  String encoded_data;

  /** Unique id for this annotation data. */
  String id;

  /** Resource Type */
  String kind;

  /** The Layer id for this data. * */
  String layerId;

  /** URL for this resource. * */
  String selfLink;

  /** Timestamp for the last time this data was updated. (RFC 3339 UTC date-time format). */
  String updated;

  /** The volume id for this data. * */
  String volumeId;

  /** Create new Annotationdata from JSON data */
  Annotationdata.fromJson(Map json) {
    if (json.containsKey("annotationType")) {
      annotationType = json["annotationType"];
    }
    if (json.containsKey("encoded_data")) {
      encoded_data = json["encoded_data"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("layerId")) {
      layerId = json["layerId"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("volumeId")) {
      volumeId = json["volumeId"];
    }
  }

  /** Create JSON Object for Annotationdata */
  Map toJson() {
    var output = new Map();

    if (annotationType != null) {
      output["annotationType"] = annotationType;
    }
    if (encoded_data != null) {
      output["encoded_data"] = encoded_data;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (layerId != null) {
      output["layerId"] = layerId;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (volumeId != null) {
      output["volumeId"] = volumeId;
    }

    return output;
  }

  /** Return String representation of Annotationdata */
  String toString() => JSON.stringify(this.toJson());

}

class Annotations {

  /** A list of annotations. */
  List<Annotation> items;

  /** Resource type. */
  String kind;

  /** Token to pass in for pagination for the next page. This will not be present if this request does not have more results. */
  String nextPageToken;

  /** Total number of annotations found. This may be greater than the number of notes returned in this response if results have been paginated. */
  int totalItems;

  /** Create new Annotations from JSON data */
  Annotations.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Annotation.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for Annotations */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of Annotations */
  String toString() => JSON.stringify(this.toJson());

}

class Annotationsdata {

  /** A list of Annotation Data. */
  List<Annotationdata> items;

  /** Resource type */
  String kind;

  /** Token to pass in for pagination for the next page. This will not be present if this request does not have more results. */
  String nextPageToken;

  /** The total number of volume annotations found. */
  int totalItems;

  /** Create new Annotationsdata from JSON data */
  Annotationsdata.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Annotationdata.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for Annotationsdata */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of Annotationsdata */
  String toString() => JSON.stringify(this.toJson());

}

class BooksAnnotationsRange {

  /** The offset from the ending position. */
  String endOffset;

  /** The ending position for the range. */
  String endPosition;

  /** The offset from the starting position. */
  String startOffset;

  /** The starting position for the range. */
  String startPosition;

  /** Create new BooksAnnotationsRange from JSON data */
  BooksAnnotationsRange.fromJson(Map json) {
    if (json.containsKey("endOffset")) {
      endOffset = json["endOffset"];
    }
    if (json.containsKey("endPosition")) {
      endPosition = json["endPosition"];
    }
    if (json.containsKey("startOffset")) {
      startOffset = json["startOffset"];
    }
    if (json.containsKey("startPosition")) {
      startPosition = json["startPosition"];
    }
  }

  /** Create JSON Object for BooksAnnotationsRange */
  Map toJson() {
    var output = new Map();

    if (endOffset != null) {
      output["endOffset"] = endOffset;
    }
    if (endPosition != null) {
      output["endPosition"] = endPosition;
    }
    if (startOffset != null) {
      output["startOffset"] = startOffset;
    }
    if (startPosition != null) {
      output["startPosition"] = startPosition;
    }

    return output;
  }

  /** Return String representation of BooksAnnotationsRange */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictData {
  BooksLayerDictDataCommon common;
  BooksLayerDictDataDict dict;

  /** Create new BooksLayerDictData from JSON data */
  BooksLayerDictData.fromJson(Map json) {
    if (json.containsKey("common")) {
      common = new BooksLayerDictDataCommon.fromJson(json["common"]);
    }
    if (json.containsKey("dict")) {
      dict = new BooksLayerDictDataDict.fromJson(json["dict"]);
    }
  }

  /** Create JSON Object for BooksLayerDictData */
  Map toJson() {
    var output = new Map();

    if (common != null) {
      output["common"] = common.toJson();
    }
    if (dict != null) {
      output["dict"] = dict.toJson();
    }

    return output;
  }

  /** Return String representation of BooksLayerDictData */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataCommon {

  /** The display title and localized canonical name to use when searching for this entity on Google search. */
  String title;

  /** Create new BooksLayerDictDataCommon from JSON data */
  BooksLayerDictDataCommon.fromJson(Map json) {
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for BooksLayerDictDataCommon */
  Map toJson() {
    var output = new Map();

    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataCommon */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDict {

  /** The source, url and attribution for this dictionary data. */
  BooksLayerDictDataDictSource source;
  List<BooksLayerDictDataDictWords> words;

  /** Create new BooksLayerDictDataDict from JSON data */
  BooksLayerDictDataDict.fromJson(Map json) {
    if (json.containsKey("source")) {
      source = new BooksLayerDictDataDictSource.fromJson(json["source"]);
    }
    if (json.containsKey("words")) {
      words = [];
      json["words"].forEach((item) {
        words.add(new BooksLayerDictDataDictWords.fromJson(item));
      });
    }
  }

  /** Create JSON Object for BooksLayerDictDataDict */
  Map toJson() {
    var output = new Map();

    if (source != null) {
      output["source"] = source.toJson();
    }
    if (words != null) {
      output["words"] = new List();
      words.forEach((item) {
        output["words"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDict */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDictWords {
  List<BooksLayerDictDataDictWordsDerivatives> derivatives;
  List<BooksLayerDictDataDictWordsExamples> examples;
  List<BooksLayerDictDataDictWordsSenses> senses;

  /** The words with different meanings but not related words, e.g. "go" (game) and "go" (verb). */
  BooksLayerDictDataDictWordsSource source;

  /** Create new BooksLayerDictDataDictWords from JSON data */
  BooksLayerDictDataDictWords.fromJson(Map json) {
    if (json.containsKey("derivatives")) {
      derivatives = [];
      json["derivatives"].forEach((item) {
        derivatives.add(new BooksLayerDictDataDictWordsDerivatives.fromJson(item));
      });
    }
    if (json.containsKey("examples")) {
      examples = [];
      json["examples"].forEach((item) {
        examples.add(new BooksLayerDictDataDictWordsExamples.fromJson(item));
      });
    }
    if (json.containsKey("senses")) {
      senses = [];
      json["senses"].forEach((item) {
        senses.add(new BooksLayerDictDataDictWordsSenses.fromJson(item));
      });
    }
    if (json.containsKey("source")) {
      source = new BooksLayerDictDataDictWordsSource.fromJson(json["source"]);
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWords */
  Map toJson() {
    var output = new Map();

    if (derivatives != null) {
      output["derivatives"] = new List();
      derivatives.forEach((item) {
        output["derivatives"].add(item.toJson());
      });
    }
    if (examples != null) {
      output["examples"] = new List();
      examples.forEach((item) {
        output["examples"].add(item.toJson());
      });
    }
    if (senses != null) {
      output["senses"] = new List();
      senses.forEach((item) {
        output["senses"].add(item.toJson());
      });
    }
    if (source != null) {
      output["source"] = source.toJson();
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWords */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDictWordsSenses {
  List<BooksLayerDictDataDictWordsSensesConjugations> conjugations;
  List<BooksLayerDictDataDictWordsSensesDefinitions> definitions;
  String partOfSpeech;
  String pronunciation;
  String pronunciationUrl;
  BooksLayerDictDataDictWordsSensesSource source;
  String syllabification;
  List<BooksLayerDictDataDictWordsSensesSynonyms> synonyms;

  /** Create new BooksLayerDictDataDictWordsSenses from JSON data */
  BooksLayerDictDataDictWordsSenses.fromJson(Map json) {
    if (json.containsKey("conjugations")) {
      conjugations = [];
      json["conjugations"].forEach((item) {
        conjugations.add(new BooksLayerDictDataDictWordsSensesConjugations.fromJson(item));
      });
    }
    if (json.containsKey("definitions")) {
      definitions = [];
      json["definitions"].forEach((item) {
        definitions.add(new BooksLayerDictDataDictWordsSensesDefinitions.fromJson(item));
      });
    }
    if (json.containsKey("partOfSpeech")) {
      partOfSpeech = json["partOfSpeech"];
    }
    if (json.containsKey("pronunciation")) {
      pronunciation = json["pronunciation"];
    }
    if (json.containsKey("pronunciationUrl")) {
      pronunciationUrl = json["pronunciationUrl"];
    }
    if (json.containsKey("source")) {
      source = new BooksLayerDictDataDictWordsSensesSource.fromJson(json["source"]);
    }
    if (json.containsKey("syllabification")) {
      syllabification = json["syllabification"];
    }
    if (json.containsKey("synonyms")) {
      synonyms = [];
      json["synonyms"].forEach((item) {
        synonyms.add(new BooksLayerDictDataDictWordsSensesSynonyms.fromJson(item));
      });
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWordsSenses */
  Map toJson() {
    var output = new Map();

    if (conjugations != null) {
      output["conjugations"] = new List();
      conjugations.forEach((item) {
        output["conjugations"].add(item.toJson());
      });
    }
    if (definitions != null) {
      output["definitions"] = new List();
      definitions.forEach((item) {
        output["definitions"].add(item.toJson());
      });
    }
    if (partOfSpeech != null) {
      output["partOfSpeech"] = partOfSpeech;
    }
    if (pronunciation != null) {
      output["pronunciation"] = pronunciation;
    }
    if (pronunciationUrl != null) {
      output["pronunciationUrl"] = pronunciationUrl;
    }
    if (source != null) {
      output["source"] = source.toJson();
    }
    if (syllabification != null) {
      output["syllabification"] = syllabification;
    }
    if (synonyms != null) {
      output["synonyms"] = new List();
      synonyms.forEach((item) {
        output["synonyms"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWordsSenses */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDictWordsSensesDefinitions {
  String definition;
  List<BooksLayerDictDataDictWordsSensesDefinitionsExamples> examples;

  /** Create new BooksLayerDictDataDictWordsSensesDefinitions from JSON data */
  BooksLayerDictDataDictWordsSensesDefinitions.fromJson(Map json) {
    if (json.containsKey("definition")) {
      definition = json["definition"];
    }
    if (json.containsKey("examples")) {
      examples = [];
      json["examples"].forEach((item) {
        examples.add(new BooksLayerDictDataDictWordsSensesDefinitionsExamples.fromJson(item));
      });
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWordsSensesDefinitions */
  Map toJson() {
    var output = new Map();

    if (definition != null) {
      output["definition"] = definition;
    }
    if (examples != null) {
      output["examples"] = new List();
      examples.forEach((item) {
        output["examples"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWordsSensesDefinitions */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDictWordsSensesDefinitionsExamples {
  BooksLayerDictDataDictWordsSensesDefinitionsExamplesSource source;
  String text;

  /** Create new BooksLayerDictDataDictWordsSensesDefinitionsExamples from JSON data */
  BooksLayerDictDataDictWordsSensesDefinitionsExamples.fromJson(Map json) {
    if (json.containsKey("source")) {
      source = new BooksLayerDictDataDictWordsSensesDefinitionsExamplesSource.fromJson(json["source"]);
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWordsSensesDefinitionsExamples */
  Map toJson() {
    var output = new Map();

    if (source != null) {
      output["source"] = source.toJson();
    }
    if (text != null) {
      output["text"] = text;
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWordsSensesDefinitionsExamples */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDictWordsSensesDefinitionsExamplesSource {
  String attribution;
  String url;

  /** Create new BooksLayerDictDataDictWordsSensesDefinitionsExamplesSource from JSON data */
  BooksLayerDictDataDictWordsSensesDefinitionsExamplesSource.fromJson(Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWordsSensesDefinitionsExamplesSource */
  Map toJson() {
    var output = new Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWordsSensesDefinitionsExamplesSource */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDictWordsSensesSource {
  String attribution;
  String url;

  /** Create new BooksLayerDictDataDictWordsSensesSource from JSON data */
  BooksLayerDictDataDictWordsSensesSource.fromJson(Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWordsSensesSource */
  Map toJson() {
    var output = new Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWordsSensesSource */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDictWordsSensesConjugations {
  String type;
  String value;

  /** Create new BooksLayerDictDataDictWordsSensesConjugations from JSON data */
  BooksLayerDictDataDictWordsSensesConjugations.fromJson(Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWordsSensesConjugations */
  Map toJson() {
    var output = new Map();

    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWordsSensesConjugations */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDictWordsSensesSynonyms {
  BooksLayerDictDataDictWordsSensesSynonymsSource source;
  String text;

  /** Create new BooksLayerDictDataDictWordsSensesSynonyms from JSON data */
  BooksLayerDictDataDictWordsSensesSynonyms.fromJson(Map json) {
    if (json.containsKey("source")) {
      source = new BooksLayerDictDataDictWordsSensesSynonymsSource.fromJson(json["source"]);
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWordsSensesSynonyms */
  Map toJson() {
    var output = new Map();

    if (source != null) {
      output["source"] = source.toJson();
    }
    if (text != null) {
      output["text"] = text;
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWordsSensesSynonyms */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDictWordsSensesSynonymsSource {
  String attribution;
  String url;

  /** Create new BooksLayerDictDataDictWordsSensesSynonymsSource from JSON data */
  BooksLayerDictDataDictWordsSensesSynonymsSource.fromJson(Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWordsSensesSynonymsSource */
  Map toJson() {
    var output = new Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWordsSensesSynonymsSource */
  String toString() => JSON.stringify(this.toJson());

}

/** The words with different meanings but not related words, e.g. "go" (game) and "go" (verb). */
class BooksLayerDictDataDictWordsSource {
  String attribution;
  String url;

  /** Create new BooksLayerDictDataDictWordsSource from JSON data */
  BooksLayerDictDataDictWordsSource.fromJson(Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWordsSource */
  Map toJson() {
    var output = new Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWordsSource */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDictWordsExamples {
  BooksLayerDictDataDictWordsExamplesSource source;
  String text;

  /** Create new BooksLayerDictDataDictWordsExamples from JSON data */
  BooksLayerDictDataDictWordsExamples.fromJson(Map json) {
    if (json.containsKey("source")) {
      source = new BooksLayerDictDataDictWordsExamplesSource.fromJson(json["source"]);
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWordsExamples */
  Map toJson() {
    var output = new Map();

    if (source != null) {
      output["source"] = source.toJson();
    }
    if (text != null) {
      output["text"] = text;
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWordsExamples */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDictWordsExamplesSource {
  String attribution;
  String url;

  /** Create new BooksLayerDictDataDictWordsExamplesSource from JSON data */
  BooksLayerDictDataDictWordsExamplesSource.fromJson(Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWordsExamplesSource */
  Map toJson() {
    var output = new Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWordsExamplesSource */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDictWordsDerivatives {
  BooksLayerDictDataDictWordsDerivativesSource source;
  String text;

  /** Create new BooksLayerDictDataDictWordsDerivatives from JSON data */
  BooksLayerDictDataDictWordsDerivatives.fromJson(Map json) {
    if (json.containsKey("source")) {
      source = new BooksLayerDictDataDictWordsDerivativesSource.fromJson(json["source"]);
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWordsDerivatives */
  Map toJson() {
    var output = new Map();

    if (source != null) {
      output["source"] = source.toJson();
    }
    if (text != null) {
      output["text"] = text;
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWordsDerivatives */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerDictDataDictWordsDerivativesSource {
  String attribution;
  String url;

  /** Create new BooksLayerDictDataDictWordsDerivativesSource from JSON data */
  BooksLayerDictDataDictWordsDerivativesSource.fromJson(Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictWordsDerivativesSource */
  Map toJson() {
    var output = new Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictWordsDerivativesSource */
  String toString() => JSON.stringify(this.toJson());

}

/** The source, url and attribution for this dictionary data. */
class BooksLayerDictDataDictSource {
  String attribution;
  String url;

  /** Create new BooksLayerDictDataDictSource from JSON data */
  BooksLayerDictDataDictSource.fromJson(Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for BooksLayerDictDataDictSource */
  Map toJson() {
    var output = new Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of BooksLayerDictDataDictSource */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerGeoData {
  BooksLayerGeoDataCommon common;
  BooksLayerGeoDataGeo geo;

  /** Create new BooksLayerGeoData from JSON data */
  BooksLayerGeoData.fromJson(Map json) {
    if (json.containsKey("common")) {
      common = new BooksLayerGeoDataCommon.fromJson(json["common"]);
    }
    if (json.containsKey("geo")) {
      geo = new BooksLayerGeoDataGeo.fromJson(json["geo"]);
    }
  }

  /** Create JSON Object for BooksLayerGeoData */
  Map toJson() {
    var output = new Map();

    if (common != null) {
      output["common"] = common.toJson();
    }
    if (geo != null) {
      output["geo"] = geo.toJson();
    }

    return output;
  }

  /** Return String representation of BooksLayerGeoData */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerGeoDataGeo {

  /** The cache policy active for this data. EX: UNRESTRICTED, RESTRICTED, NEVER */
  String cachePolicy;

  /** The country code of the location. */
  String countryCode;

  /** The latitude of the location. */
  num latitude;

  /** The longitude of the location. */
  num longitude;

  /** The type of map that should be used for this location. EX: HYBRID, ROADMAP, SATELLITE, TERRAIN */
  String mapType;

  /** The viewport for showing this location. This is a latitude, longitude rectangle. */
  BooksLayerGeoDataGeoViewport viewport;

  /** The Zoom level to use for the map. Zoom levels between 0 (the lowest zoom level, in which the entire world can be seen on one map) to 21+ (down to individual buildings). See: https://developers.google.com/maps/documentation/staticmaps/#Zoomlevels */
  int zoom;

  /** Create new BooksLayerGeoDataGeo from JSON data */
  BooksLayerGeoDataGeo.fromJson(Map json) {
    if (json.containsKey("cachePolicy")) {
      cachePolicy = json["cachePolicy"];
    }
    if (json.containsKey("countryCode")) {
      countryCode = json["countryCode"];
    }
    if (json.containsKey("latitude")) {
      latitude = json["latitude"];
    }
    if (json.containsKey("longitude")) {
      longitude = json["longitude"];
    }
    if (json.containsKey("mapType")) {
      mapType = json["mapType"];
    }
    if (json.containsKey("viewport")) {
      viewport = new BooksLayerGeoDataGeoViewport.fromJson(json["viewport"]);
    }
    if (json.containsKey("zoom")) {
      zoom = json["zoom"];
    }
  }

  /** Create JSON Object for BooksLayerGeoDataGeo */
  Map toJson() {
    var output = new Map();

    if (cachePolicy != null) {
      output["cachePolicy"] = cachePolicy;
    }
    if (countryCode != null) {
      output["countryCode"] = countryCode;
    }
    if (latitude != null) {
      output["latitude"] = latitude;
    }
    if (longitude != null) {
      output["longitude"] = longitude;
    }
    if (mapType != null) {
      output["mapType"] = mapType;
    }
    if (viewport != null) {
      output["viewport"] = viewport.toJson();
    }
    if (zoom != null) {
      output["zoom"] = zoom;
    }

    return output;
  }

  /** Return String representation of BooksLayerGeoDataGeo */
  String toString() => JSON.stringify(this.toJson());

}

/** The viewport for showing this location. This is a latitude, longitude rectangle. */
class BooksLayerGeoDataGeoViewport {
  BooksLayerGeoDataGeoViewportHi hi;
  BooksLayerGeoDataGeoViewportLo lo;

  /** Create new BooksLayerGeoDataGeoViewport from JSON data */
  BooksLayerGeoDataGeoViewport.fromJson(Map json) {
    if (json.containsKey("hi")) {
      hi = new BooksLayerGeoDataGeoViewportHi.fromJson(json["hi"]);
    }
    if (json.containsKey("lo")) {
      lo = new BooksLayerGeoDataGeoViewportLo.fromJson(json["lo"]);
    }
  }

  /** Create JSON Object for BooksLayerGeoDataGeoViewport */
  Map toJson() {
    var output = new Map();

    if (hi != null) {
      output["hi"] = hi.toJson();
    }
    if (lo != null) {
      output["lo"] = lo.toJson();
    }

    return output;
  }

  /** Return String representation of BooksLayerGeoDataGeoViewport */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerGeoDataGeoViewportLo {
  num latitude;
  num longitude;

  /** Create new BooksLayerGeoDataGeoViewportLo from JSON data */
  BooksLayerGeoDataGeoViewportLo.fromJson(Map json) {
    if (json.containsKey("latitude")) {
      latitude = json["latitude"];
    }
    if (json.containsKey("longitude")) {
      longitude = json["longitude"];
    }
  }

  /** Create JSON Object for BooksLayerGeoDataGeoViewportLo */
  Map toJson() {
    var output = new Map();

    if (latitude != null) {
      output["latitude"] = latitude;
    }
    if (longitude != null) {
      output["longitude"] = longitude;
    }

    return output;
  }

  /** Return String representation of BooksLayerGeoDataGeoViewportLo */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerGeoDataGeoViewportHi {
  num latitude;
  num longitude;

  /** Create new BooksLayerGeoDataGeoViewportHi from JSON data */
  BooksLayerGeoDataGeoViewportHi.fromJson(Map json) {
    if (json.containsKey("latitude")) {
      latitude = json["latitude"];
    }
    if (json.containsKey("longitude")) {
      longitude = json["longitude"];
    }
  }

  /** Create JSON Object for BooksLayerGeoDataGeoViewportHi */
  Map toJson() {
    var output = new Map();

    if (latitude != null) {
      output["latitude"] = latitude;
    }
    if (longitude != null) {
      output["longitude"] = longitude;
    }

    return output;
  }

  /** Return String representation of BooksLayerGeoDataGeoViewportHi */
  String toString() => JSON.stringify(this.toJson());

}

class BooksLayerGeoDataCommon {

  /** The language of the information url and description. */
  String lang;

  /** The URL for the preview image information. */
  String previewImageUrl;

  /** The description for this location. */
  String snippet;

  /** The URL for information for this location. Ex: wikipedia link. */
  String snippetUrl;

  /** The display title and localized canonical name to use when searching for this entity on Google search. */
  String title;

  /** Create new BooksLayerGeoDataCommon from JSON data */
  BooksLayerGeoDataCommon.fromJson(Map json) {
    if (json.containsKey("lang")) {
      lang = json["lang"];
    }
    if (json.containsKey("previewImageUrl")) {
      previewImageUrl = json["previewImageUrl"];
    }
    if (json.containsKey("snippet")) {
      snippet = json["snippet"];
    }
    if (json.containsKey("snippetUrl")) {
      snippetUrl = json["snippetUrl"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for BooksLayerGeoDataCommon */
  Map toJson() {
    var output = new Map();

    if (lang != null) {
      output["lang"] = lang;
    }
    if (previewImageUrl != null) {
      output["previewImageUrl"] = previewImageUrl;
    }
    if (snippet != null) {
      output["snippet"] = snippet;
    }
    if (snippetUrl != null) {
      output["snippetUrl"] = snippetUrl;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of BooksLayerGeoDataCommon */
  String toString() => JSON.stringify(this.toJson());

}

class Bookshelf {

  /** Whether this bookshelf is PUBLIC or PRIVATE. */
  String access;

  /** Created time for this bookshelf (formatted UTC timestamp with millisecond resolution). */
  String created;

  /** Description of this bookshelf. */
  String description;

  /** Id of this bookshelf, only unique by user. */
  int id;

  /** Resource type for bookshelf metadata. */
  String kind;

  /** URL to this resource. */
  String selfLink;

  /** Title of this bookshelf. */
  String title;

  /** Last modified time of this bookshelf (formatted UTC timestamp with millisecond resolution). */
  String updated;

  /** Number of volumes in this bookshelf. */
  int volumeCount;

  /** Last time a volume was added or removed from this bookshelf (formatted UTC timestamp with millisecond resolution). */
  String volumesLastUpdated;

  /** Create new Bookshelf from JSON data */
  Bookshelf.fromJson(Map json) {
    if (json.containsKey("access")) {
      access = json["access"];
    }
    if (json.containsKey("created")) {
      created = json["created"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("volumeCount")) {
      volumeCount = json["volumeCount"];
    }
    if (json.containsKey("volumesLastUpdated")) {
      volumesLastUpdated = json["volumesLastUpdated"];
    }
  }

  /** Create JSON Object for Bookshelf */
  Map toJson() {
    var output = new Map();

    if (access != null) {
      output["access"] = access;
    }
    if (created != null) {
      output["created"] = created;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (volumeCount != null) {
      output["volumeCount"] = volumeCount;
    }
    if (volumesLastUpdated != null) {
      output["volumesLastUpdated"] = volumesLastUpdated;
    }

    return output;
  }

  /** Return String representation of Bookshelf */
  String toString() => JSON.stringify(this.toJson());

}

class Bookshelves {

  /** A list of bookshelves. */
  List<Bookshelf> items;

  /** Resource type. */
  String kind;

  /** Create new Bookshelves from JSON data */
  Bookshelves.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Bookshelf.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Bookshelves */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Bookshelves */
  String toString() => JSON.stringify(this.toJson());

}

class ConcurrentAccessRestriction {

  /** Whether access is granted for this (user, device, volume). */
  bool deviceAllowed;

  /** Resource type. */
  String kind;

  /** The maximum number of concurrent access licenses for this volume. */
  int maxConcurrentDevices;

  /** Error/warning message. */
  String message;

  /** Client nonce for verification. Download access and client-validation only. */
  String nonce;

  /** Error/warning reason code. */
  String reasonCode;

  /** Whether this volume has any concurrent access restrictions. */
  bool restricted;

  /** Response signature. */
  String signature;

  /** Client app identifier for verification. Download access and client-validation only. */
  String source;

  /** Time in seconds for license auto-expiration. */
  int timeWindowSeconds;

  /** Identifies the volume for which this entry applies. */
  String volumeId;

  /** Create new ConcurrentAccessRestriction from JSON data */
  ConcurrentAccessRestriction.fromJson(Map json) {
    if (json.containsKey("deviceAllowed")) {
      deviceAllowed = json["deviceAllowed"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maxConcurrentDevices")) {
      maxConcurrentDevices = json["maxConcurrentDevices"];
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
    if (json.containsKey("nonce")) {
      nonce = json["nonce"];
    }
    if (json.containsKey("reasonCode")) {
      reasonCode = json["reasonCode"];
    }
    if (json.containsKey("restricted")) {
      restricted = json["restricted"];
    }
    if (json.containsKey("signature")) {
      signature = json["signature"];
    }
    if (json.containsKey("source")) {
      source = json["source"];
    }
    if (json.containsKey("timeWindowSeconds")) {
      timeWindowSeconds = json["timeWindowSeconds"];
    }
    if (json.containsKey("volumeId")) {
      volumeId = json["volumeId"];
    }
  }

  /** Create JSON Object for ConcurrentAccessRestriction */
  Map toJson() {
    var output = new Map();

    if (deviceAllowed != null) {
      output["deviceAllowed"] = deviceAllowed;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maxConcurrentDevices != null) {
      output["maxConcurrentDevices"] = maxConcurrentDevices;
    }
    if (message != null) {
      output["message"] = message;
    }
    if (nonce != null) {
      output["nonce"] = nonce;
    }
    if (reasonCode != null) {
      output["reasonCode"] = reasonCode;
    }
    if (restricted != null) {
      output["restricted"] = restricted;
    }
    if (signature != null) {
      output["signature"] = signature;
    }
    if (source != null) {
      output["source"] = source;
    }
    if (timeWindowSeconds != null) {
      output["timeWindowSeconds"] = timeWindowSeconds;
    }
    if (volumeId != null) {
      output["volumeId"] = volumeId;
    }

    return output;
  }

  /** Return String representation of ConcurrentAccessRestriction */
  String toString() => JSON.stringify(this.toJson());

}

class DownloadAccessRestriction {

  /** If restricted, whether access is granted for this (user, device, volume). */
  bool deviceAllowed;

  /** If restricted, the number of content download licenses already acquired (including the requesting client, if licensed). */
  int downloadsAcquired;

  /** If deviceAllowed, whether access was just acquired with this request. */
  bool justAcquired;

  /** Resource type. */
  String kind;

  /** If restricted, the maximum number of content download licenses for this volume. */
  int maxDownloadDevices;

  /** Error/warning message. */
  String message;

  /** Client nonce for verification. Download access and client-validation only. */
  String nonce;

  /** Error/warning reason code. Additional codes may be added in the future. 0 OK 100 ACCESS_DENIED_PUBLISHER_LIMIT 101 ACCESS_DENIED_LIMIT 200 WARNING_USED_LAST_ACCESS */
  String reasonCode;

  /** Whether this volume has any download access restrictions. */
  bool restricted;

  /** Response signature. */
  String signature;

  /** Client app identifier for verification. Download access and client-validation only. */
  String source;

  /** Identifies the volume for which this entry applies. */
  String volumeId;

  /** Create new DownloadAccessRestriction from JSON data */
  DownloadAccessRestriction.fromJson(Map json) {
    if (json.containsKey("deviceAllowed")) {
      deviceAllowed = json["deviceAllowed"];
    }
    if (json.containsKey("downloadsAcquired")) {
      downloadsAcquired = json["downloadsAcquired"];
    }
    if (json.containsKey("justAcquired")) {
      justAcquired = json["justAcquired"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maxDownloadDevices")) {
      maxDownloadDevices = json["maxDownloadDevices"];
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
    if (json.containsKey("nonce")) {
      nonce = json["nonce"];
    }
    if (json.containsKey("reasonCode")) {
      reasonCode = json["reasonCode"];
    }
    if (json.containsKey("restricted")) {
      restricted = json["restricted"];
    }
    if (json.containsKey("signature")) {
      signature = json["signature"];
    }
    if (json.containsKey("source")) {
      source = json["source"];
    }
    if (json.containsKey("volumeId")) {
      volumeId = json["volumeId"];
    }
  }

  /** Create JSON Object for DownloadAccessRestriction */
  Map toJson() {
    var output = new Map();

    if (deviceAllowed != null) {
      output["deviceAllowed"] = deviceAllowed;
    }
    if (downloadsAcquired != null) {
      output["downloadsAcquired"] = downloadsAcquired;
    }
    if (justAcquired != null) {
      output["justAcquired"] = justAcquired;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maxDownloadDevices != null) {
      output["maxDownloadDevices"] = maxDownloadDevices;
    }
    if (message != null) {
      output["message"] = message;
    }
    if (nonce != null) {
      output["nonce"] = nonce;
    }
    if (reasonCode != null) {
      output["reasonCode"] = reasonCode;
    }
    if (restricted != null) {
      output["restricted"] = restricted;
    }
    if (signature != null) {
      output["signature"] = signature;
    }
    if (source != null) {
      output["source"] = source;
    }
    if (volumeId != null) {
      output["volumeId"] = volumeId;
    }

    return output;
  }

  /** Return String representation of DownloadAccessRestriction */
  String toString() => JSON.stringify(this.toJson());

}

class DownloadAccesses {

  /** A list of download access responses. */
  List<DownloadAccessRestriction> downloadAccessList;

  /** Resource type. */
  String kind;

  /** Create new DownloadAccesses from JSON data */
  DownloadAccesses.fromJson(Map json) {
    if (json.containsKey("downloadAccessList")) {
      downloadAccessList = [];
      json["downloadAccessList"].forEach((item) {
        downloadAccessList.add(new DownloadAccessRestriction.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for DownloadAccesses */
  Map toJson() {
    var output = new Map();

    if (downloadAccessList != null) {
      output["downloadAccessList"] = new List();
      downloadAccessList.forEach((item) {
        output["downloadAccessList"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of DownloadAccesses */
  String toString() => JSON.stringify(this.toJson());

}

class Layersummaries {

  /** A list of layer summary items. */
  List<Layersummary> items;

  /** Resource type. */
  String kind;

  /** The total number of layer summaries found. */
  int totalItems;

  /** Create new Layersummaries from JSON data */
  Layersummaries.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Layersummary.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for Layersummaries */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of Layersummaries */
  String toString() => JSON.stringify(this.toJson());

}

class Layersummary {

  /** The number of annotations for this layer. */
  int annotationCount;

  /** The list of annotation types contained for this layer. */
  List<String> annotationTypes;

  /** Link to get data for this annotation. */
  String annotationsDataLink;

  /** The link to get the annotations for this layer. */
  String annotationsLink;

  /** The content version this resource is for. */
  String contentVersion;

  /** The number of data items for this layer. */
  int dataCount;

  /** Unique id of this layer summary. */
  String id;

  /** Resource Type */
  String kind;

  /** The layer id for this summary. */
  String layerId;

  /** URL to this resource. */
  String selfLink;

  /** Timestamp for the last time an item in this layer was updated. (RFC 3339 UTC date-time format). */
  String updated;

  /** The current version of this layer's volume annotations. Note that this version applies only to the data in the books.layers.volumeAnnotations.* responses. The actual annotation data is versioned separately. */
  String volumeAnnotationsVersion;

  /** The volume id this resource is for. */
  String volumeId;

  /** Create new Layersummary from JSON data */
  Layersummary.fromJson(Map json) {
    if (json.containsKey("annotationCount")) {
      annotationCount = json["annotationCount"];
    }
    if (json.containsKey("annotationTypes")) {
      annotationTypes = [];
      json["annotationTypes"].forEach((item) {
        annotationTypes.add(item);
      });
    }
    if (json.containsKey("annotationsDataLink")) {
      annotationsDataLink = json["annotationsDataLink"];
    }
    if (json.containsKey("annotationsLink")) {
      annotationsLink = json["annotationsLink"];
    }
    if (json.containsKey("contentVersion")) {
      contentVersion = json["contentVersion"];
    }
    if (json.containsKey("dataCount")) {
      dataCount = json["dataCount"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("layerId")) {
      layerId = json["layerId"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("volumeAnnotationsVersion")) {
      volumeAnnotationsVersion = json["volumeAnnotationsVersion"];
    }
    if (json.containsKey("volumeId")) {
      volumeId = json["volumeId"];
    }
  }

  /** Create JSON Object for Layersummary */
  Map toJson() {
    var output = new Map();

    if (annotationCount != null) {
      output["annotationCount"] = annotationCount;
    }
    if (annotationTypes != null) {
      output["annotationTypes"] = new List();
      annotationTypes.forEach((item) {
        output["annotationTypes"].add(item);
      });
    }
    if (annotationsDataLink != null) {
      output["annotationsDataLink"] = annotationsDataLink;
    }
    if (annotationsLink != null) {
      output["annotationsLink"] = annotationsLink;
    }
    if (contentVersion != null) {
      output["contentVersion"] = contentVersion;
    }
    if (dataCount != null) {
      output["dataCount"] = dataCount;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (layerId != null) {
      output["layerId"] = layerId;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (volumeAnnotationsVersion != null) {
      output["volumeAnnotationsVersion"] = volumeAnnotationsVersion;
    }
    if (volumeId != null) {
      output["volumeId"] = volumeId;
    }

    return output;
  }

  /** Return String representation of Layersummary */
  String toString() => JSON.stringify(this.toJson());

}

class ReadingPosition {

  /** Position in an EPUB as a CFI. */
  String epubCfiPosition;

  /** Position in a volume for image-based content. */
  String gbImagePosition;

  /** Position in a volume for text-based content. */
  String gbTextPosition;

  /** Resource type for a reading position. */
  String kind;

  /** Position in a PDF file. */
  String pdfPosition;

  /** Timestamp when this reading position was last updated (formatted UTC timestamp with millisecond resolution). */
  String updated;

  /** Volume id associated with this reading position. */
  String volumeId;

  /** Create new ReadingPosition from JSON data */
  ReadingPosition.fromJson(Map json) {
    if (json.containsKey("epubCfiPosition")) {
      epubCfiPosition = json["epubCfiPosition"];
    }
    if (json.containsKey("gbImagePosition")) {
      gbImagePosition = json["gbImagePosition"];
    }
    if (json.containsKey("gbTextPosition")) {
      gbTextPosition = json["gbTextPosition"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("pdfPosition")) {
      pdfPosition = json["pdfPosition"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("volumeId")) {
      volumeId = json["volumeId"];
    }
  }

  /** Create JSON Object for ReadingPosition */
  Map toJson() {
    var output = new Map();

    if (epubCfiPosition != null) {
      output["epubCfiPosition"] = epubCfiPosition;
    }
    if (gbImagePosition != null) {
      output["gbImagePosition"] = gbImagePosition;
    }
    if (gbTextPosition != null) {
      output["gbTextPosition"] = gbTextPosition;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (pdfPosition != null) {
      output["pdfPosition"] = pdfPosition;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (volumeId != null) {
      output["volumeId"] = volumeId;
    }

    return output;
  }

  /** Return String representation of ReadingPosition */
  String toString() => JSON.stringify(this.toJson());

}

class RequestAccess {

  /** A concurrent access response. */
  ConcurrentAccessRestriction concurrentAccess;

  /** A download access response. */
  DownloadAccessRestriction downloadAccess;

  /** Resource type. */
  String kind;

  /** Create new RequestAccess from JSON data */
  RequestAccess.fromJson(Map json) {
    if (json.containsKey("concurrentAccess")) {
      concurrentAccess = new ConcurrentAccessRestriction.fromJson(json["concurrentAccess"]);
    }
    if (json.containsKey("downloadAccess")) {
      downloadAccess = new DownloadAccessRestriction.fromJson(json["downloadAccess"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for RequestAccess */
  Map toJson() {
    var output = new Map();

    if (concurrentAccess != null) {
      output["concurrentAccess"] = concurrentAccess.toJson();
    }
    if (downloadAccess != null) {
      output["downloadAccess"] = downloadAccess.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of RequestAccess */
  String toString() => JSON.stringify(this.toJson());

}

class Review {

  /** Author of this review. */
  ReviewAuthor author;

  /** Review text. */
  String content;

  /** Date of this review. */
  String date;

  /** URL for the full review text, for reviews gathered from the web. */
  String fullTextUrl;

  /** Resource type for a review. */
  String kind;

  /** Star rating for this review. Possible values are ONE, TWO, THREE, FOUR, FIVE or NOT_RATED. */
  String rating;

  /** Information regarding the source of this review, when the review is not from a Google Books user. */
  ReviewSource source;

  /** Title for this review. */
  String title;

  /** Source type for this review. Possible values are EDITORIAL, WEB_USER or GOOGLE_USER. */
  String type;

  /** Volume that this review is for. */
  String volumeId;

  /** Create new Review from JSON data */
  Review.fromJson(Map json) {
    if (json.containsKey("author")) {
      author = new ReviewAuthor.fromJson(json["author"]);
    }
    if (json.containsKey("content")) {
      content = json["content"];
    }
    if (json.containsKey("date")) {
      date = json["date"];
    }
    if (json.containsKey("fullTextUrl")) {
      fullTextUrl = json["fullTextUrl"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("rating")) {
      rating = json["rating"];
    }
    if (json.containsKey("source")) {
      source = new ReviewSource.fromJson(json["source"]);
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("volumeId")) {
      volumeId = json["volumeId"];
    }
  }

  /** Create JSON Object for Review */
  Map toJson() {
    var output = new Map();

    if (author != null) {
      output["author"] = author.toJson();
    }
    if (content != null) {
      output["content"] = content;
    }
    if (date != null) {
      output["date"] = date;
    }
    if (fullTextUrl != null) {
      output["fullTextUrl"] = fullTextUrl;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (rating != null) {
      output["rating"] = rating;
    }
    if (source != null) {
      output["source"] = source.toJson();
    }
    if (title != null) {
      output["title"] = title;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (volumeId != null) {
      output["volumeId"] = volumeId;
    }

    return output;
  }

  /** Return String representation of Review */
  String toString() => JSON.stringify(this.toJson());

}

/** Information regarding the source of this review, when the review is not from a Google Books user. */
class ReviewSource {

  /** Name of the source. */
  String description;

  /** Extra text about the source of the review. */
  String extraDescription;

  /** URL of the source of the review. */
  String url;

  /** Create new ReviewSource from JSON data */
  ReviewSource.fromJson(Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("extraDescription")) {
      extraDescription = json["extraDescription"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ReviewSource */
  Map toJson() {
    var output = new Map();

    if (description != null) {
      output["description"] = description;
    }
    if (extraDescription != null) {
      output["extraDescription"] = extraDescription;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ReviewSource */
  String toString() => JSON.stringify(this.toJson());

}

/** Author of this review. */
class ReviewAuthor {

  /** Name of this person. */
  String displayName;

  /** Create new ReviewAuthor from JSON data */
  ReviewAuthor.fromJson(Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
  }

  /** Create JSON Object for ReviewAuthor */
  Map toJson() {
    var output = new Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }

    return output;
  }

  /** Return String representation of ReviewAuthor */
  String toString() => JSON.stringify(this.toJson());

}

class Volume {

  /** Any information about a volume related to reading or obtaining that volume text. This information can depend on country (books may be public domain in one country but not in another, e.g.). */
  VolumeAccessInfo accessInfo;

  /** Opaque identifier for a specific version of a volume resource. (In LITE projection) */
  String etag;

  /** Unique identifier for a volume. (In LITE projection.) */
  String id;

  /** Resource type for a volume. (In LITE projection.) */
  String kind;

  /** What layers exist in this volume and high level information about them. */
  VolumeLayerInfo layerInfo;

  /** Recommendation related information for this volume. */
  VolumeRecommendedInfo recommendedInfo;

  /** Any information about a volume related to the eBookstore and/or purchaseability. This information can depend on the country where the request originates from (i.e. books may not be for sale in certain countries). */
  VolumeSaleInfo saleInfo;

  /** Search result information related to this volume. */
  VolumeSearchInfo searchInfo;

  /** URL to this resource. (In LITE projection.) */
  String selfLink;

  /** User specific information related to this volume. (e.g. page this user last read or whether they purchased this book) */
  VolumeUserInfo userInfo;

  /** General volume information. */
  VolumeVolumeInfo volumeInfo;

  /** Create new Volume from JSON data */
  Volume.fromJson(Map json) {
    if (json.containsKey("accessInfo")) {
      accessInfo = new VolumeAccessInfo.fromJson(json["accessInfo"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("layerInfo")) {
      layerInfo = new VolumeLayerInfo.fromJson(json["layerInfo"]);
    }
    if (json.containsKey("recommendedInfo")) {
      recommendedInfo = new VolumeRecommendedInfo.fromJson(json["recommendedInfo"]);
    }
    if (json.containsKey("saleInfo")) {
      saleInfo = new VolumeSaleInfo.fromJson(json["saleInfo"]);
    }
    if (json.containsKey("searchInfo")) {
      searchInfo = new VolumeSearchInfo.fromJson(json["searchInfo"]);
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("userInfo")) {
      userInfo = new VolumeUserInfo.fromJson(json["userInfo"]);
    }
    if (json.containsKey("volumeInfo")) {
      volumeInfo = new VolumeVolumeInfo.fromJson(json["volumeInfo"]);
    }
  }

  /** Create JSON Object for Volume */
  Map toJson() {
    var output = new Map();

    if (accessInfo != null) {
      output["accessInfo"] = accessInfo.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (layerInfo != null) {
      output["layerInfo"] = layerInfo.toJson();
    }
    if (recommendedInfo != null) {
      output["recommendedInfo"] = recommendedInfo.toJson();
    }
    if (saleInfo != null) {
      output["saleInfo"] = saleInfo.toJson();
    }
    if (searchInfo != null) {
      output["searchInfo"] = searchInfo.toJson();
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (userInfo != null) {
      output["userInfo"] = userInfo.toJson();
    }
    if (volumeInfo != null) {
      output["volumeInfo"] = volumeInfo.toJson();
    }

    return output;
  }

  /** Return String representation of Volume */
  String toString() => JSON.stringify(this.toJson());

}

/** Any information about a volume related to reading or obtaining that volume text. This information can depend on country (books may be public domain in one country but not in another, e.g.). */
class VolumeAccessInfo {

  /** Combines the access and viewability of this volume into a single status field for this user. Values can be FULL_PURCHASED, FULL_PUBLIC_DOMAIN, SAMPLE or NONE. (In LITE projection.) */
  String accessViewStatus;

  /** The two-letter ISO_3166-1 country code for which this access information is valid. (In LITE projection.) */
  String country;

  /** Information about a volume's download license access restrictions. */
  DownloadAccessRestriction downloadAccess;

  /** Whether this volume can be embedded in a viewport using the Embedded Viewer API. */
  bool embeddable;

  /** Information about epub content. (In LITE projection.) */
  VolumeAccessInfoEpub epub;

  /** Information about pdf content. (In LITE projection.) */
  VolumeAccessInfoPdf pdf;

  /** Whether or not this book is public domain in the country listed above. */
  bool publicDomain;

  /** Whether text-to-speech is permitted for this volume. Values can be ALLOWED, ALLOWED_FOR_ACCESSIBILITY, or NOT_ALLOWED. */
  String textToSpeechPermission;

  /** For ordered but not yet processed orders, we give a URL that can be used to go to the appropriate Google Wallet page. */
  String viewOrderUrl;

  /** The read access of a volume. Possible values are PARTIAL, ALL_PAGES, NO_PAGES or UNKNOWN. This value depends on the country listed above. A value of PARTIAL means that the publisher has allowed some portion of the volume to be viewed publicly, without purchase. This can apply to eBooks as well as non-eBooks. Public domain books will always have a value of ALL_PAGES. */
  String viewability;

  /** URL to read this volume on the Google Books site. Link will not allow users to read non-viewable volumes. */
  String webReaderLink;

  /** Create new VolumeAccessInfo from JSON data */
  VolumeAccessInfo.fromJson(Map json) {
    if (json.containsKey("accessViewStatus")) {
      accessViewStatus = json["accessViewStatus"];
    }
    if (json.containsKey("country")) {
      country = json["country"];
    }
    if (json.containsKey("downloadAccess")) {
      downloadAccess = new DownloadAccessRestriction.fromJson(json["downloadAccess"]);
    }
    if (json.containsKey("embeddable")) {
      embeddable = json["embeddable"];
    }
    if (json.containsKey("epub")) {
      epub = new VolumeAccessInfoEpub.fromJson(json["epub"]);
    }
    if (json.containsKey("pdf")) {
      pdf = new VolumeAccessInfoPdf.fromJson(json["pdf"]);
    }
    if (json.containsKey("publicDomain")) {
      publicDomain = json["publicDomain"];
    }
    if (json.containsKey("textToSpeechPermission")) {
      textToSpeechPermission = json["textToSpeechPermission"];
    }
    if (json.containsKey("viewOrderUrl")) {
      viewOrderUrl = json["viewOrderUrl"];
    }
    if (json.containsKey("viewability")) {
      viewability = json["viewability"];
    }
    if (json.containsKey("webReaderLink")) {
      webReaderLink = json["webReaderLink"];
    }
  }

  /** Create JSON Object for VolumeAccessInfo */
  Map toJson() {
    var output = new Map();

    if (accessViewStatus != null) {
      output["accessViewStatus"] = accessViewStatus;
    }
    if (country != null) {
      output["country"] = country;
    }
    if (downloadAccess != null) {
      output["downloadAccess"] = downloadAccess.toJson();
    }
    if (embeddable != null) {
      output["embeddable"] = embeddable;
    }
    if (epub != null) {
      output["epub"] = epub.toJson();
    }
    if (pdf != null) {
      output["pdf"] = pdf.toJson();
    }
    if (publicDomain != null) {
      output["publicDomain"] = publicDomain;
    }
    if (textToSpeechPermission != null) {
      output["textToSpeechPermission"] = textToSpeechPermission;
    }
    if (viewOrderUrl != null) {
      output["viewOrderUrl"] = viewOrderUrl;
    }
    if (viewability != null) {
      output["viewability"] = viewability;
    }
    if (webReaderLink != null) {
      output["webReaderLink"] = webReaderLink;
    }

    return output;
  }

  /** Return String representation of VolumeAccessInfo */
  String toString() => JSON.stringify(this.toJson());

}

/** Information about pdf content. (In LITE projection.) */
class VolumeAccessInfoPdf {

  /** URL to retrieve ACS token for pdf download. (In LITE projection.) */
  String acsTokenLink;

  /** URL to download pdf. (In LITE projection.) */
  String downloadLink;

  /** Is a scanned image pdf available either as public domain or for purchase. (In LITE projection.) */
  bool isAvailable;

  /** Create new VolumeAccessInfoPdf from JSON data */
  VolumeAccessInfoPdf.fromJson(Map json) {
    if (json.containsKey("acsTokenLink")) {
      acsTokenLink = json["acsTokenLink"];
    }
    if (json.containsKey("downloadLink")) {
      downloadLink = json["downloadLink"];
    }
    if (json.containsKey("isAvailable")) {
      isAvailable = json["isAvailable"];
    }
  }

  /** Create JSON Object for VolumeAccessInfoPdf */
  Map toJson() {
    var output = new Map();

    if (acsTokenLink != null) {
      output["acsTokenLink"] = acsTokenLink;
    }
    if (downloadLink != null) {
      output["downloadLink"] = downloadLink;
    }
    if (isAvailable != null) {
      output["isAvailable"] = isAvailable;
    }

    return output;
  }

  /** Return String representation of VolumeAccessInfoPdf */
  String toString() => JSON.stringify(this.toJson());

}

/** Information about epub content. (In LITE projection.) */
class VolumeAccessInfoEpub {

  /** URL to retrieve ACS token for epub download. (In LITE projection.) */
  String acsTokenLink;

  /** URL to download epub. (In LITE projection.) */
  String downloadLink;

  /** Is a flowing text epub available either as public domain or for purchase. (In LITE projection.) */
  bool isAvailable;

  /** Create new VolumeAccessInfoEpub from JSON data */
  VolumeAccessInfoEpub.fromJson(Map json) {
    if (json.containsKey("acsTokenLink")) {
      acsTokenLink = json["acsTokenLink"];
    }
    if (json.containsKey("downloadLink")) {
      downloadLink = json["downloadLink"];
    }
    if (json.containsKey("isAvailable")) {
      isAvailable = json["isAvailable"];
    }
  }

  /** Create JSON Object for VolumeAccessInfoEpub */
  Map toJson() {
    var output = new Map();

    if (acsTokenLink != null) {
      output["acsTokenLink"] = acsTokenLink;
    }
    if (downloadLink != null) {
      output["downloadLink"] = downloadLink;
    }
    if (isAvailable != null) {
      output["isAvailable"] = isAvailable;
    }

    return output;
  }

  /** Return String representation of VolumeAccessInfoEpub */
  String toString() => JSON.stringify(this.toJson());

}

/** What layers exist in this volume and high level information about them. */
class VolumeLayerInfo {

  /** A layer should appear here if and only if the layer exists for this book. */
  List<VolumeLayerInfoLayers> layers;

  /** Create new VolumeLayerInfo from JSON data */
  VolumeLayerInfo.fromJson(Map json) {
    if (json.containsKey("layers")) {
      layers = [];
      json["layers"].forEach((item) {
        layers.add(new VolumeLayerInfoLayers.fromJson(item));
      });
    }
  }

  /** Create JSON Object for VolumeLayerInfo */
  Map toJson() {
    var output = new Map();

    if (layers != null) {
      output["layers"] = new List();
      layers.forEach((item) {
        output["layers"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of VolumeLayerInfo */
  String toString() => JSON.stringify(this.toJson());

}

class VolumeLayerInfoLayers {

  /** The layer id of this layer (e.g. "geo"). */
  String layerId;

  /** The current version of this layer's volume annotations. Note that this version applies only to the data in the books.layers.volumeAnnotations.* responses. The actual annotation data is versioned separately. */
  String volumeAnnotationsVersion;

  /** Create new VolumeLayerInfoLayers from JSON data */
  VolumeLayerInfoLayers.fromJson(Map json) {
    if (json.containsKey("layerId")) {
      layerId = json["layerId"];
    }
    if (json.containsKey("volumeAnnotationsVersion")) {
      volumeAnnotationsVersion = json["volumeAnnotationsVersion"];
    }
  }

  /** Create JSON Object for VolumeLayerInfoLayers */
  Map toJson() {
    var output = new Map();

    if (layerId != null) {
      output["layerId"] = layerId;
    }
    if (volumeAnnotationsVersion != null) {
      output["volumeAnnotationsVersion"] = volumeAnnotationsVersion;
    }

    return output;
  }

  /** Return String representation of VolumeLayerInfoLayers */
  String toString() => JSON.stringify(this.toJson());

}

/** User specific information related to this volume. (e.g. page this user last read or whether they purchased this book) */
class VolumeUserInfo {

  /** Whether or not this volume is currently in "my books." */
  bool isInMyBooks;

  /** Whether or not this volume was pre-ordered by the authenticated user making the request. (In LITE projection.) */
  bool isPreordered;

  /** Whether or not this volume was purchased by the authenticated user making the request. (In LITE projection.) */
  bool isPurchased;

  /** The user's current reading position in the volume, if one is available. (In LITE projection.) */
  ReadingPosition readingPosition;

  /** This user's review of this volume, if one exists. */
  Review review;

  /** Timestamp when this volume was last modified by a user action, such as a reading position update, volume purchase or writing a review. (RFC 3339 UTC date-time format). */
  String updated;

  /** Create new VolumeUserInfo from JSON data */
  VolumeUserInfo.fromJson(Map json) {
    if (json.containsKey("isInMyBooks")) {
      isInMyBooks = json["isInMyBooks"];
    }
    if (json.containsKey("isPreordered")) {
      isPreordered = json["isPreordered"];
    }
    if (json.containsKey("isPurchased")) {
      isPurchased = json["isPurchased"];
    }
    if (json.containsKey("readingPosition")) {
      readingPosition = new ReadingPosition.fromJson(json["readingPosition"]);
    }
    if (json.containsKey("review")) {
      review = new Review.fromJson(json["review"]);
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for VolumeUserInfo */
  Map toJson() {
    var output = new Map();

    if (isInMyBooks != null) {
      output["isInMyBooks"] = isInMyBooks;
    }
    if (isPreordered != null) {
      output["isPreordered"] = isPreordered;
    }
    if (isPurchased != null) {
      output["isPurchased"] = isPurchased;
    }
    if (readingPosition != null) {
      output["readingPosition"] = readingPosition.toJson();
    }
    if (review != null) {
      output["review"] = review.toJson();
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of VolumeUserInfo */
  String toString() => JSON.stringify(this.toJson());

}

/** Recommendation related information for this volume. */
class VolumeRecommendedInfo {

  /** A text explaining why this volume is recommended. */
  String explanation;

  /** Create new VolumeRecommendedInfo from JSON data */
  VolumeRecommendedInfo.fromJson(Map json) {
    if (json.containsKey("explanation")) {
      explanation = json["explanation"];
    }
  }

  /** Create JSON Object for VolumeRecommendedInfo */
  Map toJson() {
    var output = new Map();

    if (explanation != null) {
      output["explanation"] = explanation;
    }

    return output;
  }

  /** Return String representation of VolumeRecommendedInfo */
  String toString() => JSON.stringify(this.toJson());

}

/** General volume information. */
class VolumeVolumeInfo {

  /** The names of the authors and/or editors for this volume. (In LITE projection) */
  List<String> authors;

  /** The mean review rating for this volume. (min = 1.0, max = 5.0) */
  num averageRating;

  /** Canonical URL for a volume. (In LITE projection.) */
  String canonicalVolumeLink;

  /** A list of subject categories, such as "Fiction", "Suspense", etc. */
  List<String> categories;

  /** An identifier for the version of the volume content (text & images). (In LITE projection) */
  String contentVersion;

  /** A synopsis of the volume. The text of the description is formatted in HTML and includes simple formatting elements, such as b, i, and br tags. (In LITE projection.) */
  String description;

  /** Physical dimensions of this volume. */
  VolumeVolumeInfoDimensions dimensions;

  /** A list of image links for all the sizes that are available. (In LITE projection.) */
  VolumeVolumeInfoImageLinks imageLinks;

  /** Industry standard identifiers for this volume. */
  List<VolumeVolumeInfoIndustryIdentifiers> industryIdentifiers;

  /** URL to view information about this volume on the Google Books site. (In LITE projection) */
  String infoLink;

  /** Best language for this volume (based on content). It is the two-letter ISO 639-1 code such as 'fr', 'en', etc. */
  String language;

  /** The main category to which this volume belongs. It will be the category from the categories list returned below that has the highest weight. */
  String mainCategory;

  /** Total number of pages. */
  int pageCount;

  /** URL to preview this volume on the Google Books site. */
  String previewLink;

  /** Type of publication of this volume. Possible values are BOOK or MAGAZINE. */
  String printType;

  /** Date of publication. (In LITE projection.) */
  String publishedDate;

  /** Publisher of this volume. (In LITE projection.) */
  String publisher;

  /** The number of review ratings for this volume. */
  int ratingsCount;

  /** Volume subtitle. (In LITE projection.) */
  String subtitle;

  /** Volume title. (In LITE projection.) */
  String title;

  /** Create new VolumeVolumeInfo from JSON data */
  VolumeVolumeInfo.fromJson(Map json) {
    if (json.containsKey("authors")) {
      authors = [];
      json["authors"].forEach((item) {
        authors.add(item);
      });
    }
    if (json.containsKey("averageRating")) {
      averageRating = json["averageRating"];
    }
    if (json.containsKey("canonicalVolumeLink")) {
      canonicalVolumeLink = json["canonicalVolumeLink"];
    }
    if (json.containsKey("categories")) {
      categories = [];
      json["categories"].forEach((item) {
        categories.add(item);
      });
    }
    if (json.containsKey("contentVersion")) {
      contentVersion = json["contentVersion"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("dimensions")) {
      dimensions = new VolumeVolumeInfoDimensions.fromJson(json["dimensions"]);
    }
    if (json.containsKey("imageLinks")) {
      imageLinks = new VolumeVolumeInfoImageLinks.fromJson(json["imageLinks"]);
    }
    if (json.containsKey("industryIdentifiers")) {
      industryIdentifiers = [];
      json["industryIdentifiers"].forEach((item) {
        industryIdentifiers.add(new VolumeVolumeInfoIndustryIdentifiers.fromJson(item));
      });
    }
    if (json.containsKey("infoLink")) {
      infoLink = json["infoLink"];
    }
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("mainCategory")) {
      mainCategory = json["mainCategory"];
    }
    if (json.containsKey("pageCount")) {
      pageCount = json["pageCount"];
    }
    if (json.containsKey("previewLink")) {
      previewLink = json["previewLink"];
    }
    if (json.containsKey("printType")) {
      printType = json["printType"];
    }
    if (json.containsKey("publishedDate")) {
      publishedDate = json["publishedDate"];
    }
    if (json.containsKey("publisher")) {
      publisher = json["publisher"];
    }
    if (json.containsKey("ratingsCount")) {
      ratingsCount = json["ratingsCount"];
    }
    if (json.containsKey("subtitle")) {
      subtitle = json["subtitle"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for VolumeVolumeInfo */
  Map toJson() {
    var output = new Map();

    if (authors != null) {
      output["authors"] = new List();
      authors.forEach((item) {
        output["authors"].add(item);
      });
    }
    if (averageRating != null) {
      output["averageRating"] = averageRating;
    }
    if (canonicalVolumeLink != null) {
      output["canonicalVolumeLink"] = canonicalVolumeLink;
    }
    if (categories != null) {
      output["categories"] = new List();
      categories.forEach((item) {
        output["categories"].add(item);
      });
    }
    if (contentVersion != null) {
      output["contentVersion"] = contentVersion;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (dimensions != null) {
      output["dimensions"] = dimensions.toJson();
    }
    if (imageLinks != null) {
      output["imageLinks"] = imageLinks.toJson();
    }
    if (industryIdentifiers != null) {
      output["industryIdentifiers"] = new List();
      industryIdentifiers.forEach((item) {
        output["industryIdentifiers"].add(item.toJson());
      });
    }
    if (infoLink != null) {
      output["infoLink"] = infoLink;
    }
    if (language != null) {
      output["language"] = language;
    }
    if (mainCategory != null) {
      output["mainCategory"] = mainCategory;
    }
    if (pageCount != null) {
      output["pageCount"] = pageCount;
    }
    if (previewLink != null) {
      output["previewLink"] = previewLink;
    }
    if (printType != null) {
      output["printType"] = printType;
    }
    if (publishedDate != null) {
      output["publishedDate"] = publishedDate;
    }
    if (publisher != null) {
      output["publisher"] = publisher;
    }
    if (ratingsCount != null) {
      output["ratingsCount"] = ratingsCount;
    }
    if (subtitle != null) {
      output["subtitle"] = subtitle;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of VolumeVolumeInfo */
  String toString() => JSON.stringify(this.toJson());

}

/** A list of image links for all the sizes that are available. (In LITE projection.) */
class VolumeVolumeInfoImageLinks {

  /** Image link for extra large size (width of ~1280 pixels). (In LITE projection) */
  String extraLarge;

  /** Image link for large size (width of ~800 pixels). (In LITE projection) */
  String large;

  /** Image link for medium size (width of ~575 pixels). (In LITE projection) */
  String medium;

  /** Image link for small size (width of ~300 pixels). (In LITE projection) */
  String small;

  /** Image link for small thumbnail size (width of ~80 pixels). (In LITE projection) */
  String smallThumbnail;

  /** Image link for thumbnail size (width of ~128 pixels). (In LITE projection) */
  String thumbnail;

  /** Create new VolumeVolumeInfoImageLinks from JSON data */
  VolumeVolumeInfoImageLinks.fromJson(Map json) {
    if (json.containsKey("extraLarge")) {
      extraLarge = json["extraLarge"];
    }
    if (json.containsKey("large")) {
      large = json["large"];
    }
    if (json.containsKey("medium")) {
      medium = json["medium"];
    }
    if (json.containsKey("small")) {
      small = json["small"];
    }
    if (json.containsKey("smallThumbnail")) {
      smallThumbnail = json["smallThumbnail"];
    }
    if (json.containsKey("thumbnail")) {
      thumbnail = json["thumbnail"];
    }
  }

  /** Create JSON Object for VolumeVolumeInfoImageLinks */
  Map toJson() {
    var output = new Map();

    if (extraLarge != null) {
      output["extraLarge"] = extraLarge;
    }
    if (large != null) {
      output["large"] = large;
    }
    if (medium != null) {
      output["medium"] = medium;
    }
    if (small != null) {
      output["small"] = small;
    }
    if (smallThumbnail != null) {
      output["smallThumbnail"] = smallThumbnail;
    }
    if (thumbnail != null) {
      output["thumbnail"] = thumbnail;
    }

    return output;
  }

  /** Return String representation of VolumeVolumeInfoImageLinks */
  String toString() => JSON.stringify(this.toJson());

}

/** Physical dimensions of this volume. */
class VolumeVolumeInfoDimensions {

  /** Height or length of this volume (in cm). */
  String height;

  /** Thickness of this volume (in cm). */
  String thickness;

  /** Width of this volume (in cm). */
  String width;

  /** Create new VolumeVolumeInfoDimensions from JSON data */
  VolumeVolumeInfoDimensions.fromJson(Map json) {
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("thickness")) {
      thickness = json["thickness"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for VolumeVolumeInfoDimensions */
  Map toJson() {
    var output = new Map();

    if (height != null) {
      output["height"] = height;
    }
    if (thickness != null) {
      output["thickness"] = thickness;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of VolumeVolumeInfoDimensions */
  String toString() => JSON.stringify(this.toJson());

}

class VolumeVolumeInfoIndustryIdentifiers {

  /** Industry specific volume identifier. */
  String identifier;

  /** Identifier type. Possible values are ISBN_10, ISBN_13, ISSN and OTHER. */
  String type;

  /** Create new VolumeVolumeInfoIndustryIdentifiers from JSON data */
  VolumeVolumeInfoIndustryIdentifiers.fromJson(Map json) {
    if (json.containsKey("identifier")) {
      identifier = json["identifier"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for VolumeVolumeInfoIndustryIdentifiers */
  Map toJson() {
    var output = new Map();

    if (identifier != null) {
      output["identifier"] = identifier;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of VolumeVolumeInfoIndustryIdentifiers */
  String toString() => JSON.stringify(this.toJson());

}

/** Any information about a volume related to the eBookstore and/or purchaseability. This information can depend on the country where the request originates from (i.e. books may not be for sale in certain countries). */
class VolumeSaleInfo {

  /** URL to purchase this volume on the Google Books site. (In LITE projection) */
  String buyLink;

  /** The two-letter ISO_3166-1 country code for which this sale information is valid. (In LITE projection.) */
  String country;

  /** Whether or not this volume is an eBook (can be added to the My eBooks shelf). */
  bool isEbook;

  /** Suggested retail price. (In LITE projection.) */
  VolumeSaleInfoListPrice listPrice;

  /** The date on which this book is available for sale. */
  String onSaleDate;

  /** The actual selling price of the book. This is the same as the suggested retail or list price unless there are offers or discounts on this volume. (In LITE projection.) */
  VolumeSaleInfoRetailPrice retailPrice;

  /** Whether or not this book is available for sale or offered for free in the Google eBookstore for the country listed above. Possible values are FOR_SALE, FREE, NOT_FOR_SALE, or FOR_PREORDER. */
  String saleability;

  /** Create new VolumeSaleInfo from JSON data */
  VolumeSaleInfo.fromJson(Map json) {
    if (json.containsKey("buyLink")) {
      buyLink = json["buyLink"];
    }
    if (json.containsKey("country")) {
      country = json["country"];
    }
    if (json.containsKey("isEbook")) {
      isEbook = json["isEbook"];
    }
    if (json.containsKey("listPrice")) {
      listPrice = new VolumeSaleInfoListPrice.fromJson(json["listPrice"]);
    }
    if (json.containsKey("onSaleDate")) {
      onSaleDate = json["onSaleDate"];
    }
    if (json.containsKey("retailPrice")) {
      retailPrice = new VolumeSaleInfoRetailPrice.fromJson(json["retailPrice"]);
    }
    if (json.containsKey("saleability")) {
      saleability = json["saleability"];
    }
  }

  /** Create JSON Object for VolumeSaleInfo */
  Map toJson() {
    var output = new Map();

    if (buyLink != null) {
      output["buyLink"] = buyLink;
    }
    if (country != null) {
      output["country"] = country;
    }
    if (isEbook != null) {
      output["isEbook"] = isEbook;
    }
    if (listPrice != null) {
      output["listPrice"] = listPrice.toJson();
    }
    if (onSaleDate != null) {
      output["onSaleDate"] = onSaleDate;
    }
    if (retailPrice != null) {
      output["retailPrice"] = retailPrice.toJson();
    }
    if (saleability != null) {
      output["saleability"] = saleability;
    }

    return output;
  }

  /** Return String representation of VolumeSaleInfo */
  String toString() => JSON.stringify(this.toJson());

}

/** Suggested retail price. (In LITE projection.) */
class VolumeSaleInfoListPrice {

  /** Amount in the currency listed below. (In LITE projection.) */
  num amount;

  /** An ISO 4217, three-letter currency code. (In LITE projection.) */
  String currencyCode;

  /** Create new VolumeSaleInfoListPrice from JSON data */
  VolumeSaleInfoListPrice.fromJson(Map json) {
    if (json.containsKey("amount")) {
      amount = json["amount"];
    }
    if (json.containsKey("currencyCode")) {
      currencyCode = json["currencyCode"];
    }
  }

  /** Create JSON Object for VolumeSaleInfoListPrice */
  Map toJson() {
    var output = new Map();

    if (amount != null) {
      output["amount"] = amount;
    }
    if (currencyCode != null) {
      output["currencyCode"] = currencyCode;
    }

    return output;
  }

  /** Return String representation of VolumeSaleInfoListPrice */
  String toString() => JSON.stringify(this.toJson());

}

/** The actual selling price of the book. This is the same as the suggested retail or list price unless there are offers or discounts on this volume. (In LITE projection.) */
class VolumeSaleInfoRetailPrice {

  /** Amount in the currency listed below. (In LITE projection.) */
  num amount;

  /** An ISO 4217, three-letter currency code. (In LITE projection.) */
  String currencyCode;

  /** Create new VolumeSaleInfoRetailPrice from JSON data */
  VolumeSaleInfoRetailPrice.fromJson(Map json) {
    if (json.containsKey("amount")) {
      amount = json["amount"];
    }
    if (json.containsKey("currencyCode")) {
      currencyCode = json["currencyCode"];
    }
  }

  /** Create JSON Object for VolumeSaleInfoRetailPrice */
  Map toJson() {
    var output = new Map();

    if (amount != null) {
      output["amount"] = amount;
    }
    if (currencyCode != null) {
      output["currencyCode"] = currencyCode;
    }

    return output;
  }

  /** Return String representation of VolumeSaleInfoRetailPrice */
  String toString() => JSON.stringify(this.toJson());

}

/** Search result information related to this volume. */
class VolumeSearchInfo {

  /** A text snippet containing the search query. */
  String textSnippet;

  /** Create new VolumeSearchInfo from JSON data */
  VolumeSearchInfo.fromJson(Map json) {
    if (json.containsKey("textSnippet")) {
      textSnippet = json["textSnippet"];
    }
  }

  /** Create JSON Object for VolumeSearchInfo */
  Map toJson() {
    var output = new Map();

    if (textSnippet != null) {
      output["textSnippet"] = textSnippet;
    }

    return output;
  }

  /** Return String representation of VolumeSearchInfo */
  String toString() => JSON.stringify(this.toJson());

}

class Volumeannotation {

  /** The annotation data id for this volume annotation. */
  String annotationDataId;

  /** Link to get data for this annotation. */
  String annotationDataLink;

  /** The type of annotation this is. */
  String annotationType;

  /** The content ranges to identify the selected text. */
  VolumeannotationContentRanges contentRanges;

  /** Data for this annotation. */
  String data;

  /** Indicates that this annotation is deleted. */
  bool deleted;

  /** Unique id of this volume annotation. */
  String id;

  /** Resource Type */
  String kind;

  /** The Layer this annotation is for. */
  String layerId;

  /** Pages the annotation spans. */
  List<String> pageIds;

  /** Excerpt from the volume. */
  String selectedText;

  /** URL to this resource. */
  String selfLink;

  /** Timestamp for the last time this anntoation was updated. (RFC 3339 UTC date-time format). */
  String updated;

  /** The Volume this annotation is for. */
  String volumeId;

  /** Create new Volumeannotation from JSON data */
  Volumeannotation.fromJson(Map json) {
    if (json.containsKey("annotationDataId")) {
      annotationDataId = json["annotationDataId"];
    }
    if (json.containsKey("annotationDataLink")) {
      annotationDataLink = json["annotationDataLink"];
    }
    if (json.containsKey("annotationType")) {
      annotationType = json["annotationType"];
    }
    if (json.containsKey("contentRanges")) {
      contentRanges = new VolumeannotationContentRanges.fromJson(json["contentRanges"]);
    }
    if (json.containsKey("data")) {
      data = json["data"];
    }
    if (json.containsKey("deleted")) {
      deleted = json["deleted"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("layerId")) {
      layerId = json["layerId"];
    }
    if (json.containsKey("pageIds")) {
      pageIds = [];
      json["pageIds"].forEach((item) {
        pageIds.add(item);
      });
    }
    if (json.containsKey("selectedText")) {
      selectedText = json["selectedText"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("volumeId")) {
      volumeId = json["volumeId"];
    }
  }

  /** Create JSON Object for Volumeannotation */
  Map toJson() {
    var output = new Map();

    if (annotationDataId != null) {
      output["annotationDataId"] = annotationDataId;
    }
    if (annotationDataLink != null) {
      output["annotationDataLink"] = annotationDataLink;
    }
    if (annotationType != null) {
      output["annotationType"] = annotationType;
    }
    if (contentRanges != null) {
      output["contentRanges"] = contentRanges.toJson();
    }
    if (data != null) {
      output["data"] = data;
    }
    if (deleted != null) {
      output["deleted"] = deleted;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (layerId != null) {
      output["layerId"] = layerId;
    }
    if (pageIds != null) {
      output["pageIds"] = new List();
      pageIds.forEach((item) {
        output["pageIds"].add(item);
      });
    }
    if (selectedText != null) {
      output["selectedText"] = selectedText;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (volumeId != null) {
      output["volumeId"] = volumeId;
    }

    return output;
  }

  /** Return String representation of Volumeannotation */
  String toString() => JSON.stringify(this.toJson());

}

/** The content ranges to identify the selected text. */
class VolumeannotationContentRanges {

  /** Range in CFI format for this annotation for version above. */
  BooksAnnotationsRange cfiRange;

  /** Content version applicable to ranges below. */
  String contentVersion;

  /** Range in GB image format for this annotation for version above. */
  BooksAnnotationsRange gbImageRange;

  /** Range in GB text format for this annotation for version above. */
  BooksAnnotationsRange gbTextRange;

  /** Create new VolumeannotationContentRanges from JSON data */
  VolumeannotationContentRanges.fromJson(Map json) {
    if (json.containsKey("cfiRange")) {
      cfiRange = new BooksAnnotationsRange.fromJson(json["cfiRange"]);
    }
    if (json.containsKey("contentVersion")) {
      contentVersion = json["contentVersion"];
    }
    if (json.containsKey("gbImageRange")) {
      gbImageRange = new BooksAnnotationsRange.fromJson(json["gbImageRange"]);
    }
    if (json.containsKey("gbTextRange")) {
      gbTextRange = new BooksAnnotationsRange.fromJson(json["gbTextRange"]);
    }
  }

  /** Create JSON Object for VolumeannotationContentRanges */
  Map toJson() {
    var output = new Map();

    if (cfiRange != null) {
      output["cfiRange"] = cfiRange.toJson();
    }
    if (contentVersion != null) {
      output["contentVersion"] = contentVersion;
    }
    if (gbImageRange != null) {
      output["gbImageRange"] = gbImageRange.toJson();
    }
    if (gbTextRange != null) {
      output["gbTextRange"] = gbTextRange.toJson();
    }

    return output;
  }

  /** Return String representation of VolumeannotationContentRanges */
  String toString() => JSON.stringify(this.toJson());

}

class Volumeannotations {

  /** A list of volume annotations. */
  List<Volumeannotation> items;

  /** Resource type */
  String kind;

  /** Token to pass in for pagination for the next page. This will not be present if this request does not have more results. */
  String nextPageToken;

  /** The total number of volume annotations found. */
  int totalItems;

  /** The version string for all of the volume annotations in this layer (not just the ones in this response). Note: the version string doesn't apply to the annotation data, just the information in this response (e.g. the location of annotations in the book). */
  String version;

  /** Create new Volumeannotations from JSON data */
  Volumeannotations.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Volumeannotation.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
    if (json.containsKey("version")) {
      version = json["version"];
    }
  }

  /** Create JSON Object for Volumeannotations */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }
    if (version != null) {
      output["version"] = version;
    }

    return output;
  }

  /** Return String representation of Volumeannotations */
  String toString() => JSON.stringify(this.toJson());

}

class Volumes {

  /** A list of volumes. */
  List<Volume> items;

  /** Resource type. */
  String kind;

  /** Total number of volumes found. This might be greater than the number of volumes returned in this response if results have been paginated. */
  int totalItems;

  /** Create new Volumes from JSON data */
  Volumes.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Volume.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for Volumes */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of Volumes */
  String toString() => JSON.stringify(this.toJson());

}

