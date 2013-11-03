part of books_v1_api;

class Annotation {

  /** Anchor text after excerpt. For requests, if the user bookmarked a screen that has no flowing text on it, then this field should be empty. */
  core.String afterSelectedText;

  /** Anchor text before excerpt. For requests, if the user bookmarked a screen that has no flowing text on it, then this field should be empty. */
  core.String beforeSelectedText;

  /** Selection ranges sent from the client. */
  AnnotationClientVersionRanges clientVersionRanges;

  /** Timestamp for the created time of this annotation. */
  core.String created;

  /** Selection ranges for the most recent content version. */
  AnnotationCurrentVersionRanges currentVersionRanges;

  /** User-created data for this annotation. */
  core.String data;

  /** Indicates that this annotation is deleted. */
  core.bool deleted;

  /** The highlight style for this annotation. */
  core.String highlightStyle;

  /** Id of this annotation, in the form of a GUID. */
  core.String id;

  /** Resource type. */
  core.String kind;

  /** The layer this annotation is for. */
  core.String layerId;

  AnnotationLayerSummary layerSummary;

  /** Pages that this annotation spans. */
  core.List<core.String> pageIds;

  /** Excerpt from the volume. */
  core.String selectedText;

  /** URL to this resource. */
  core.String selfLink;

  /** Timestamp for the last time this annotation was modified. */
  core.String updated;

  /** The volume that this annotation belongs to. */
  core.String volumeId;

  /** Create new Annotation from JSON data */
  Annotation.fromJson(core.Map json) {
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
    if (json.containsKey("layerSummary")) {
      layerSummary = new AnnotationLayerSummary.fromJson(json["layerSummary"]);
    }
    if (json.containsKey("pageIds")) {
      pageIds = json["pageIds"].toList();
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
  core.Map toJson() {
    var output = new core.Map();

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
    if (layerSummary != null) {
      output["layerSummary"] = layerSummary.toJson();
    }
    if (pageIds != null) {
      output["pageIds"] = pageIds.toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Selection ranges sent from the client. */
class AnnotationClientVersionRanges {

  /** Range in CFI format for this annotation sent by client. */
  BooksAnnotationsRange cfiRange;

  /** Content version the client sent in. */
  core.String contentVersion;

  /** Range in GB image format for this annotation sent by client. */
  BooksAnnotationsRange gbImageRange;

  /** Range in GB text format for this annotation sent by client. */
  BooksAnnotationsRange gbTextRange;

  /** Range in image CFI format for this annotation sent by client. */
  BooksAnnotationsRange imageCfiRange;

  /** Create new AnnotationClientVersionRanges from JSON data */
  AnnotationClientVersionRanges.fromJson(core.Map json) {
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
    if (json.containsKey("imageCfiRange")) {
      imageCfiRange = new BooksAnnotationsRange.fromJson(json["imageCfiRange"]);
    }
  }

  /** Create JSON Object for AnnotationClientVersionRanges */
  core.Map toJson() {
    var output = new core.Map();

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
    if (imageCfiRange != null) {
      output["imageCfiRange"] = imageCfiRange.toJson();
    }

    return output;
  }

  /** Return String representation of AnnotationClientVersionRanges */
  core.String toString() => JSON.encode(this.toJson());

}

/** Selection ranges for the most recent content version. */
class AnnotationCurrentVersionRanges {

  /** Range in CFI format for this annotation for version above. */
  BooksAnnotationsRange cfiRange;

  /** Content version applicable to ranges below. */
  core.String contentVersion;

  /** Range in GB image format for this annotation for version above. */
  BooksAnnotationsRange gbImageRange;

  /** Range in GB text format for this annotation for version above. */
  BooksAnnotationsRange gbTextRange;

  /** Range in image CFI format for this annotation for version above. */
  BooksAnnotationsRange imageCfiRange;

  /** Create new AnnotationCurrentVersionRanges from JSON data */
  AnnotationCurrentVersionRanges.fromJson(core.Map json) {
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
    if (json.containsKey("imageCfiRange")) {
      imageCfiRange = new BooksAnnotationsRange.fromJson(json["imageCfiRange"]);
    }
  }

  /** Create JSON Object for AnnotationCurrentVersionRanges */
  core.Map toJson() {
    var output = new core.Map();

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
    if (imageCfiRange != null) {
      output["imageCfiRange"] = imageCfiRange.toJson();
    }

    return output;
  }

  /** Return String representation of AnnotationCurrentVersionRanges */
  core.String toString() => JSON.encode(this.toJson());

}

class AnnotationLayerSummary {

  /** Maximum allowed characters on this layer, especially for the "copy" layer. */
  core.int allowedCharacterCount;

  /** Type of limitation on this layer. "limited" or "unlimited" for the "copy" layer. */
  core.String limitType;

  /** Remaining allowed characters on this layer, especially for the "copy" layer. */
  core.int remainingCharacterCount;

  /** Create new AnnotationLayerSummary from JSON data */
  AnnotationLayerSummary.fromJson(core.Map json) {
    if (json.containsKey("allowedCharacterCount")) {
      allowedCharacterCount = json["allowedCharacterCount"];
    }
    if (json.containsKey("limitType")) {
      limitType = json["limitType"];
    }
    if (json.containsKey("remainingCharacterCount")) {
      remainingCharacterCount = json["remainingCharacterCount"];
    }
  }

  /** Create JSON Object for AnnotationLayerSummary */
  core.Map toJson() {
    var output = new core.Map();

    if (allowedCharacterCount != null) {
      output["allowedCharacterCount"] = allowedCharacterCount;
    }
    if (limitType != null) {
      output["limitType"] = limitType;
    }
    if (remainingCharacterCount != null) {
      output["remainingCharacterCount"] = remainingCharacterCount;
    }

    return output;
  }

  /** Return String representation of AnnotationLayerSummary */
  core.String toString() => JSON.encode(this.toJson());

}

class Annotationdata {

  /** The type of annotation this data is for. */
  core.String annotationType;

  core.Object data;

  /** Base64 encoded data for this annotation data. */
  core.String encoded_data;

  /** Unique id for this annotation data. */
  core.String id;

  /** Resource Type */
  core.String kind;

  /** The Layer id for this data. * */
  core.String layerId;

  /** URL for this resource. * */
  core.String selfLink;

  /** Timestamp for the last time this data was updated. (RFC 3339 UTC date-time format). */
  core.String updated;

  /** The volume id for this data. * */
  core.String volumeId;

  /** Create new Annotationdata from JSON data */
  Annotationdata.fromJson(core.Map json) {
    if (json.containsKey("annotationType")) {
      annotationType = json["annotationType"];
    }
    if (json.containsKey("data")) {
      data = json["data"];
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
  core.Map toJson() {
    var output = new core.Map();

    if (annotationType != null) {
      output["annotationType"] = annotationType;
    }
    if (data != null) {
      output["data"] = data;
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
  core.String toString() => JSON.encode(this.toJson());

}

class Annotations {

  /** A list of annotations. */
  core.List<Annotation> items;

  /** Resource type. */
  core.String kind;

  /** Token to pass in for pagination for the next page. This will not be present if this request does not have more results. */
  core.String nextPageToken;

  /** Total number of annotations found. This may be greater than the number of notes returned in this response if results have been paginated. */
  core.int totalItems;

  /** Create new Annotations from JSON data */
  Annotations.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Annotation.fromJson(itemsItem)).toList();
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

class AnnotationsSummary {

  core.String kind;

  core.List<AnnotationsSummaryLayers> layers;

  /** Create new AnnotationsSummary from JSON data */
  AnnotationsSummary.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("layers")) {
      layers = json["layers"].map((layersItem) => new AnnotationsSummaryLayers.fromJson(layersItem)).toList();
    }
  }

  /** Create JSON Object for AnnotationsSummary */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (layers != null) {
      output["layers"] = layers.map((layersItem) => layersItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AnnotationsSummary */
  core.String toString() => JSON.encode(this.toJson());

}

class AnnotationsSummaryLayers {

  core.int allowedCharacterCount;

  core.String layerId;

  core.String limitType;

  core.int remainingCharacterCount;

  core.String updated;

  /** Create new AnnotationsSummaryLayers from JSON data */
  AnnotationsSummaryLayers.fromJson(core.Map json) {
    if (json.containsKey("allowedCharacterCount")) {
      allowedCharacterCount = json["allowedCharacterCount"];
    }
    if (json.containsKey("layerId")) {
      layerId = json["layerId"];
    }
    if (json.containsKey("limitType")) {
      limitType = json["limitType"];
    }
    if (json.containsKey("remainingCharacterCount")) {
      remainingCharacterCount = json["remainingCharacterCount"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for AnnotationsSummaryLayers */
  core.Map toJson() {
    var output = new core.Map();

    if (allowedCharacterCount != null) {
      output["allowedCharacterCount"] = allowedCharacterCount;
    }
    if (layerId != null) {
      output["layerId"] = layerId;
    }
    if (limitType != null) {
      output["limitType"] = limitType;
    }
    if (remainingCharacterCount != null) {
      output["remainingCharacterCount"] = remainingCharacterCount;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of AnnotationsSummaryLayers */
  core.String toString() => JSON.encode(this.toJson());

}

class Annotationsdata {

  /** A list of Annotation Data. */
  core.List<Annotationdata> items;

  /** Resource type */
  core.String kind;

  /** Token to pass in for pagination for the next page. This will not be present if this request does not have more results. */
  core.String nextPageToken;

  /** The total number of volume annotations found. */
  core.int totalItems;

  /** Create new Annotationsdata from JSON data */
  Annotationsdata.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Annotationdata.fromJson(itemsItem)).toList();
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

class BooksAnnotationsRange {

  /** The offset from the ending position. */
  core.String endOffset;

  /** The ending position for the range. */
  core.String endPosition;

  /** The offset from the starting position. */
  core.String startOffset;

  /** The starting position for the range. */
  core.String startPosition;

  /** Create new BooksAnnotationsRange from JSON data */
  BooksAnnotationsRange.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class BooksCloudloadingResource {

  core.String author;

  core.String processingState;

  core.String title;

  core.String volumeId;

  /** Create new BooksCloudloadingResource from JSON data */
  BooksCloudloadingResource.fromJson(core.Map json) {
    if (json.containsKey("author")) {
      author = json["author"];
    }
    if (json.containsKey("processingState")) {
      processingState = json["processingState"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("volumeId")) {
      volumeId = json["volumeId"];
    }
  }

  /** Create JSON Object for BooksCloudloadingResource */
  core.Map toJson() {
    var output = new core.Map();

    if (author != null) {
      output["author"] = author;
    }
    if (processingState != null) {
      output["processingState"] = processingState;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (volumeId != null) {
      output["volumeId"] = volumeId;
    }

    return output;
  }

  /** Return String representation of BooksCloudloadingResource */
  core.String toString() => JSON.encode(this.toJson());

}

class BooksVolumesRecommendedRateResponse {

  core.String consistency_token;

  /** Create new BooksVolumesRecommendedRateResponse from JSON data */
  BooksVolumesRecommendedRateResponse.fromJson(core.Map json) {
    if (json.containsKey("consistency_token")) {
      consistency_token = json["consistency_token"];
    }
  }

  /** Create JSON Object for BooksVolumesRecommendedRateResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (consistency_token != null) {
      output["consistency_token"] = consistency_token;
    }

    return output;
  }

  /** Return String representation of BooksVolumesRecommendedRateResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class Bookshelf {

  /** Whether this bookshelf is PUBLIC or PRIVATE. */
  core.String access;

  /** Created time for this bookshelf (formatted UTC timestamp with millisecond resolution). */
  core.String created;

  /** Description of this bookshelf. */
  core.String description;

  /** Id of this bookshelf, only unique by user. */
  core.int id;

  /** Resource type for bookshelf metadata. */
  core.String kind;

  /** URL to this resource. */
  core.String selfLink;

  /** Title of this bookshelf. */
  core.String title;

  /** Last modified time of this bookshelf (formatted UTC timestamp with millisecond resolution). */
  core.String updated;

  /** Number of volumes in this bookshelf. */
  core.int volumeCount;

  /** Last time a volume was added or removed from this bookshelf (formatted UTC timestamp with millisecond resolution). */
  core.String volumesLastUpdated;

  /** Create new Bookshelf from JSON data */
  Bookshelf.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class Bookshelves {

  /** A list of bookshelves. */
  core.List<Bookshelf> items;

  /** Resource type. */
  core.String kind;

  /** Create new Bookshelves from JSON data */
  Bookshelves.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Bookshelf.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Bookshelves */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Bookshelves */
  core.String toString() => JSON.encode(this.toJson());

}

class ConcurrentAccessRestriction {

  /** Whether access is granted for this (user, device, volume). */
  core.bool deviceAllowed;

  /** Resource type. */
  core.String kind;

  /** The maximum number of concurrent access licenses for this volume. */
  core.int maxConcurrentDevices;

  /** Error/warning message. */
  core.String message;

  /** Client nonce for verification. Download access and client-validation only. */
  core.String nonce;

  /** Error/warning reason code. */
  core.String reasonCode;

  /** Whether this volume has any concurrent access restrictions. */
  core.bool restricted;

  /** Response signature. */
  core.String signature;

  /** Client app identifier for verification. Download access and client-validation only. */
  core.String source;

  /** Time in seconds for license auto-expiration. */
  core.int timeWindowSeconds;

  /** Identifies the volume for which this entry applies. */
  core.String volumeId;

  /** Create new ConcurrentAccessRestriction from JSON data */
  ConcurrentAccessRestriction.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class Dictlayerdata {

  DictlayerdataCommon common;

  DictlayerdataDict dict;

  core.String kind;

  /** Create new Dictlayerdata from JSON data */
  Dictlayerdata.fromJson(core.Map json) {
    if (json.containsKey("common")) {
      common = new DictlayerdataCommon.fromJson(json["common"]);
    }
    if (json.containsKey("dict")) {
      dict = new DictlayerdataDict.fromJson(json["dict"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Dictlayerdata */
  core.Map toJson() {
    var output = new core.Map();

    if (common != null) {
      output["common"] = common.toJson();
    }
    if (dict != null) {
      output["dict"] = dict.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Dictlayerdata */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataCommon {

  /** The display title and localized canonical name to use when searching for this entity on Google search. */
  core.String title;

  /** Create new DictlayerdataCommon from JSON data */
  DictlayerdataCommon.fromJson(core.Map json) {
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for DictlayerdataCommon */
  core.Map toJson() {
    var output = new core.Map();

    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of DictlayerdataCommon */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDict {

  /** The source, url and attribution for this dictionary data. */
  DictlayerdataDictSource source;

  core.List<DictlayerdataDictWords> words;

  /** Create new DictlayerdataDict from JSON data */
  DictlayerdataDict.fromJson(core.Map json) {
    if (json.containsKey("source")) {
      source = new DictlayerdataDictSource.fromJson(json["source"]);
    }
    if (json.containsKey("words")) {
      words = json["words"].map((wordsItem) => new DictlayerdataDictWords.fromJson(wordsItem)).toList();
    }
  }

  /** Create JSON Object for DictlayerdataDict */
  core.Map toJson() {
    var output = new core.Map();

    if (source != null) {
      output["source"] = source.toJson();
    }
    if (words != null) {
      output["words"] = words.map((wordsItem) => wordsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of DictlayerdataDict */
  core.String toString() => JSON.encode(this.toJson());

}

/** The source, url and attribution for this dictionary data. */
class DictlayerdataDictSource {

  core.String attribution;

  core.String url;

  /** Create new DictlayerdataDictSource from JSON data */
  DictlayerdataDictSource.fromJson(core.Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for DictlayerdataDictSource */
  core.Map toJson() {
    var output = new core.Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictSource */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDictWords {

  core.List<DictlayerdataDictWordsDerivatives> derivatives;

  core.List<DictlayerdataDictWordsExamples> examples;

  core.List<DictlayerdataDictWordsSenses> senses;

  /** The words with different meanings but not related words, e.g. "go" (game) and "go" (verb). */
  DictlayerdataDictWordsSource source;

  /** Create new DictlayerdataDictWords from JSON data */
  DictlayerdataDictWords.fromJson(core.Map json) {
    if (json.containsKey("derivatives")) {
      derivatives = json["derivatives"].map((derivativesItem) => new DictlayerdataDictWordsDerivatives.fromJson(derivativesItem)).toList();
    }
    if (json.containsKey("examples")) {
      examples = json["examples"].map((examplesItem) => new DictlayerdataDictWordsExamples.fromJson(examplesItem)).toList();
    }
    if (json.containsKey("senses")) {
      senses = json["senses"].map((sensesItem) => new DictlayerdataDictWordsSenses.fromJson(sensesItem)).toList();
    }
    if (json.containsKey("source")) {
      source = new DictlayerdataDictWordsSource.fromJson(json["source"]);
    }
  }

  /** Create JSON Object for DictlayerdataDictWords */
  core.Map toJson() {
    var output = new core.Map();

    if (derivatives != null) {
      output["derivatives"] = derivatives.map((derivativesItem) => derivativesItem.toJson()).toList();
    }
    if (examples != null) {
      output["examples"] = examples.map((examplesItem) => examplesItem.toJson()).toList();
    }
    if (senses != null) {
      output["senses"] = senses.map((sensesItem) => sensesItem.toJson()).toList();
    }
    if (source != null) {
      output["source"] = source.toJson();
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWords */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDictWordsDerivatives {

  DictlayerdataDictWordsDerivativesSource source;

  core.String text;

  /** Create new DictlayerdataDictWordsDerivatives from JSON data */
  DictlayerdataDictWordsDerivatives.fromJson(core.Map json) {
    if (json.containsKey("source")) {
      source = new DictlayerdataDictWordsDerivativesSource.fromJson(json["source"]);
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
  }

  /** Create JSON Object for DictlayerdataDictWordsDerivatives */
  core.Map toJson() {
    var output = new core.Map();

    if (source != null) {
      output["source"] = source.toJson();
    }
    if (text != null) {
      output["text"] = text;
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWordsDerivatives */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDictWordsDerivativesSource {

  core.String attribution;

  core.String url;

  /** Create new DictlayerdataDictWordsDerivativesSource from JSON data */
  DictlayerdataDictWordsDerivativesSource.fromJson(core.Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for DictlayerdataDictWordsDerivativesSource */
  core.Map toJson() {
    var output = new core.Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWordsDerivativesSource */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDictWordsExamples {

  DictlayerdataDictWordsExamplesSource source;

  core.String text;

  /** Create new DictlayerdataDictWordsExamples from JSON data */
  DictlayerdataDictWordsExamples.fromJson(core.Map json) {
    if (json.containsKey("source")) {
      source = new DictlayerdataDictWordsExamplesSource.fromJson(json["source"]);
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
  }

  /** Create JSON Object for DictlayerdataDictWordsExamples */
  core.Map toJson() {
    var output = new core.Map();

    if (source != null) {
      output["source"] = source.toJson();
    }
    if (text != null) {
      output["text"] = text;
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWordsExamples */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDictWordsExamplesSource {

  core.String attribution;

  core.String url;

  /** Create new DictlayerdataDictWordsExamplesSource from JSON data */
  DictlayerdataDictWordsExamplesSource.fromJson(core.Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for DictlayerdataDictWordsExamplesSource */
  core.Map toJson() {
    var output = new core.Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWordsExamplesSource */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDictWordsSenses {

  core.List<DictlayerdataDictWordsSensesConjugations> conjugations;

  core.List<DictlayerdataDictWordsSensesDefinitions> definitions;

  core.String partOfSpeech;

  core.String pronunciation;

  core.String pronunciationUrl;

  DictlayerdataDictWordsSensesSource source;

  core.String syllabification;

  core.List<DictlayerdataDictWordsSensesSynonyms> synonyms;

  /** Create new DictlayerdataDictWordsSenses from JSON data */
  DictlayerdataDictWordsSenses.fromJson(core.Map json) {
    if (json.containsKey("conjugations")) {
      conjugations = json["conjugations"].map((conjugationsItem) => new DictlayerdataDictWordsSensesConjugations.fromJson(conjugationsItem)).toList();
    }
    if (json.containsKey("definitions")) {
      definitions = json["definitions"].map((definitionsItem) => new DictlayerdataDictWordsSensesDefinitions.fromJson(definitionsItem)).toList();
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
      source = new DictlayerdataDictWordsSensesSource.fromJson(json["source"]);
    }
    if (json.containsKey("syllabification")) {
      syllabification = json["syllabification"];
    }
    if (json.containsKey("synonyms")) {
      synonyms = json["synonyms"].map((synonymsItem) => new DictlayerdataDictWordsSensesSynonyms.fromJson(synonymsItem)).toList();
    }
  }

  /** Create JSON Object for DictlayerdataDictWordsSenses */
  core.Map toJson() {
    var output = new core.Map();

    if (conjugations != null) {
      output["conjugations"] = conjugations.map((conjugationsItem) => conjugationsItem.toJson()).toList();
    }
    if (definitions != null) {
      output["definitions"] = definitions.map((definitionsItem) => definitionsItem.toJson()).toList();
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
      output["synonyms"] = synonyms.map((synonymsItem) => synonymsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWordsSenses */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDictWordsSensesConjugations {

  core.String type;

  core.String value;

  /** Create new DictlayerdataDictWordsSensesConjugations from JSON data */
  DictlayerdataDictWordsSensesConjugations.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for DictlayerdataDictWordsSensesConjugations */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWordsSensesConjugations */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDictWordsSensesDefinitions {

  core.String definition;

  core.List<DictlayerdataDictWordsSensesDefinitionsExamples> examples;

  /** Create new DictlayerdataDictWordsSensesDefinitions from JSON data */
  DictlayerdataDictWordsSensesDefinitions.fromJson(core.Map json) {
    if (json.containsKey("definition")) {
      definition = json["definition"];
    }
    if (json.containsKey("examples")) {
      examples = json["examples"].map((examplesItem) => new DictlayerdataDictWordsSensesDefinitionsExamples.fromJson(examplesItem)).toList();
    }
  }

  /** Create JSON Object for DictlayerdataDictWordsSensesDefinitions */
  core.Map toJson() {
    var output = new core.Map();

    if (definition != null) {
      output["definition"] = definition;
    }
    if (examples != null) {
      output["examples"] = examples.map((examplesItem) => examplesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWordsSensesDefinitions */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDictWordsSensesDefinitionsExamples {

  DictlayerdataDictWordsSensesDefinitionsExamplesSource source;

  core.String text;

  /** Create new DictlayerdataDictWordsSensesDefinitionsExamples from JSON data */
  DictlayerdataDictWordsSensesDefinitionsExamples.fromJson(core.Map json) {
    if (json.containsKey("source")) {
      source = new DictlayerdataDictWordsSensesDefinitionsExamplesSource.fromJson(json["source"]);
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
  }

  /** Create JSON Object for DictlayerdataDictWordsSensesDefinitionsExamples */
  core.Map toJson() {
    var output = new core.Map();

    if (source != null) {
      output["source"] = source.toJson();
    }
    if (text != null) {
      output["text"] = text;
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWordsSensesDefinitionsExamples */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDictWordsSensesDefinitionsExamplesSource {

  core.String attribution;

  core.String url;

  /** Create new DictlayerdataDictWordsSensesDefinitionsExamplesSource from JSON data */
  DictlayerdataDictWordsSensesDefinitionsExamplesSource.fromJson(core.Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for DictlayerdataDictWordsSensesDefinitionsExamplesSource */
  core.Map toJson() {
    var output = new core.Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWordsSensesDefinitionsExamplesSource */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDictWordsSensesSource {

  core.String attribution;

  core.String url;

  /** Create new DictlayerdataDictWordsSensesSource from JSON data */
  DictlayerdataDictWordsSensesSource.fromJson(core.Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for DictlayerdataDictWordsSensesSource */
  core.Map toJson() {
    var output = new core.Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWordsSensesSource */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDictWordsSensesSynonyms {

  DictlayerdataDictWordsSensesSynonymsSource source;

  core.String text;

  /** Create new DictlayerdataDictWordsSensesSynonyms from JSON data */
  DictlayerdataDictWordsSensesSynonyms.fromJson(core.Map json) {
    if (json.containsKey("source")) {
      source = new DictlayerdataDictWordsSensesSynonymsSource.fromJson(json["source"]);
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
  }

  /** Create JSON Object for DictlayerdataDictWordsSensesSynonyms */
  core.Map toJson() {
    var output = new core.Map();

    if (source != null) {
      output["source"] = source.toJson();
    }
    if (text != null) {
      output["text"] = text;
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWordsSensesSynonyms */
  core.String toString() => JSON.encode(this.toJson());

}

class DictlayerdataDictWordsSensesSynonymsSource {

  core.String attribution;

  core.String url;

  /** Create new DictlayerdataDictWordsSensesSynonymsSource from JSON data */
  DictlayerdataDictWordsSensesSynonymsSource.fromJson(core.Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for DictlayerdataDictWordsSensesSynonymsSource */
  core.Map toJson() {
    var output = new core.Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWordsSensesSynonymsSource */
  core.String toString() => JSON.encode(this.toJson());

}

/** The words with different meanings but not related words, e.g. "go" (game) and "go" (verb). */
class DictlayerdataDictWordsSource {

  core.String attribution;

  core.String url;

  /** Create new DictlayerdataDictWordsSource from JSON data */
  DictlayerdataDictWordsSource.fromJson(core.Map json) {
    if (json.containsKey("attribution")) {
      attribution = json["attribution"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for DictlayerdataDictWordsSource */
  core.Map toJson() {
    var output = new core.Map();

    if (attribution != null) {
      output["attribution"] = attribution;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of DictlayerdataDictWordsSource */
  core.String toString() => JSON.encode(this.toJson());

}

class DownloadAccessRestriction {

  /** If restricted, whether access is granted for this (user, device, volume). */
  core.bool deviceAllowed;

  /** If restricted, the number of content download licenses already acquired (including the requesting client, if licensed). */
  core.int downloadsAcquired;

  /** If deviceAllowed, whether access was just acquired with this request. */
  core.bool justAcquired;

  /** Resource type. */
  core.String kind;

  /** If restricted, the maximum number of content download licenses for this volume. */
  core.int maxDownloadDevices;

  /** Error/warning message. */
  core.String message;

  /** Client nonce for verification. Download access and client-validation only. */
  core.String nonce;

  /** Error/warning reason code. Additional codes may be added in the future. 0 OK 100 ACCESS_DENIED_PUBLISHER_LIMIT 101 ACCESS_DENIED_LIMIT 200 WARNING_USED_LAST_ACCESS */
  core.String reasonCode;

  /** Whether this volume has any download access restrictions. */
  core.bool restricted;

  /** Response signature. */
  core.String signature;

  /** Client app identifier for verification. Download access and client-validation only. */
  core.String source;

  /** Identifies the volume for which this entry applies. */
  core.String volumeId;

  /** Create new DownloadAccessRestriction from JSON data */
  DownloadAccessRestriction.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class DownloadAccesses {

  /** A list of download access responses. */
  core.List<DownloadAccessRestriction> downloadAccessList;

  /** Resource type. */
  core.String kind;

  /** Create new DownloadAccesses from JSON data */
  DownloadAccesses.fromJson(core.Map json) {
    if (json.containsKey("downloadAccessList")) {
      downloadAccessList = json["downloadAccessList"].map((downloadAccessListItem) => new DownloadAccessRestriction.fromJson(downloadAccessListItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for DownloadAccesses */
  core.Map toJson() {
    var output = new core.Map();

    if (downloadAccessList != null) {
      output["downloadAccessList"] = downloadAccessList.map((downloadAccessListItem) => downloadAccessListItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of DownloadAccesses */
  core.String toString() => JSON.encode(this.toJson());

}

class Geolayerdata {

  GeolayerdataCommon common;

  GeolayerdataGeo geo;

  core.String kind;

  /** Create new Geolayerdata from JSON data */
  Geolayerdata.fromJson(core.Map json) {
    if (json.containsKey("common")) {
      common = new GeolayerdataCommon.fromJson(json["common"]);
    }
    if (json.containsKey("geo")) {
      geo = new GeolayerdataGeo.fromJson(json["geo"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Geolayerdata */
  core.Map toJson() {
    var output = new core.Map();

    if (common != null) {
      output["common"] = common.toJson();
    }
    if (geo != null) {
      output["geo"] = geo.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Geolayerdata */
  core.String toString() => JSON.encode(this.toJson());

}

class GeolayerdataCommon {

  /** The language of the information url and description. */
  core.String lang;

  /** The URL for the preview image information. */
  core.String previewImageUrl;

  /** The description for this location. */
  core.String snippet;

  /** The URL for information for this location. Ex: wikipedia link. */
  core.String snippetUrl;

  /** The display title and localized canonical name to use when searching for this entity on Google search. */
  core.String title;

  /** Create new GeolayerdataCommon from JSON data */
  GeolayerdataCommon.fromJson(core.Map json) {
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

  /** Create JSON Object for GeolayerdataCommon */
  core.Map toJson() {
    var output = new core.Map();

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

  /** Return String representation of GeolayerdataCommon */
  core.String toString() => JSON.encode(this.toJson());

}

class GeolayerdataGeo {

  /** The boundary of the location as a set of loops containing pairs of latitude, longitude coordinates. */
  core.List<core.List<GeolayerdataGeoBoundary>> boundary;

  /** The cache policy active for this data. EX: UNRESTRICTED, RESTRICTED, NEVER */
  core.String cachePolicy;

  /** The country code of the location. */
  core.String countryCode;

  /** The latitude of the location. */
  core.num latitude;

  /** The longitude of the location. */
  core.num longitude;

  /** The type of map that should be used for this location. EX: HYBRID, ROADMAP, SATELLITE, TERRAIN */
  core.String mapType;

  /** The viewport for showing this location. This is a latitude, longitude rectangle. */
  GeolayerdataGeoViewport viewport;

  /** The Zoom level to use for the map. Zoom levels between 0 (the lowest zoom level, in which the entire world can be seen on one map) to 21+ (down to individual buildings). See: https://developers.google.com/maps/documentation/staticmaps/#Zoomlevels */
  core.int zoom;

  /** Create new GeolayerdataGeo from JSON data */
  GeolayerdataGeo.fromJson(core.Map json) {
    if (json.containsKey("boundary")) {
      boundary = json["boundary"].map((boundaryItem) => boundaryItem.map((boundaryItem2) => new GeolayerdataGeoBoundary.fromJson(boundaryItem2)).toList()).toList();
    }
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
      viewport = new GeolayerdataGeoViewport.fromJson(json["viewport"]);
    }
    if (json.containsKey("zoom")) {
      zoom = json["zoom"];
    }
  }

  /** Create JSON Object for GeolayerdataGeo */
  core.Map toJson() {
    var output = new core.Map();

    if (boundary != null) {
      output["boundary"] = boundary.map((boundaryItem) => boundaryItem.map((boundaryItem2) => boundaryItem2.toJson()).toList()).toList();
    }
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

  /** Return String representation of GeolayerdataGeo */
  core.String toString() => JSON.encode(this.toJson());

}

class GeolayerdataGeoBoundary {

  core.int latitude;

  core.int longitude;

  /** Create new GeolayerdataGeoBoundary from JSON data */
  GeolayerdataGeoBoundary.fromJson(core.Map json) {
    if (json.containsKey("latitude")) {
      latitude = json["latitude"];
    }
    if (json.containsKey("longitude")) {
      longitude = json["longitude"];
    }
  }

  /** Create JSON Object for GeolayerdataGeoBoundary */
  core.Map toJson() {
    var output = new core.Map();

    if (latitude != null) {
      output["latitude"] = latitude;
    }
    if (longitude != null) {
      output["longitude"] = longitude;
    }

    return output;
  }

  /** Return String representation of GeolayerdataGeoBoundary */
  core.String toString() => JSON.encode(this.toJson());

}

/** The viewport for showing this location. This is a latitude, longitude rectangle. */
class GeolayerdataGeoViewport {

  GeolayerdataGeoViewportHi hi;

  GeolayerdataGeoViewportLo lo;

  /** Create new GeolayerdataGeoViewport from JSON data */
  GeolayerdataGeoViewport.fromJson(core.Map json) {
    if (json.containsKey("hi")) {
      hi = new GeolayerdataGeoViewportHi.fromJson(json["hi"]);
    }
    if (json.containsKey("lo")) {
      lo = new GeolayerdataGeoViewportLo.fromJson(json["lo"]);
    }
  }

  /** Create JSON Object for GeolayerdataGeoViewport */
  core.Map toJson() {
    var output = new core.Map();

    if (hi != null) {
      output["hi"] = hi.toJson();
    }
    if (lo != null) {
      output["lo"] = lo.toJson();
    }

    return output;
  }

  /** Return String representation of GeolayerdataGeoViewport */
  core.String toString() => JSON.encode(this.toJson());

}

class GeolayerdataGeoViewportHi {

  core.num latitude;

  core.num longitude;

  /** Create new GeolayerdataGeoViewportHi from JSON data */
  GeolayerdataGeoViewportHi.fromJson(core.Map json) {
    if (json.containsKey("latitude")) {
      latitude = json["latitude"];
    }
    if (json.containsKey("longitude")) {
      longitude = json["longitude"];
    }
  }

  /** Create JSON Object for GeolayerdataGeoViewportHi */
  core.Map toJson() {
    var output = new core.Map();

    if (latitude != null) {
      output["latitude"] = latitude;
    }
    if (longitude != null) {
      output["longitude"] = longitude;
    }

    return output;
  }

  /** Return String representation of GeolayerdataGeoViewportHi */
  core.String toString() => JSON.encode(this.toJson());

}

class GeolayerdataGeoViewportLo {

  core.num latitude;

  core.num longitude;

  /** Create new GeolayerdataGeoViewportLo from JSON data */
  GeolayerdataGeoViewportLo.fromJson(core.Map json) {
    if (json.containsKey("latitude")) {
      latitude = json["latitude"];
    }
    if (json.containsKey("longitude")) {
      longitude = json["longitude"];
    }
  }

  /** Create JSON Object for GeolayerdataGeoViewportLo */
  core.Map toJson() {
    var output = new core.Map();

    if (latitude != null) {
      output["latitude"] = latitude;
    }
    if (longitude != null) {
      output["longitude"] = longitude;
    }

    return output;
  }

  /** Return String representation of GeolayerdataGeoViewportLo */
  core.String toString() => JSON.encode(this.toJson());

}

class Layersummaries {

  /** A list of layer summary items. */
  core.List<Layersummary> items;

  /** Resource type. */
  core.String kind;

  /** The total number of layer summaries found. */
  core.int totalItems;

  /** Create new Layersummaries from JSON data */
  Layersummaries.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Layersummary.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for Layersummaries */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

class Layersummary {

  /** The number of annotations for this layer. */
  core.int annotationCount;

  /** The list of annotation types contained for this layer. */
  core.List<core.String> annotationTypes;

  /** Link to get data for this annotation. */
  core.String annotationsDataLink;

  /** The link to get the annotations for this layer. */
  core.String annotationsLink;

  /** The content version this resource is for. */
  core.String contentVersion;

  /** The number of data items for this layer. */
  core.int dataCount;

  /** Unique id of this layer summary. */
  core.String id;

  /** Resource Type */
  core.String kind;

  /** The layer id for this summary. */
  core.String layerId;

  /** URL to this resource. */
  core.String selfLink;

  /** Timestamp for the last time an item in this layer was updated. (RFC 3339 UTC date-time format). */
  core.String updated;

  /** The current version of this layer's volume annotations. Note that this version applies only to the data in the books.layers.volumeAnnotations.* responses. The actual annotation data is versioned separately. */
  core.String volumeAnnotationsVersion;

  /** The volume id this resource is for. */
  core.String volumeId;

  /** Create new Layersummary from JSON data */
  Layersummary.fromJson(core.Map json) {
    if (json.containsKey("annotationCount")) {
      annotationCount = json["annotationCount"];
    }
    if (json.containsKey("annotationTypes")) {
      annotationTypes = json["annotationTypes"].toList();
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
  core.Map toJson() {
    var output = new core.Map();

    if (annotationCount != null) {
      output["annotationCount"] = annotationCount;
    }
    if (annotationTypes != null) {
      output["annotationTypes"] = annotationTypes.toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

class ReadingPosition {

  /** Position in an EPUB as a CFI. */
  core.String epubCfiPosition;

  /** Position in a volume for image-based content. */
  core.String gbImagePosition;

  /** Position in a volume for text-based content. */
  core.String gbTextPosition;

  /** Resource type for a reading position. */
  core.String kind;

  /** Position in a PDF file. */
  core.String pdfPosition;

  /** Timestamp when this reading position was last updated (formatted UTC timestamp with millisecond resolution). */
  core.String updated;

  /** Volume id associated with this reading position. */
  core.String volumeId;

  /** Create new ReadingPosition from JSON data */
  ReadingPosition.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class RequestAccess {

  /** A concurrent access response. */
  ConcurrentAccessRestriction concurrentAccess;

  /** A download access response. */
  DownloadAccessRestriction downloadAccess;

  /** Resource type. */
  core.String kind;

  /** Create new RequestAccess from JSON data */
  RequestAccess.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class Review {

  /** Author of this review. */
  ReviewAuthor author;

  /** Review text. */
  core.String content;

  /** Date of this review. */
  core.String date;

  /** URL for the full review text, for reviews gathered from the web. */
  core.String fullTextUrl;

  /** Resource type for a review. */
  core.String kind;

  /** Star rating for this review. Possible values are ONE, TWO, THREE, FOUR, FIVE or NOT_RATED. */
  core.String rating;

  /** Information regarding the source of this review, when the review is not from a Google Books user. */
  ReviewSource source;

  /** Title for this review. */
  core.String title;

  /** Source type for this review. Possible values are EDITORIAL, WEB_USER or GOOGLE_USER. */
  core.String type;

  /** Volume that this review is for. */
  core.String volumeId;

  /** Create new Review from JSON data */
  Review.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** Author of this review. */
class ReviewAuthor {

  /** Name of this person. */
  core.String displayName;

  /** Create new ReviewAuthor from JSON data */
  ReviewAuthor.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
  }

  /** Create JSON Object for ReviewAuthor */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }

    return output;
  }

  /** Return String representation of ReviewAuthor */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information regarding the source of this review, when the review is not from a Google Books user. */
class ReviewSource {

  /** Name of the source. */
  core.String description;

  /** Extra text about the source of the review. */
  core.String extraDescription;

  /** URL of the source of the review. */
  core.String url;

  /** Create new ReviewSource from JSON data */
  ReviewSource.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class Volume {

  /** Any information about a volume related to reading or obtaining that volume text. This information can depend on country (books may be public domain in one country but not in another, e.g.). */
  VolumeAccessInfo accessInfo;

  /** Opaque identifier for a specific version of a volume resource. (In LITE projection) */
  core.String etag;

  /** Unique identifier for a volume. (In LITE projection.) */
  core.String id;

  /** Resource type for a volume. (In LITE projection.) */
  core.String kind;

  /** What layers exist in this volume and high level information about them. */
  VolumeLayerInfo layerInfo;

  /** Recommendation related information for this volume. */
  VolumeRecommendedInfo recommendedInfo;

  /** Any information about a volume related to the eBookstore and/or purchaseability. This information can depend on the country where the request originates from (i.e. books may not be for sale in certain countries). */
  VolumeSaleInfo saleInfo;

  /** Search result information related to this volume. */
  VolumeSearchInfo searchInfo;

  /** URL to this resource. (In LITE projection.) */
  core.String selfLink;

  /** User specific information related to this volume. (e.g. page this user last read or whether they purchased this book) */
  VolumeUserInfo userInfo;

  /** General volume information. */
  VolumeVolumeInfo volumeInfo;

  /** Create new Volume from JSON data */
  Volume.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** Any information about a volume related to reading or obtaining that volume text. This information can depend on country (books may be public domain in one country but not in another, e.g.). */
class VolumeAccessInfo {

  /** Combines the access and viewability of this volume into a single status field for this user. Values can be FULL_PURCHASED, FULL_PUBLIC_DOMAIN, SAMPLE or NONE. (In LITE projection.) */
  core.String accessViewStatus;

  /** The two-letter ISO_3166-1 country code for which this access information is valid. (In LITE projection.) */
  core.String country;

  /** Information about a volume's download license access restrictions. */
  DownloadAccessRestriction downloadAccess;

  /** Whether this volume can be embedded in a viewport using the Embedded Viewer API. */
  core.bool embeddable;

  /** Information about epub content. (In LITE projection.) */
  VolumeAccessInfoEpub epub;

  /** Whether this volume requires that the client explicitly request offline download license rather than have it done automatically when loading the content, if the client supports it. */
  core.bool explicitOfflineLicenseManagement;

  /** Information about pdf content. (In LITE projection.) */
  VolumeAccessInfoPdf pdf;

  /** Whether or not this book is public domain in the country listed above. */
  core.bool publicDomain;

  /** Whether text-to-speech is permitted for this volume. Values can be ALLOWED, ALLOWED_FOR_ACCESSIBILITY, or NOT_ALLOWED. */
  core.String textToSpeechPermission;

  /** For ordered but not yet processed orders, we give a URL that can be used to go to the appropriate Google Wallet page. */
  core.String viewOrderUrl;

  /** The read access of a volume. Possible values are PARTIAL, ALL_PAGES, NO_PAGES or UNKNOWN. This value depends on the country listed above. A value of PARTIAL means that the publisher has allowed some portion of the volume to be viewed publicly, without purchase. This can apply to eBooks as well as non-eBooks. Public domain books will always have a value of ALL_PAGES. */
  core.String viewability;

  /** URL to read this volume on the Google Books site. Link will not allow users to read non-viewable volumes. */
  core.String webReaderLink;

  /** Create new VolumeAccessInfo from JSON data */
  VolumeAccessInfo.fromJson(core.Map json) {
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
    if (json.containsKey("explicitOfflineLicenseManagement")) {
      explicitOfflineLicenseManagement = json["explicitOfflineLicenseManagement"];
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
  core.Map toJson() {
    var output = new core.Map();

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
    if (explicitOfflineLicenseManagement != null) {
      output["explicitOfflineLicenseManagement"] = explicitOfflineLicenseManagement;
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Information about epub content. (In LITE projection.) */
class VolumeAccessInfoEpub {

  /** URL to retrieve ACS token for epub download. (In LITE projection.) */
  core.String acsTokenLink;

  /** URL to download epub. (In LITE projection.) */
  core.String downloadLink;

  /** Is a flowing text epub available either as public domain or for purchase. (In LITE projection.) */
  core.bool isAvailable;

  /** Create new VolumeAccessInfoEpub from JSON data */
  VolumeAccessInfoEpub.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** Information about pdf content. (In LITE projection.) */
class VolumeAccessInfoPdf {

  /** URL to retrieve ACS token for pdf download. (In LITE projection.) */
  core.String acsTokenLink;

  /** URL to download pdf. (In LITE projection.) */
  core.String downloadLink;

  /** Is a scanned image pdf available either as public domain or for purchase. (In LITE projection.) */
  core.bool isAvailable;

  /** Create new VolumeAccessInfoPdf from JSON data */
  VolumeAccessInfoPdf.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** What layers exist in this volume and high level information about them. */
class VolumeLayerInfo {

  /** A layer should appear here if and only if the layer exists for this book. */
  core.List<VolumeLayerInfoLayers> layers;

  /** Create new VolumeLayerInfo from JSON data */
  VolumeLayerInfo.fromJson(core.Map json) {
    if (json.containsKey("layers")) {
      layers = json["layers"].map((layersItem) => new VolumeLayerInfoLayers.fromJson(layersItem)).toList();
    }
  }

  /** Create JSON Object for VolumeLayerInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (layers != null) {
      output["layers"] = layers.map((layersItem) => layersItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of VolumeLayerInfo */
  core.String toString() => JSON.encode(this.toJson());

}

class VolumeLayerInfoLayers {

  /** The layer id of this layer (e.g. "geo"). */
  core.String layerId;

  /** The current version of this layer's volume annotations. Note that this version applies only to the data in the books.layers.volumeAnnotations.* responses. The actual annotation data is versioned separately. */
  core.String volumeAnnotationsVersion;

  /** Create new VolumeLayerInfoLayers from JSON data */
  VolumeLayerInfoLayers.fromJson(core.Map json) {
    if (json.containsKey("layerId")) {
      layerId = json["layerId"];
    }
    if (json.containsKey("volumeAnnotationsVersion")) {
      volumeAnnotationsVersion = json["volumeAnnotationsVersion"];
    }
  }

  /** Create JSON Object for VolumeLayerInfoLayers */
  core.Map toJson() {
    var output = new core.Map();

    if (layerId != null) {
      output["layerId"] = layerId;
    }
    if (volumeAnnotationsVersion != null) {
      output["volumeAnnotationsVersion"] = volumeAnnotationsVersion;
    }

    return output;
  }

  /** Return String representation of VolumeLayerInfoLayers */
  core.String toString() => JSON.encode(this.toJson());

}

/** Recommendation related information for this volume. */
class VolumeRecommendedInfo {

  /** A text explaining why this volume is recommended. */
  core.String explanation;

  /** Create new VolumeRecommendedInfo from JSON data */
  VolumeRecommendedInfo.fromJson(core.Map json) {
    if (json.containsKey("explanation")) {
      explanation = json["explanation"];
    }
  }

  /** Create JSON Object for VolumeRecommendedInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (explanation != null) {
      output["explanation"] = explanation;
    }

    return output;
  }

  /** Return String representation of VolumeRecommendedInfo */
  core.String toString() => JSON.encode(this.toJson());

}

/** Any information about a volume related to the eBookstore and/or purchaseability. This information can depend on the country where the request originates from (i.e. books may not be for sale in certain countries). */
class VolumeSaleInfo {

  /** URL to purchase this volume on the Google Books site. (In LITE projection) */
  core.String buyLink;

  /** The two-letter ISO_3166-1 country code for which this sale information is valid. (In LITE projection.) */
  core.String country;

  /** Whether or not this volume is an eBook (can be added to the My eBooks shelf). */
  core.bool isEbook;

  /** Suggested retail price. (In LITE projection.) */
  VolumeSaleInfoListPrice listPrice;

  /** Offers available for this volume (sales and rentals). */
  core.List<VolumeSaleInfoOffers> offers;

  /** The date on which this book is available for sale. */
  core.String onSaleDate;

  /** The actual selling price of the book. This is the same as the suggested retail or list price unless there are offers or discounts on this volume. (In LITE projection.) */
  VolumeSaleInfoRetailPrice retailPrice;

  /** Whether or not this book is available for sale or offered for free in the Google eBookstore for the country listed above. Possible values are FOR_SALE, FOR_RENTAL_ONLY, FOR_SALE_AND_RENTAL, FREE, NOT_FOR_SALE, or FOR_PREORDER. */
  core.String saleability;

  /** Create new VolumeSaleInfo from JSON data */
  VolumeSaleInfo.fromJson(core.Map json) {
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
    if (json.containsKey("offers")) {
      offers = json["offers"].map((offersItem) => new VolumeSaleInfoOffers.fromJson(offersItem)).toList();
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
  core.Map toJson() {
    var output = new core.Map();

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
    if (offers != null) {
      output["offers"] = offers.map((offersItem) => offersItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Suggested retail price. (In LITE projection.) */
class VolumeSaleInfoListPrice {

  /** Amount in the currency listed below. (In LITE projection.) */
  core.num amount;

  /** An ISO 4217, three-letter currency code. (In LITE projection.) */
  core.String currencyCode;

  /** Create new VolumeSaleInfoListPrice from JSON data */
  VolumeSaleInfoListPrice.fromJson(core.Map json) {
    if (json.containsKey("amount")) {
      amount = json["amount"];
    }
    if (json.containsKey("currencyCode")) {
      currencyCode = json["currencyCode"];
    }
  }

  /** Create JSON Object for VolumeSaleInfoListPrice */
  core.Map toJson() {
    var output = new core.Map();

    if (amount != null) {
      output["amount"] = amount;
    }
    if (currencyCode != null) {
      output["currencyCode"] = currencyCode;
    }

    return output;
  }

  /** Return String representation of VolumeSaleInfoListPrice */
  core.String toString() => JSON.encode(this.toJson());

}

class VolumeSaleInfoOffers {

  /** The finsky offer type (e.g., PURCHASE=0 RENTAL=3) */
  core.int finskyOfferType;

  /** Offer list (=undiscounted) price in Micros. */
  VolumeSaleInfoOffersListPrice listPrice;

  /** The rental duration (for rental offers only). */
  VolumeSaleInfoOffersRentalDuration rentalDuration;

  /** Offer retail (=discounted) price in Micros */
  VolumeSaleInfoOffersRetailPrice retailPrice;

  /** Create new VolumeSaleInfoOffers from JSON data */
  VolumeSaleInfoOffers.fromJson(core.Map json) {
    if (json.containsKey("finskyOfferType")) {
      finskyOfferType = json["finskyOfferType"];
    }
    if (json.containsKey("listPrice")) {
      listPrice = new VolumeSaleInfoOffersListPrice.fromJson(json["listPrice"]);
    }
    if (json.containsKey("rentalDuration")) {
      rentalDuration = new VolumeSaleInfoOffersRentalDuration.fromJson(json["rentalDuration"]);
    }
    if (json.containsKey("retailPrice")) {
      retailPrice = new VolumeSaleInfoOffersRetailPrice.fromJson(json["retailPrice"]);
    }
  }

  /** Create JSON Object for VolumeSaleInfoOffers */
  core.Map toJson() {
    var output = new core.Map();

    if (finskyOfferType != null) {
      output["finskyOfferType"] = finskyOfferType;
    }
    if (listPrice != null) {
      output["listPrice"] = listPrice.toJson();
    }
    if (rentalDuration != null) {
      output["rentalDuration"] = rentalDuration.toJson();
    }
    if (retailPrice != null) {
      output["retailPrice"] = retailPrice.toJson();
    }

    return output;
  }

  /** Return String representation of VolumeSaleInfoOffers */
  core.String toString() => JSON.encode(this.toJson());

}

/** Offer list (=undiscounted) price in Micros. */
class VolumeSaleInfoOffersListPrice {

  core.num amountInMicros;

  core.String currencyCode;

  /** Create new VolumeSaleInfoOffersListPrice from JSON data */
  VolumeSaleInfoOffersListPrice.fromJson(core.Map json) {
    if (json.containsKey("amountInMicros")) {
      amountInMicros = json["amountInMicros"];
    }
    if (json.containsKey("currencyCode")) {
      currencyCode = json["currencyCode"];
    }
  }

  /** Create JSON Object for VolumeSaleInfoOffersListPrice */
  core.Map toJson() {
    var output = new core.Map();

    if (amountInMicros != null) {
      output["amountInMicros"] = amountInMicros;
    }
    if (currencyCode != null) {
      output["currencyCode"] = currencyCode;
    }

    return output;
  }

  /** Return String representation of VolumeSaleInfoOffersListPrice */
  core.String toString() => JSON.encode(this.toJson());

}

/** The rental duration (for rental offers only). */
class VolumeSaleInfoOffersRentalDuration {

  core.num count;

  core.String unit;

  /** Create new VolumeSaleInfoOffersRentalDuration from JSON data */
  VolumeSaleInfoOffersRentalDuration.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("unit")) {
      unit = json["unit"];
    }
  }

  /** Create JSON Object for VolumeSaleInfoOffersRentalDuration */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (unit != null) {
      output["unit"] = unit;
    }

    return output;
  }

  /** Return String representation of VolumeSaleInfoOffersRentalDuration */
  core.String toString() => JSON.encode(this.toJson());

}

/** Offer retail (=discounted) price in Micros */
class VolumeSaleInfoOffersRetailPrice {

  core.num amountInMicros;

  core.String currencyCode;

  /** Create new VolumeSaleInfoOffersRetailPrice from JSON data */
  VolumeSaleInfoOffersRetailPrice.fromJson(core.Map json) {
    if (json.containsKey("amountInMicros")) {
      amountInMicros = json["amountInMicros"];
    }
    if (json.containsKey("currencyCode")) {
      currencyCode = json["currencyCode"];
    }
  }

  /** Create JSON Object for VolumeSaleInfoOffersRetailPrice */
  core.Map toJson() {
    var output = new core.Map();

    if (amountInMicros != null) {
      output["amountInMicros"] = amountInMicros;
    }
    if (currencyCode != null) {
      output["currencyCode"] = currencyCode;
    }

    return output;
  }

  /** Return String representation of VolumeSaleInfoOffersRetailPrice */
  core.String toString() => JSON.encode(this.toJson());

}

/** The actual selling price of the book. This is the same as the suggested retail or list price unless there are offers or discounts on this volume. (In LITE projection.) */
class VolumeSaleInfoRetailPrice {

  /** Amount in the currency listed below. (In LITE projection.) */
  core.num amount;

  /** An ISO 4217, three-letter currency code. (In LITE projection.) */
  core.String currencyCode;

  /** Create new VolumeSaleInfoRetailPrice from JSON data */
  VolumeSaleInfoRetailPrice.fromJson(core.Map json) {
    if (json.containsKey("amount")) {
      amount = json["amount"];
    }
    if (json.containsKey("currencyCode")) {
      currencyCode = json["currencyCode"];
    }
  }

  /** Create JSON Object for VolumeSaleInfoRetailPrice */
  core.Map toJson() {
    var output = new core.Map();

    if (amount != null) {
      output["amount"] = amount;
    }
    if (currencyCode != null) {
      output["currencyCode"] = currencyCode;
    }

    return output;
  }

  /** Return String representation of VolumeSaleInfoRetailPrice */
  core.String toString() => JSON.encode(this.toJson());

}

/** Search result information related to this volume. */
class VolumeSearchInfo {

  /** A text snippet containing the search query. */
  core.String textSnippet;

  /** Create new VolumeSearchInfo from JSON data */
  VolumeSearchInfo.fromJson(core.Map json) {
    if (json.containsKey("textSnippet")) {
      textSnippet = json["textSnippet"];
    }
  }

  /** Create JSON Object for VolumeSearchInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (textSnippet != null) {
      output["textSnippet"] = textSnippet;
    }

    return output;
  }

  /** Return String representation of VolumeSearchInfo */
  core.String toString() => JSON.encode(this.toJson());

}

/** User specific information related to this volume. (e.g. page this user last read or whether they purchased this book) */
class VolumeUserInfo {

  /** Copy/Paste accounting information. */
  VolumeUserInfoCopy copy;

  /** Whether or not this volume is currently in "my books." */
  core.bool isInMyBooks;

  /** Whether or not this volume was pre-ordered by the authenticated user making the request. (In LITE projection.) */
  core.bool isPreordered;

  /** Whether or not this volume was purchased by the authenticated user making the request. (In LITE projection.) */
  core.bool isPurchased;

  /** Whether or not this volume was user uploaded. */
  core.bool isUploaded;

  /** The user's current reading position in the volume, if one is available. (In LITE projection.) */
  ReadingPosition readingPosition;

  /** Period during this book is/was a valid rental. */
  VolumeUserInfoRentalPeriod rentalPeriod;

  /** Whether this book is an active or an expired rental. */
  core.String rentalState;

  /** This user's review of this volume, if one exists. */
  Review review;

  /** Timestamp when this volume was last modified by a user action, such as a reading position update, volume purchase or writing a review. (RFC 3339 UTC date-time format). */
  core.String updated;

  VolumeUserInfoUserUploadedVolumeInfo userUploadedVolumeInfo;

  /** Create new VolumeUserInfo from JSON data */
  VolumeUserInfo.fromJson(core.Map json) {
    if (json.containsKey("copy")) {
      copy = new VolumeUserInfoCopy.fromJson(json["copy"]);
    }
    if (json.containsKey("isInMyBooks")) {
      isInMyBooks = json["isInMyBooks"];
    }
    if (json.containsKey("isPreordered")) {
      isPreordered = json["isPreordered"];
    }
    if (json.containsKey("isPurchased")) {
      isPurchased = json["isPurchased"];
    }
    if (json.containsKey("isUploaded")) {
      isUploaded = json["isUploaded"];
    }
    if (json.containsKey("readingPosition")) {
      readingPosition = new ReadingPosition.fromJson(json["readingPosition"]);
    }
    if (json.containsKey("rentalPeriod")) {
      rentalPeriod = new VolumeUserInfoRentalPeriod.fromJson(json["rentalPeriod"]);
    }
    if (json.containsKey("rentalState")) {
      rentalState = json["rentalState"];
    }
    if (json.containsKey("review")) {
      review = new Review.fromJson(json["review"]);
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("userUploadedVolumeInfo")) {
      userUploadedVolumeInfo = new VolumeUserInfoUserUploadedVolumeInfo.fromJson(json["userUploadedVolumeInfo"]);
    }
  }

  /** Create JSON Object for VolumeUserInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (copy != null) {
      output["copy"] = copy.toJson();
    }
    if (isInMyBooks != null) {
      output["isInMyBooks"] = isInMyBooks;
    }
    if (isPreordered != null) {
      output["isPreordered"] = isPreordered;
    }
    if (isPurchased != null) {
      output["isPurchased"] = isPurchased;
    }
    if (isUploaded != null) {
      output["isUploaded"] = isUploaded;
    }
    if (readingPosition != null) {
      output["readingPosition"] = readingPosition.toJson();
    }
    if (rentalPeriod != null) {
      output["rentalPeriod"] = rentalPeriod.toJson();
    }
    if (rentalState != null) {
      output["rentalState"] = rentalState;
    }
    if (review != null) {
      output["review"] = review.toJson();
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (userUploadedVolumeInfo != null) {
      output["userUploadedVolumeInfo"] = userUploadedVolumeInfo.toJson();
    }

    return output;
  }

  /** Return String representation of VolumeUserInfo */
  core.String toString() => JSON.encode(this.toJson());

}

/** Copy/Paste accounting information. */
class VolumeUserInfoCopy {

  core.int allowedCharacterCount;

  core.String limitType;

  core.int remainingCharacterCount;

  core.String updated;

  /** Create new VolumeUserInfoCopy from JSON data */
  VolumeUserInfoCopy.fromJson(core.Map json) {
    if (json.containsKey("allowedCharacterCount")) {
      allowedCharacterCount = json["allowedCharacterCount"];
    }
    if (json.containsKey("limitType")) {
      limitType = json["limitType"];
    }
    if (json.containsKey("remainingCharacterCount")) {
      remainingCharacterCount = json["remainingCharacterCount"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for VolumeUserInfoCopy */
  core.Map toJson() {
    var output = new core.Map();

    if (allowedCharacterCount != null) {
      output["allowedCharacterCount"] = allowedCharacterCount;
    }
    if (limitType != null) {
      output["limitType"] = limitType;
    }
    if (remainingCharacterCount != null) {
      output["remainingCharacterCount"] = remainingCharacterCount;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of VolumeUserInfoCopy */
  core.String toString() => JSON.encode(this.toJson());

}

/** Period during this book is/was a valid rental. */
class VolumeUserInfoRentalPeriod {

  core.int endUtcSec;

  core.int startUtcSec;

  /** Create new VolumeUserInfoRentalPeriod from JSON data */
  VolumeUserInfoRentalPeriod.fromJson(core.Map json) {
    if (json.containsKey("endUtcSec")) {
      endUtcSec = (json["endUtcSec"] is core.String) ? core.int.parse(json["endUtcSec"]) : json["endUtcSec"];
    }
    if (json.containsKey("startUtcSec")) {
      startUtcSec = (json["startUtcSec"] is core.String) ? core.int.parse(json["startUtcSec"]) : json["startUtcSec"];
    }
  }

  /** Create JSON Object for VolumeUserInfoRentalPeriod */
  core.Map toJson() {
    var output = new core.Map();

    if (endUtcSec != null) {
      output["endUtcSec"] = endUtcSec;
    }
    if (startUtcSec != null) {
      output["startUtcSec"] = startUtcSec;
    }

    return output;
  }

  /** Return String representation of VolumeUserInfoRentalPeriod */
  core.String toString() => JSON.encode(this.toJson());

}

class VolumeUserInfoUserUploadedVolumeInfo {

  core.String processingState;

  /** Create new VolumeUserInfoUserUploadedVolumeInfo from JSON data */
  VolumeUserInfoUserUploadedVolumeInfo.fromJson(core.Map json) {
    if (json.containsKey("processingState")) {
      processingState = json["processingState"];
    }
  }

  /** Create JSON Object for VolumeUserInfoUserUploadedVolumeInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (processingState != null) {
      output["processingState"] = processingState;
    }

    return output;
  }

  /** Return String representation of VolumeUserInfoUserUploadedVolumeInfo */
  core.String toString() => JSON.encode(this.toJson());

}

/** General volume information. */
class VolumeVolumeInfo {

  /** The names of the authors and/or editors for this volume. (In LITE projection) */
  core.List<core.String> authors;

  /** The mean review rating for this volume. (min = 1.0, max = 5.0) */
  core.num averageRating;

  /** Canonical URL for a volume. (In LITE projection.) */
  core.String canonicalVolumeLink;

  /** A list of subject categories, such as "Fiction", "Suspense", etc. */
  core.List<core.String> categories;

  /** An identifier for the version of the volume content (text & images). (In LITE projection) */
  core.String contentVersion;

  /** A synopsis of the volume. The text of the description is formatted in HTML and includes simple formatting elements, such as b, i, and br tags. (In LITE projection.) */
  core.String description;

  /** Physical dimensions of this volume. */
  VolumeVolumeInfoDimensions dimensions;

  /** A list of image links for all the sizes that are available. (In LITE projection.) */
  VolumeVolumeInfoImageLinks imageLinks;

  /** Industry standard identifiers for this volume. */
  core.List<VolumeVolumeInfoIndustryIdentifiers> industryIdentifiers;

  /** URL to view information about this volume on the Google Books site. (In LITE projection) */
  core.String infoLink;

  /** Best language for this volume (based on content). It is the two-letter ISO 639-1 code such as 'fr', 'en', etc. */
  core.String language;

  /** The main category to which this volume belongs. It will be the category from the categories list returned below that has the highest weight. */
  core.String mainCategory;

  /** Total number of pages as per publisher metadata. */
  core.int pageCount;

  /** URL to preview this volume on the Google Books site. */
  core.String previewLink;

  /** Type of publication of this volume. Possible values are BOOK or MAGAZINE. */
  core.String printType;

  /** Total number of printed pages in generated pdf representation. */
  core.int printedPageCount;

  /** Date of publication. (In LITE projection.) */
  core.String publishedDate;

  /** Publisher of this volume. (In LITE projection.) */
  core.String publisher;

  /** The number of review ratings for this volume. */
  core.int ratingsCount;

  /** Volume subtitle. (In LITE projection.) */
  core.String subtitle;

  /** Volume title. (In LITE projection.) */
  core.String title;

  /** Create new VolumeVolumeInfo from JSON data */
  VolumeVolumeInfo.fromJson(core.Map json) {
    if (json.containsKey("authors")) {
      authors = json["authors"].toList();
    }
    if (json.containsKey("averageRating")) {
      averageRating = json["averageRating"];
    }
    if (json.containsKey("canonicalVolumeLink")) {
      canonicalVolumeLink = json["canonicalVolumeLink"];
    }
    if (json.containsKey("categories")) {
      categories = json["categories"].toList();
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
      industryIdentifiers = json["industryIdentifiers"].map((industryIdentifiersItem) => new VolumeVolumeInfoIndustryIdentifiers.fromJson(industryIdentifiersItem)).toList();
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
    if (json.containsKey("printedPageCount")) {
      printedPageCount = json["printedPageCount"];
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
  core.Map toJson() {
    var output = new core.Map();

    if (authors != null) {
      output["authors"] = authors.toList();
    }
    if (averageRating != null) {
      output["averageRating"] = averageRating;
    }
    if (canonicalVolumeLink != null) {
      output["canonicalVolumeLink"] = canonicalVolumeLink;
    }
    if (categories != null) {
      output["categories"] = categories.toList();
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
      output["industryIdentifiers"] = industryIdentifiers.map((industryIdentifiersItem) => industryIdentifiersItem.toJson()).toList();
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
    if (printedPageCount != null) {
      output["printedPageCount"] = printedPageCount;
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
  core.String toString() => JSON.encode(this.toJson());

}

/** Physical dimensions of this volume. */
class VolumeVolumeInfoDimensions {

  /** Height or length of this volume (in cm). */
  core.String height;

  /** Thickness of this volume (in cm). */
  core.String thickness;

  /** Width of this volume (in cm). */
  core.String width;

  /** Create new VolumeVolumeInfoDimensions from JSON data */
  VolumeVolumeInfoDimensions.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** A list of image links for all the sizes that are available. (In LITE projection.) */
class VolumeVolumeInfoImageLinks {

  /** Image link for extra large size (width of ~1280 pixels). (In LITE projection) */
  core.String extraLarge;

  /** Image link for large size (width of ~800 pixels). (In LITE projection) */
  core.String large;

  /** Image link for medium size (width of ~575 pixels). (In LITE projection) */
  core.String medium;

  /** Image link for small size (width of ~300 pixels). (In LITE projection) */
  core.String small;

  /** Image link for small thumbnail size (width of ~80 pixels). (In LITE projection) */
  core.String smallThumbnail;

  /** Image link for thumbnail size (width of ~128 pixels). (In LITE projection) */
  core.String thumbnail;

  /** Create new VolumeVolumeInfoImageLinks from JSON data */
  VolumeVolumeInfoImageLinks.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class VolumeVolumeInfoIndustryIdentifiers {

  /** Industry specific volume identifier. */
  core.String identifier;

  /** Identifier type. Possible values are ISBN_10, ISBN_13, ISSN and OTHER. */
  core.String type;

  /** Create new VolumeVolumeInfoIndustryIdentifiers from JSON data */
  VolumeVolumeInfoIndustryIdentifiers.fromJson(core.Map json) {
    if (json.containsKey("identifier")) {
      identifier = json["identifier"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for VolumeVolumeInfoIndustryIdentifiers */
  core.Map toJson() {
    var output = new core.Map();

    if (identifier != null) {
      output["identifier"] = identifier;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of VolumeVolumeInfoIndustryIdentifiers */
  core.String toString() => JSON.encode(this.toJson());

}

class Volumeannotation {

  /** The annotation data id for this volume annotation. */
  core.String annotationDataId;

  /** Link to get data for this annotation. */
  core.String annotationDataLink;

  /** The type of annotation this is. */
  core.String annotationType;

  /** The content ranges to identify the selected text. */
  VolumeannotationContentRanges contentRanges;

  /** Data for this annotation. */
  core.String data;

  /** Indicates that this annotation is deleted. */
  core.bool deleted;

  /** Unique id of this volume annotation. */
  core.String id;

  /** Resource Type */
  core.String kind;

  /** The Layer this annotation is for. */
  core.String layerId;

  /** Pages the annotation spans. */
  core.List<core.String> pageIds;

  /** Excerpt from the volume. */
  core.String selectedText;

  /** URL to this resource. */
  core.String selfLink;

  /** Timestamp for the last time this anntoation was updated. (RFC 3339 UTC date-time format). */
  core.String updated;

  /** The Volume this annotation is for. */
  core.String volumeId;

  /** Create new Volumeannotation from JSON data */
  Volumeannotation.fromJson(core.Map json) {
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
      pageIds = json["pageIds"].toList();
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
  core.Map toJson() {
    var output = new core.Map();

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
      output["pageIds"] = pageIds.toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** The content ranges to identify the selected text. */
class VolumeannotationContentRanges {

  /** Range in CFI format for this annotation for version above. */
  BooksAnnotationsRange cfiRange;

  /** Content version applicable to ranges below. */
  core.String contentVersion;

  /** Range in GB image format for this annotation for version above. */
  BooksAnnotationsRange gbImageRange;

  /** Range in GB text format for this annotation for version above. */
  BooksAnnotationsRange gbTextRange;

  /** Create new VolumeannotationContentRanges from JSON data */
  VolumeannotationContentRanges.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class Volumeannotations {

  /** A list of volume annotations. */
  core.List<Volumeannotation> items;

  /** Resource type */
  core.String kind;

  /** Token to pass in for pagination for the next page. This will not be present if this request does not have more results. */
  core.String nextPageToken;

  /** The total number of volume annotations found. */
  core.int totalItems;

  /** The version string for all of the volume annotations in this layer (not just the ones in this response). Note: the version string doesn't apply to the annotation data, just the information in this response (e.g. the location of annotations in the book). */
  core.String version;

  /** Create new Volumeannotations from JSON data */
  Volumeannotations.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Volumeannotation.fromJson(itemsItem)).toList();
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
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

class Volumes {

  /** A list of volumes. */
  core.List<Volume> items;

  /** Resource type. */
  core.String kind;

  /** Total number of volumes found. This might be greater than the number of volumes returned in this response if results have been paginated. */
  core.int totalItems;

  /** Create new Volumes from JSON data */
  Volumes.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Volume.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for Volumes */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
