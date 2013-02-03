part of books_v1_api_client;

class BookshelvesResource extends Resource {

  BookshelvesVolumesResource _volumes;
  BookshelvesVolumesResource get volumes => _volumes;

  BookshelvesResource(Client client) : super(client) {
  _volumes = new BookshelvesVolumesResource(client);
  }

  /**
   * Retrieves metadata for a specific bookshelf for the specified user.
   *
   * [userId] - ID of user for whom to retrieve bookshelves.
   *
   * [shelf] - ID of bookshelf to retrieve.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Bookshelf> get(String userId, String shelf, {String source, Map optParams}) {
    var completer = new Completer();
    var url = "users/{userId}/bookshelves/{shelf}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (shelf == null) paramErrors.add("shelf is required");
    if (shelf != null) urlParams["shelf"] = shelf;
    if (source != null) queryParams["source"] = source;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Bookshelf.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of public bookshelves for the specified user.
   *
   * [userId] - ID of user for whom to retrieve bookshelves.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Bookshelves> list(String userId, {String source, Map optParams}) {
    var completer = new Completer();
    var url = "users/{userId}/bookshelves";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (source != null) queryParams["source"] = source;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Bookshelves.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class BookshelvesVolumesResource extends Resource {

  BookshelvesVolumesResource(Client client) : super(client) {
  }

  /**
   * Retrieves volumes in a specific bookshelf for the specified user.
   *
   * [userId] - ID of user for whom to retrieve bookshelf volumes.
   *
   * [shelf] - ID of bookshelf to retrieve volumes.
   *
   * [maxResults] - Maximum number of results to return
   *   Minimum: 0
   *
   * [showPreorders] - Set to true to show pre-ordered books. Defaults to false.
   *
   * [source] - String to identify the originator of this request.
   *
   * [startIndex] - Index of the first element to return (starts at 0)
   *   Minimum: 0
   *
   * [optParams] - Additional query parameters
   */
  Future<Volumes> list(String userId, String shelf, {int maxResults, bool showPreorders, String source, int startIndex, Map optParams}) {
    var completer = new Completer();
    var url = "users/{userId}/bookshelves/{shelf}/volumes";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (shelf == null) paramErrors.add("shelf is required");
    if (shelf != null) urlParams["shelf"] = shelf;
    if (showPreorders != null) queryParams["showPreorders"] = showPreorders;
    if (source != null) queryParams["source"] = source;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Volumes.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class LayersResource extends Resource {

  LayersAnnotationDataResource _annotationData;
  LayersAnnotationDataResource get annotationData => _annotationData;
  LayersVolumeAnnotationsResource _volumeAnnotations;
  LayersVolumeAnnotationsResource get volumeAnnotations => _volumeAnnotations;

  LayersResource(Client client) : super(client) {
  _annotationData = new LayersAnnotationDataResource(client);
  _volumeAnnotations = new LayersVolumeAnnotationsResource(client);
  }

  /**
   * Gets the layer summary for a volume.
   *
   * [volumeId] - The volume to retrieve layers for.
   *
   * [summaryId] - The ID for the layer to get the summary for.
   *
   * [contentVersion] - The content version for the requested volume.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Layersummary> get(String volumeId, String summaryId, {String contentVersion, String source, Map optParams}) {
    var completer = new Completer();
    var url = "volumes/{volumeId}/layersummary/{summaryId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (contentVersion != null) queryParams["contentVersion"] = contentVersion;
    if (source != null) queryParams["source"] = source;
    if (summaryId == null) paramErrors.add("summaryId is required");
    if (summaryId != null) urlParams["summaryId"] = summaryId;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) urlParams["volumeId"] = volumeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Layersummary.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List the layer summaries for a volume.
   *
   * [volumeId] - The volume to retrieve layers for.
   *
   * [contentVersion] - The content version for the requested volume.
   *
   * [maxResults] - Maximum number of results to return
   *   Minimum: 0
   *   Maximum: 200
   *
   * [pageToken] - The value of the nextToken from the previous page.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Layersummaries> list(String volumeId, {String contentVersion, int maxResults, String pageToken, String source, Map optParams}) {
    var completer = new Completer();
    var url = "volumes/{volumeId}/layersummary";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (contentVersion != null) queryParams["contentVersion"] = contentVersion;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (source != null) queryParams["source"] = source;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) urlParams["volumeId"] = volumeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Layersummaries.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class LayersAnnotationDataResource extends Resource {

  LayersAnnotationDataResource(Client client) : super(client) {
  }

  /**
   * Gets the annotation data.
   *
   * [volumeId] - The volume to retrieve annotations for.
   *
   * [layerId] - The ID for the layer to get the annotations.
   *
   * [annotationDataId] - The ID of the annotation data to retrieve.
   *
   * [contentVersion] - The content version for the volume you are trying to retrieve.
   *
   * [h] - The requested pixel height for any images. If height is provided width must also be provided.
   *
   * [locale] - The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'.
   *
   * [scale] - The requested scale for the image.
   *   Minimum: 0
   *
   * [source] - String to identify the originator of this request.
   *
   * [w] - The requested pixel width for any images. If width is provided height must also be provided.
   *
   * [optParams] - Additional query parameters
   */
  Future<Annotationdata> get(String volumeId, String layerId, String annotationDataId, String contentVersion, {int h, String locale, int scale, String source, int w, Map optParams}) {
    var completer = new Completer();
    var url = "volumes/{volumeId}/layers/{layerId}/data/{annotationDataId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (annotationDataId == null) paramErrors.add("annotationDataId is required");
    if (annotationDataId != null) urlParams["annotationDataId"] = annotationDataId;
    if (contentVersion == null) paramErrors.add("contentVersion is required");
    if (contentVersion != null) queryParams["contentVersion"] = contentVersion;
    if (h != null) queryParams["h"] = h;
    if (layerId == null) paramErrors.add("layerId is required");
    if (layerId != null) urlParams["layerId"] = layerId;
    if (locale != null) queryParams["locale"] = locale;
    if (scale != null) queryParams["scale"] = scale;
    if (source != null) queryParams["source"] = source;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) urlParams["volumeId"] = volumeId;
    if (w != null) queryParams["w"] = w;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Annotationdata.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Gets the annotation data for a volume and layer.
   *
   * [volumeId] - The volume to retrieve annotation data for.
   *
   * [layerId] - The ID for the layer to get the annotation data.
   *
   * [contentVersion] - The content version for the requested volume.
   *
   * [annotationDataId] - The list of Annotation Data Ids to retrieve. Pagination is ignored if this is set.
   *
   * [h] - The requested pixel height for any images. If height is provided width must also be provided.
   *
   * [locale] - The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'.
   *
   * [maxResults] - Maximum number of results to return
   *   Minimum: 0
   *   Maximum: 200
   *
   * [pageToken] - The value of the nextToken from the previous page.
   *
   * [scale] - The requested scale for the image.
   *   Minimum: 0
   *
   * [source] - String to identify the originator of this request.
   *
   * [updatedMax] - RFC 3339 timestamp to restrict to items updated prior to this timestamp (exclusive).
   *
   * [updatedMin] - RFC 3339 timestamp to restrict to items updated since this timestamp (inclusive).
   *
   * [w] - The requested pixel width for any images. If width is provided height must also be provided.
   *
   * [optParams] - Additional query parameters
   */
  Future<Annotationsdata> list(String volumeId, String layerId, String contentVersion, {String annotationDataId, int h, String locale, int maxResults, String pageToken, int scale, String source, String updatedMax, String updatedMin, int w, Map optParams}) {
    var completer = new Completer();
    var url = "volumes/{volumeId}/layers/{layerId}/data";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (annotationDataId != null) queryParams["annotationDataId"] = annotationDataId;
    if (contentVersion == null) paramErrors.add("contentVersion is required");
    if (contentVersion != null) queryParams["contentVersion"] = contentVersion;
    if (h != null) queryParams["h"] = h;
    if (layerId == null) paramErrors.add("layerId is required");
    if (layerId != null) urlParams["layerId"] = layerId;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (scale != null) queryParams["scale"] = scale;
    if (source != null) queryParams["source"] = source;
    if (updatedMax != null) queryParams["updatedMax"] = updatedMax;
    if (updatedMin != null) queryParams["updatedMin"] = updatedMin;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) urlParams["volumeId"] = volumeId;
    if (w != null) queryParams["w"] = w;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Annotationsdata.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class LayersVolumeAnnotationsResource extends Resource {

  LayersVolumeAnnotationsResource(Client client) : super(client) {
  }

  /**
   * Gets the volume annotation.
   *
   * [volumeId] - The volume to retrieve annotations for.
   *
   * [layerId] - The ID for the layer to get the annotations.
   *
   * [annotationId] - The ID of the volume annotation to retrieve.
   *
   * [locale] - The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Volumeannotation> get(String volumeId, String layerId, String annotationId, {String locale, String source, Map optParams}) {
    var completer = new Completer();
    var url = "volumes/{volumeId}/layers/{layerId}/annotations/{annotationId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (annotationId == null) paramErrors.add("annotationId is required");
    if (annotationId != null) urlParams["annotationId"] = annotationId;
    if (layerId == null) paramErrors.add("layerId is required");
    if (layerId != null) urlParams["layerId"] = layerId;
    if (locale != null) queryParams["locale"] = locale;
    if (source != null) queryParams["source"] = source;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) urlParams["volumeId"] = volumeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Volumeannotation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Gets the volume annotations for a volume and layer.
   *
   * [volumeId] - The volume to retrieve annotations for.
   *
   * [layerId] - The ID for the layer to get the annotations.
   *
   * [contentVersion] - The content version for the requested volume.
   *
   * [endOffset] - The end offset to end retrieving data from.
   *
   * [endPosition] - The end position to end retrieving data from.
   *
   * [locale] - The locale information for the data. ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'.
   *
   * [maxResults] - Maximum number of results to return
   *   Minimum: 0
   *   Maximum: 200
   *
   * [pageToken] - The value of the nextToken from the previous page.
   *
   * [showDeleted] - Set to true to return deleted annotations. updatedMin must be in the request to use this. Defaults to false.
   *
   * [source] - String to identify the originator of this request.
   *
   * [startOffset] - The start offset to start retrieving data from.
   *
   * [startPosition] - The start position to start retrieving data from.
   *
   * [updatedMax] - RFC 3339 timestamp to restrict to items updated prior to this timestamp (exclusive).
   *
   * [updatedMin] - RFC 3339 timestamp to restrict to items updated since this timestamp (inclusive).
   *
   * [volumeAnnotationsVersion] - The version of the volume annotations that you are requesting.
   *
   * [optParams] - Additional query parameters
   */
  Future<Volumeannotations> list(String volumeId, String layerId, String contentVersion, {String endOffset, String endPosition, String locale, int maxResults, String pageToken, bool showDeleted, String source, String startOffset, String startPosition, String updatedMax, String updatedMin, String volumeAnnotationsVersion, Map optParams}) {
    var completer = new Completer();
    var url = "volumes/{volumeId}/layers/{layerId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (contentVersion == null) paramErrors.add("contentVersion is required");
    if (contentVersion != null) queryParams["contentVersion"] = contentVersion;
    if (endOffset != null) queryParams["endOffset"] = endOffset;
    if (endPosition != null) queryParams["endPosition"] = endPosition;
    if (layerId == null) paramErrors.add("layerId is required");
    if (layerId != null) urlParams["layerId"] = layerId;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (showDeleted != null) queryParams["showDeleted"] = showDeleted;
    if (source != null) queryParams["source"] = source;
    if (startOffset != null) queryParams["startOffset"] = startOffset;
    if (startPosition != null) queryParams["startPosition"] = startPosition;
    if (updatedMax != null) queryParams["updatedMax"] = updatedMax;
    if (updatedMin != null) queryParams["updatedMin"] = updatedMin;
    if (volumeAnnotationsVersion != null) queryParams["volumeAnnotationsVersion"] = volumeAnnotationsVersion;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) urlParams["volumeId"] = volumeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Volumeannotations.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class MyconfigResource extends Resource {

  MyconfigResource(Client client) : super(client) {
  }

  /**
   * Release downloaded content access restriction.
   *
   * [volumeIds] - The volume(s) to release restrictions for.
   *
   * [cpksver] - The device/version ID from which to release the restriction.
   *
   * [locale] - ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<DownloadAccesses> releaseDownloadAccess(String volumeIds, String cpksver, {String locale, String source, Map optParams}) {
    var completer = new Completer();
    var url = "myconfig/releaseDownloadAccess";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (cpksver == null) paramErrors.add("cpksver is required");
    if (cpksver != null) queryParams["cpksver"] = cpksver;
    if (locale != null) queryParams["locale"] = locale;
    if (source != null) queryParams["source"] = source;
    if (volumeIds == null) paramErrors.add("volumeIds is required");
    if (volumeIds != null) queryParams["volumeIds"] = volumeIds;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new DownloadAccesses.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Request concurrent and download access restrictions.
   *
   * [source] - String to identify the originator of this request.
   *
   * [volumeId] - The volume to request concurrent/download restrictions for.
   *
   * [nonce] - The client nonce value.
   *
   * [cpksver] - The device/version ID from which to request the restrictions.
   *
   * [locale] - ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
   *
   * [optParams] - Additional query parameters
   */
  Future<RequestAccess> requestAccess(String source, String volumeId, String nonce, String cpksver, {String locale, Map optParams}) {
    var completer = new Completer();
    var url = "myconfig/requestAccess";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (cpksver == null) paramErrors.add("cpksver is required");
    if (cpksver != null) queryParams["cpksver"] = cpksver;
    if (locale != null) queryParams["locale"] = locale;
    if (nonce == null) paramErrors.add("nonce is required");
    if (nonce != null) queryParams["nonce"] = nonce;
    if (source == null) paramErrors.add("source is required");
    if (source != null) queryParams["source"] = source;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) queryParams["volumeId"] = volumeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new RequestAccess.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Request downloaded content access for specified volumes on the My eBooks shelf.
   *
   * [source] - String to identify the originator of this request.
   *
   * [nonce] - The client nonce value.
   *
   * [cpksver] - The device/version ID from which to release the restriction.
   *
   * [locale] - ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
   *
   * [showPreorders] - Set to true to show pre-ordered books. Defaults to false.
   *
   * [volumeIds] - The volume(s) to request download restrictions for.
   *
   * [optParams] - Additional query parameters
   */
  Future<Volumes> syncVolumeLicenses(String source, String nonce, String cpksver, {String locale, bool showPreorders, String volumeIds, Map optParams}) {
    var completer = new Completer();
    var url = "myconfig/syncVolumeLicenses";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (cpksver == null) paramErrors.add("cpksver is required");
    if (cpksver != null) queryParams["cpksver"] = cpksver;
    if (locale != null) queryParams["locale"] = locale;
    if (nonce == null) paramErrors.add("nonce is required");
    if (nonce != null) queryParams["nonce"] = nonce;
    if (showPreorders != null) queryParams["showPreorders"] = showPreorders;
    if (source == null) paramErrors.add("source is required");
    if (source != null) queryParams["source"] = source;
    if (volumeIds != null) queryParams["volumeIds"] = volumeIds;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Volumes.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class MylibraryResource extends Resource {

  MylibraryAnnotationsResource _annotations;
  MylibraryAnnotationsResource get annotations => _annotations;
  MylibraryBookshelvesResource _bookshelves;
  MylibraryBookshelvesResource get bookshelves => _bookshelves;
  MylibraryReadingpositionsResource _readingpositions;
  MylibraryReadingpositionsResource get readingpositions => _readingpositions;

  MylibraryResource(Client client) : super(client) {
  _annotations = new MylibraryAnnotationsResource(client);
  _bookshelves = new MylibraryBookshelvesResource(client);
  _readingpositions = new MylibraryReadingpositionsResource(client);
  }
}

class MylibraryAnnotationsResource extends Resource {

  MylibraryAnnotationsResource(Client client) : super(client) {
  }

  /**
   * Deletes an annotation.
   *
   * [annotationId] - The ID for the annotation to delete.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String annotationId, {String source, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/annotations/{annotationId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (annotationId == null) paramErrors.add("annotationId is required");
    if (annotationId != null) urlParams["annotationId"] = annotationId;
    if (source != null) queryParams["source"] = source;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Gets an annotation by its ID.
   *
   * [annotationId] - The ID for the annotation to retrieve.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Annotation> get(String annotationId, {String source, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/annotations/{annotationId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (annotationId == null) paramErrors.add("annotationId is required");
    if (annotationId != null) urlParams["annotationId"] = annotationId;
    if (source != null) queryParams["source"] = source;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Annotation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Inserts a new annotation.
   *
   * [request] - Annotation to send in this request
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Annotation> insert(Annotation request, {String source, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/annotations";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (source != null) queryParams["source"] = source;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Annotation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of annotations, possibly filtered.
   *
   * [contentVersion] - The content version for the requested volume.
   *
   * [layerId] - The layer ID to limit annotation by.
   *
   * [maxResults] - Maximum number of results to return
   *   Minimum: 0
   *   Maximum: 40
   *
   * [pageIds] - The page ID(s) for the volume that is being queried.
   *
   * [pageToken] - The value of the nextToken from the previous page.
   *
   * [showDeleted] - Set to true to return deleted annotations. updatedMin must be in the request to use this. Defaults to false.
   *
   * [source] - String to identify the originator of this request.
   *
   * [updatedMax] - RFC 3339 timestamp to restrict to items updated prior to this timestamp (exclusive).
   *
   * [updatedMin] - RFC 3339 timestamp to restrict to items updated since this timestamp (inclusive).
   *
   * [volumeId] - The volume to restrict annotations to.
   *
   * [optParams] - Additional query parameters
   */
  Future<Annotations> list({String contentVersion, String layerId, int maxResults, String pageIds, String pageToken, bool showDeleted, String source, String updatedMax, String updatedMin, String volumeId, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/annotations";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (contentVersion != null) queryParams["contentVersion"] = contentVersion;
    if (layerId != null) queryParams["layerId"] = layerId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageIds != null) queryParams["pageIds"] = pageIds;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (showDeleted != null) queryParams["showDeleted"] = showDeleted;
    if (source != null) queryParams["source"] = source;
    if (updatedMax != null) queryParams["updatedMax"] = updatedMax;
    if (updatedMin != null) queryParams["updatedMin"] = updatedMin;
    if (volumeId != null) queryParams["volumeId"] = volumeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Annotations.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates an existing annotation.
   *
   * [request] - Annotation to send in this request
   *
   * [annotationId] - The ID for the annotation to update.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Annotation> update(Annotation request, String annotationId, {String source, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/annotations/{annotationId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (annotationId == null) paramErrors.add("annotationId is required");
    if (annotationId != null) urlParams["annotationId"] = annotationId;
    if (source != null) queryParams["source"] = source;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Annotation.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class MylibraryBookshelvesResource extends Resource {

  MylibraryBookshelvesVolumesResource _volumes;
  MylibraryBookshelvesVolumesResource get volumes => _volumes;

  MylibraryBookshelvesResource(Client client) : super(client) {
  _volumes = new MylibraryBookshelvesVolumesResource(client);
  }

  /**
   * Adds a volume to a bookshelf.
   *
   * [shelf] - ID of bookshelf to which to add a volume.
   *
   * [volumeId] - ID of volume to add.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> addVolume(String shelf, String volumeId, {String source, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/bookshelves/{shelf}/addVolume";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (shelf == null) paramErrors.add("shelf is required");
    if (shelf != null) urlParams["shelf"] = shelf;
    if (source != null) queryParams["source"] = source;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) queryParams["volumeId"] = volumeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Clears all volumes from a bookshelf.
   *
   * [shelf] - ID of bookshelf from which to remove a volume.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> clearVolumes(String shelf, {String source, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/bookshelves/{shelf}/clearVolumes";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (shelf == null) paramErrors.add("shelf is required");
    if (shelf != null) urlParams["shelf"] = shelf;
    if (source != null) queryParams["source"] = source;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves metadata for a specific bookshelf belonging to the authenticated user.
   *
   * [shelf] - ID of bookshelf to retrieve.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Bookshelf> get(String shelf, {String source, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/bookshelves/{shelf}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (shelf == null) paramErrors.add("shelf is required");
    if (shelf != null) urlParams["shelf"] = shelf;
    if (source != null) queryParams["source"] = source;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Bookshelf.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retrieves a list of bookshelves belonging to the authenticated user.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Bookshelves> list({String source, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/bookshelves";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (source != null) queryParams["source"] = source;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Bookshelves.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Moves a volume within a bookshelf.
   *
   * [shelf] - ID of bookshelf with the volume.
   *
   * [volumeId] - ID of volume to move.
   *
   * [volumePosition] - Position on shelf to move the item (0 puts the item before the current first item, 1 puts it between the first and the second and so on.)
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> moveVolume(String shelf, String volumeId, int volumePosition, {String source, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/bookshelves/{shelf}/moveVolume";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (shelf == null) paramErrors.add("shelf is required");
    if (shelf != null) urlParams["shelf"] = shelf;
    if (source != null) queryParams["source"] = source;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) queryParams["volumeId"] = volumeId;
    if (volumePosition == null) paramErrors.add("volumePosition is required");
    if (volumePosition != null) queryParams["volumePosition"] = volumePosition;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Removes a volume from a bookshelf.
   *
   * [shelf] - ID of bookshelf from which to remove a volume.
   *
   * [volumeId] - ID of volume to remove.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> removeVolume(String shelf, String volumeId, {String source, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/bookshelves/{shelf}/removeVolume";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (shelf == null) paramErrors.add("shelf is required");
    if (shelf != null) urlParams["shelf"] = shelf;
    if (source != null) queryParams["source"] = source;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) queryParams["volumeId"] = volumeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class MylibraryBookshelvesVolumesResource extends Resource {

  MylibraryBookshelvesVolumesResource(Client client) : super(client) {
  }

  /**
   * Gets volume information for volumes on a bookshelf.
   *
   * [shelf] - The bookshelf ID or name retrieve volumes for.
   *
   * [country] - ISO-3166-1 code to override the IP-based location.
   *
   * [maxResults] - Maximum number of results to return
   *   Minimum: 0
   *
   * [projection] - Restrict information returned to a set of selected fields.
   *   Allowed values:
   *     full - Includes all volume data.
   *     lite - Includes a subset of fields in volumeInfo and accessInfo.
   *
   * [q] - Full-text search query string in this bookshelf.
   *
   * [showPreorders] - Set to true to show pre-ordered books. Defaults to false.
   *
   * [source] - String to identify the originator of this request.
   *
   * [startIndex] - Index of the first element to return (starts at 0)
   *   Minimum: 0
   *
   * [optParams] - Additional query parameters
   */
  Future<Volumes> list(String shelf, {String country, int maxResults, String projection, String q, bool showPreorders, String source, int startIndex, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/bookshelves/{shelf}/volumes";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (country != null) queryParams["country"] = country;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (projection != null && !["full", "lite"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, lite");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (q != null) queryParams["q"] = q;
    if (shelf == null) paramErrors.add("shelf is required");
    if (shelf != null) urlParams["shelf"] = shelf;
    if (showPreorders != null) queryParams["showPreorders"] = showPreorders;
    if (source != null) queryParams["source"] = source;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Volumes.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class MylibraryReadingpositionsResource extends Resource {

  MylibraryReadingpositionsResource(Client client) : super(client) {
  }

  /**
   * Retrieves my reading position information for a volume.
   *
   * [volumeId] - ID of volume for which to retrieve a reading position.
   *
   * [contentVersion] - Volume content version for which this reading position is requested.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<ReadingPosition> get(String volumeId, {String contentVersion, String source, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/readingpositions/{volumeId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (contentVersion != null) queryParams["contentVersion"] = contentVersion;
    if (source != null) queryParams["source"] = source;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) urlParams["volumeId"] = volumeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ReadingPosition.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Sets my reading position information for a volume.
   *
   * [volumeId] - ID of volume for which to update the reading position.
   *
   * [timestamp] - RFC 3339 UTC format timestamp associated with this reading position.
   *
   * [position] - Position string for the new volume reading position.
   *
   * [action] - Action that caused this reading position to be set.
   *   Allowed values:
   *     bookmark - User chose bookmark within volume.
   *     chapter - User selected chapter from list.
   *     next-page - Next page event.
   *     prev-page - Previous page event.
   *     scroll - User navigated to page.
   *     search - User chose search results within volume.
   *
   * [contentVersion] - Volume content version for which this reading position applies.
   *
   * [deviceCookie] - Random persistent device cookie optional on set position.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> setPosition(String volumeId, String timestamp, String position, {String action, String contentVersion, String deviceCookie, String source, Map optParams}) {
    var completer = new Completer();
    var url = "mylibrary/readingpositions/{volumeId}/setPosition";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (action != null && !["bookmark", "chapter", "next-page", "prev-page", "scroll", "search"].contains(action)) {
      paramErrors.add("Allowed values for action: bookmark, chapter, next-page, prev-page, scroll, search");
    }
    if (action != null) queryParams["action"] = action;
    if (contentVersion != null) queryParams["contentVersion"] = contentVersion;
    if (deviceCookie != null) queryParams["deviceCookie"] = deviceCookie;
    if (position == null) paramErrors.add("position is required");
    if (position != null) queryParams["position"] = position;
    if (source != null) queryParams["source"] = source;
    if (timestamp == null) paramErrors.add("timestamp is required");
    if (timestamp != null) queryParams["timestamp"] = timestamp;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) urlParams["volumeId"] = volumeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class VolumesResource extends Resource {

  VolumesAssociatedResource _associated;
  VolumesAssociatedResource get associated => _associated;
  VolumesRecommendedResource _recommended;
  VolumesRecommendedResource get recommended => _recommended;

  VolumesResource(Client client) : super(client) {
  _associated = new VolumesAssociatedResource(client);
  _recommended = new VolumesRecommendedResource(client);
  }

  /**
   * Gets volume information for a single volume.
   *
   * [volumeId] - ID of volume to retrieve.
   *
   * [country] - ISO-3166-1 code to override the IP-based location.
   *
   * [partner] - Brand results for partner ID.
   *
   * [projection] - Restrict information returned to a set of selected fields.
   *   Allowed values:
   *     full - Includes all volume data.
   *     lite - Includes a subset of fields in volumeInfo and accessInfo.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Volume> get(String volumeId, {String country, String partner, String projection, String source, Map optParams}) {
    var completer = new Completer();
    var url = "volumes/{volumeId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (country != null) queryParams["country"] = country;
    if (partner != null) queryParams["partner"] = partner;
    if (projection != null && !["full", "lite"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, lite");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (source != null) queryParams["source"] = source;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) urlParams["volumeId"] = volumeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Volume.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Performs a book search.
   *
   * [q] - Full-text search query string.
   *
   * [download] - Restrict to volumes by download availability.
   *   Allowed values:
   *     epub - All volumes with epub.
   *
   * [filter] - Filter search results.
   *   Allowed values:
   *     ebooks - All Google eBooks.
   *     free-ebooks - Google eBook with full volume text viewability.
   *     full - Public can view entire volume text.
   *     paid-ebooks - Google eBook with a price.
   *     partial - Public able to see parts of text.
   *
   * [langRestrict] - Restrict results to books with this language code.
   *
   * [libraryRestrict] - Restrict search to this user's library.
   *   Allowed values:
   *     my-library - Restrict to the user's library, any shelf.
   *     no-restrict - Do not restrict based on user's library.
   *
   * [maxResults] - Maximum number of results to return.
   *   Minimum: 0
   *   Maximum: 40
   *
   * [orderBy] - Sort search results.
   *   Allowed values:
   *     newest - Most recently published.
   *     relevance - Relevance to search terms.
   *
   * [partner] - Restrict and brand results for partner ID.
   *
   * [printType] - Restrict to books or magazines.
   *   Allowed values:
   *     all - All volume content types.
   *     books - Just books.
   *     magazines - Just magazines.
   *
   * [projection] - Restrict information returned to a set of selected fields.
   *   Allowed values:
   *     full - Includes all volume data.
   *     lite - Includes a subset of fields in volumeInfo and accessInfo.
   *
   * [showPreorders] - Set to true to show books available for preorder. Defaults to false.
   *
   * [source] - String to identify the originator of this request.
   *
   * [startIndex] - Index of the first result to return (starts at 0)
   *   Minimum: 0
   *
   * [optParams] - Additional query parameters
   */
  Future<Volumes> list(String q, {String download, String filter, String langRestrict, String libraryRestrict, int maxResults, String orderBy, String partner, String printType, String projection, bool showPreorders, String source, int startIndex, Map optParams}) {
    var completer = new Completer();
    var url = "volumes";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (download != null && !["epub"].contains(download)) {
      paramErrors.add("Allowed values for download: epub");
    }
    if (download != null) queryParams["download"] = download;
    if (filter != null && !["ebooks", "free-ebooks", "full", "paid-ebooks", "partial"].contains(filter)) {
      paramErrors.add("Allowed values for filter: ebooks, free-ebooks, full, paid-ebooks, partial");
    }
    if (filter != null) queryParams["filter"] = filter;
    if (langRestrict != null) queryParams["langRestrict"] = langRestrict;
    if (libraryRestrict != null && !["my-library", "no-restrict"].contains(libraryRestrict)) {
      paramErrors.add("Allowed values for libraryRestrict: my-library, no-restrict");
    }
    if (libraryRestrict != null) queryParams["libraryRestrict"] = libraryRestrict;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["newest", "relevance"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: newest, relevance");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (partner != null) queryParams["partner"] = partner;
    if (printType != null && !["all", "books", "magazines"].contains(printType)) {
      paramErrors.add("Allowed values for printType: all, books, magazines");
    }
    if (printType != null) queryParams["printType"] = printType;
    if (projection != null && !["full", "lite"].contains(projection)) {
      paramErrors.add("Allowed values for projection: full, lite");
    }
    if (projection != null) queryParams["projection"] = projection;
    if (q == null) paramErrors.add("q is required");
    if (q != null) queryParams["q"] = q;
    if (showPreorders != null) queryParams["showPreorders"] = showPreorders;
    if (source != null) queryParams["source"] = source;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Volumes.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class VolumesAssociatedResource extends Resource {

  VolumesAssociatedResource(Client client) : super(client) {
  }

  /**
   * Return a list of associated books.
   *
   * [volumeId] - ID of the source volume.
   *
   * [association] - Association type.
   *   Allowed values:
   *     end-of-sample - Recommendations for display end-of-sample.
   *     end-of-volume - Recommendations for display end-of-volume.
   *
   * [locale] - ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Volumes> list(String volumeId, {String association, String locale, String source, Map optParams}) {
    var completer = new Completer();
    var url = "volumes/{volumeId}/associated";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (association != null && !["end-of-sample", "end-of-volume"].contains(association)) {
      paramErrors.add("Allowed values for association: end-of-sample, end-of-volume");
    }
    if (association != null) queryParams["association"] = association;
    if (locale != null) queryParams["locale"] = locale;
    if (source != null) queryParams["source"] = source;
    if (volumeId == null) paramErrors.add("volumeId is required");
    if (volumeId != null) urlParams["volumeId"] = volumeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Volumes.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class VolumesRecommendedResource extends Resource {

  VolumesRecommendedResource(Client client) : super(client) {
  }

  /**
   * Return a list of recommended books for the current user.
   *
   * [locale] - ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  Future<Volumes> list({String locale, String source, Map optParams}) {
    var completer = new Completer();
    var url = "volumes/recommended";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (locale != null) queryParams["locale"] = locale;
    if (source != null) queryParams["source"] = source;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Volumes.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

