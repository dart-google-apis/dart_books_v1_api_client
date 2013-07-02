part of books_v1_api_client;

class BookshelvesResource_ extends Resource {

  BookshelvesVolumesResource_ _volumes;
  BookshelvesVolumesResource_ get volumes => _volumes;

  BookshelvesResource_(Client client) : super(client) {
  _volumes = new BookshelvesVolumesResource_(client);
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
  async.Future<Bookshelf> get(core.String userId, core.String shelf, {core.String source, core.Map optParams}) {
    var url = "users/{userId}/bookshelves/{shelf}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Bookshelf.fromJson(data));
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
  async.Future<Bookshelves> list(core.String userId, {core.String source, core.Map optParams}) {
    var url = "users/{userId}/bookshelves";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Bookshelves.fromJson(data));
  }
}

class BookshelvesVolumesResource_ extends Resource {

  BookshelvesVolumesResource_(Client client) : super(client) {
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
  async.Future<Volumes> list(core.String userId, core.String shelf, {core.int maxResults, core.bool showPreorders, core.String source, core.int startIndex, core.Map optParams}) {
    var url = "users/{userId}/bookshelves/{shelf}/volumes";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Volumes.fromJson(data));
  }
}

class CloudloadingResource_ extends Resource {

  CloudloadingResource_(Client client) : super(client) {
  }

  /**
   * 
   *
   * [drive_document_id] - A drive document id. The upload_client_token must not be set.
   *
   * [mime_type] - The document MIME type. It can be set only if the drive_document_id is set.
   *
   * [name] - The document name. It can be set only if the drive_document_id is set.
   *
   * [upload_client_token]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BooksCloudloadingResource> addBook({core.String drive_document_id, core.String mime_type, core.String name, core.String upload_client_token, core.Map optParams}) {
    var url = "cloudloading/addBook";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (drive_document_id != null) queryParams["drive_document_id"] = drive_document_id;
    if (mime_type != null) queryParams["mime_type"] = mime_type;
    if (name != null) queryParams["name"] = name;
    if (upload_client_token != null) queryParams["upload_client_token"] = upload_client_token;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BooksCloudloadingResource.fromJson(data));
  }

  /**
   * Remove the book and its contents
   *
   * [volumeId] - The id of the book to be removed.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> deleteBook(core.String volumeId, {core.Map optParams}) {
    var url = "cloudloading/deleteBook";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * 
   *
   * [request] - BooksCloudloadingResource to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BooksCloudloadingResource> updateBook(BooksCloudloadingResource request, {core.Map optParams}) {
    var url = "cloudloading/updateBook";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BooksCloudloadingResource.fromJson(data));
  }
}

class LayersResource_ extends Resource {

  LayersAnnotationDataResource_ _annotationData;
  LayersAnnotationDataResource_ get annotationData => _annotationData;
  LayersVolumeAnnotationsResource_ _volumeAnnotations;
  LayersVolumeAnnotationsResource_ get volumeAnnotations => _volumeAnnotations;

  LayersResource_(Client client) : super(client) {
  _annotationData = new LayersAnnotationDataResource_(client);
  _volumeAnnotations = new LayersVolumeAnnotationsResource_(client);
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
  async.Future<Layersummary> get(core.String volumeId, core.String summaryId, {core.String contentVersion, core.String source, core.Map optParams}) {
    var url = "volumes/{volumeId}/layersummary/{summaryId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Layersummary.fromJson(data));
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
  async.Future<Layersummaries> list(core.String volumeId, {core.String contentVersion, core.int maxResults, core.String pageToken, core.String source, core.Map optParams}) {
    var url = "volumes/{volumeId}/layersummary";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Layersummaries.fromJson(data));
  }
}

class LayersAnnotationDataResource_ extends Resource {

  LayersAnnotationDataResource_(Client client) : super(client) {
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
  async.Future<Annotationdata> get(core.String volumeId, core.String layerId, core.String annotationDataId, core.String contentVersion, {core.int h, core.String locale, core.int scale, core.String source, core.int w, core.Map optParams}) {
    var url = "volumes/{volumeId}/layers/{layerId}/data/{annotationDataId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Annotationdata.fromJson(data));
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
  async.Future<Annotationsdata> list(core.String volumeId, core.String layerId, core.String contentVersion, {core.String annotationDataId, core.int h, core.String locale, core.int maxResults, core.String pageToken, core.int scale, core.String source, core.String updatedMax, core.String updatedMin, core.int w, core.Map optParams}) {
    var url = "volumes/{volumeId}/layers/{layerId}/data";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Annotationsdata.fromJson(data));
  }
}

class LayersVolumeAnnotationsResource_ extends Resource {

  LayersVolumeAnnotationsResource_(Client client) : super(client) {
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
  async.Future<Volumeannotation> get(core.String volumeId, core.String layerId, core.String annotationId, {core.String locale, core.String source, core.Map optParams}) {
    var url = "volumes/{volumeId}/layers/{layerId}/annotations/{annotationId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Volumeannotation.fromJson(data));
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
  async.Future<Volumeannotations> list(core.String volumeId, core.String layerId, core.String contentVersion, {core.String endOffset, core.String endPosition, core.String locale, core.int maxResults, core.String pageToken, core.bool showDeleted, core.String source, core.String startOffset, core.String startPosition, core.String updatedMax, core.String updatedMin, core.String volumeAnnotationsVersion, core.Map optParams}) {
    var url = "volumes/{volumeId}/layers/{layerId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Volumeannotations.fromJson(data));
  }
}

class MyconfigResource_ extends Resource {

  MyconfigResource_(Client client) : super(client) {
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
  async.Future<DownloadAccesses> releaseDownloadAccess(core.String volumeIds, core.String cpksver, {core.String locale, core.String source, core.Map optParams}) {
    var url = "myconfig/releaseDownloadAccess";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DownloadAccesses.fromJson(data));
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
  async.Future<RequestAccess> requestAccess(core.String source, core.String volumeId, core.String nonce, core.String cpksver, {core.String locale, core.Map optParams}) {
    var url = "myconfig/requestAccess";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RequestAccess.fromJson(data));
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
  async.Future<Volumes> syncVolumeLicenses(core.String source, core.String nonce, core.String cpksver, {core.String locale, core.bool showPreorders, core.String volumeIds, core.Map optParams}) {
    var url = "myconfig/syncVolumeLicenses";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Volumes.fromJson(data));
  }
}

class MylibraryResource_ extends Resource {

  MylibraryAnnotationsResource_ _annotations;
  MylibraryAnnotationsResource_ get annotations => _annotations;
  MylibraryBookshelvesResource_ _bookshelves;
  MylibraryBookshelvesResource_ get bookshelves => _bookshelves;
  MylibraryReadingpositionsResource_ _readingpositions;
  MylibraryReadingpositionsResource_ get readingpositions => _readingpositions;

  MylibraryResource_(Client client) : super(client) {
  _annotations = new MylibraryAnnotationsResource_(client);
  _bookshelves = new MylibraryBookshelvesResource_(client);
  _readingpositions = new MylibraryReadingpositionsResource_(client);
  }
}

class MylibraryAnnotationsResource_ extends Resource {

  MylibraryAnnotationsResource_(Client client) : super(client) {
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
  async.Future<core.Map> delete(core.String annotationId, {core.String source, core.Map optParams}) {
    var url = "mylibrary/annotations/{annotationId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
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
  async.Future<Annotation> get(core.String annotationId, {core.String source, core.Map optParams}) {
    var url = "mylibrary/annotations/{annotationId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Annotation.fromJson(data));
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
  async.Future<Annotation> insert(Annotation request, {core.String source, core.Map optParams}) {
    var url = "mylibrary/annotations";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (source != null) queryParams["source"] = source;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Annotation.fromJson(data));
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
  async.Future<Annotations> list({core.String contentVersion, core.String layerId, core.int maxResults, core.String pageIds, core.String pageToken, core.bool showDeleted, core.String source, core.String updatedMax, core.String updatedMin, core.String volumeId, core.Map optParams}) {
    var url = "mylibrary/annotations";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Annotations.fromJson(data));
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
  async.Future<Annotation> update(Annotation request, core.String annotationId, {core.String source, core.Map optParams}) {
    var url = "mylibrary/annotations/{annotationId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Annotation.fromJson(data));
  }
}

class MylibraryBookshelvesResource_ extends Resource {

  MylibraryBookshelvesVolumesResource_ _volumes;
  MylibraryBookshelvesVolumesResource_ get volumes => _volumes;

  MylibraryBookshelvesResource_(Client client) : super(client) {
  _volumes = new MylibraryBookshelvesVolumesResource_(client);
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
  async.Future<core.Map> addVolume(core.String shelf, core.String volumeId, {core.String source, core.Map optParams}) {
    var url = "mylibrary/bookshelves/{shelf}/addVolume";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
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
  async.Future<core.Map> clearVolumes(core.String shelf, {core.String source, core.Map optParams}) {
    var url = "mylibrary/bookshelves/{shelf}/clearVolumes";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
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
  async.Future<Bookshelf> get(core.String shelf, {core.String source, core.Map optParams}) {
    var url = "mylibrary/bookshelves/{shelf}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Bookshelf.fromJson(data));
  }

  /**
   * Retrieves a list of bookshelves belonging to the authenticated user.
   *
   * [source] - String to identify the originator of this request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Bookshelves> list({core.String source, core.Map optParams}) {
    var url = "mylibrary/bookshelves";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (source != null) queryParams["source"] = source;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Bookshelves.fromJson(data));
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
  async.Future<core.Map> moveVolume(core.String shelf, core.String volumeId, core.int volumePosition, {core.String source, core.Map optParams}) {
    var url = "mylibrary/bookshelves/{shelf}/moveVolume";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
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
  async.Future<core.Map> removeVolume(core.String shelf, core.String volumeId, {core.String source, core.Map optParams}) {
    var url = "mylibrary/bookshelves/{shelf}/removeVolume";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class MylibraryBookshelvesVolumesResource_ extends Resource {

  MylibraryBookshelvesVolumesResource_(Client client) : super(client) {
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
  async.Future<Volumes> list(core.String shelf, {core.String country, core.int maxResults, core.String projection, core.String q, core.bool showPreorders, core.String source, core.int startIndex, core.Map optParams}) {
    var url = "mylibrary/bookshelves/{shelf}/volumes";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Volumes.fromJson(data));
  }
}

class MylibraryReadingpositionsResource_ extends Resource {

  MylibraryReadingpositionsResource_(Client client) : super(client) {
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
  async.Future<ReadingPosition> get(core.String volumeId, {core.String contentVersion, core.String source, core.Map optParams}) {
    var url = "mylibrary/readingpositions/{volumeId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ReadingPosition.fromJson(data));
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
  async.Future<core.Map> setPosition(core.String volumeId, core.String timestamp, core.String position, {core.String action, core.String contentVersion, core.String deviceCookie, core.String source, core.Map optParams}) {
    var url = "mylibrary/readingpositions/{volumeId}/setPosition";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class VolumesResource_ extends Resource {

  VolumesAssociatedResource_ _associated;
  VolumesAssociatedResource_ get associated => _associated;
  VolumesMybooksResource_ _mybooks;
  VolumesMybooksResource_ get mybooks => _mybooks;
  VolumesRecommendedResource_ _recommended;
  VolumesRecommendedResource_ get recommended => _recommended;
  VolumesUseruploadedResource_ _useruploaded;
  VolumesUseruploadedResource_ get useruploaded => _useruploaded;

  VolumesResource_(Client client) : super(client) {
  _associated = new VolumesAssociatedResource_(client);
  _mybooks = new VolumesMybooksResource_(client);
  _recommended = new VolumesRecommendedResource_(client);
  _useruploaded = new VolumesUseruploadedResource_(client);
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
  async.Future<Volume> get(core.String volumeId, {core.String country, core.String partner, core.String projection, core.String source, core.Map optParams}) {
    var url = "volumes/{volumeId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Volume.fromJson(data));
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
  async.Future<Volumes> list(core.String q, {core.String download, core.String filter, core.String langRestrict, core.String libraryRestrict, core.int maxResults, core.String orderBy, core.String partner, core.String printType, core.String projection, core.bool showPreorders, core.String source, core.int startIndex, core.Map optParams}) {
    var url = "volumes";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Volumes.fromJson(data));
  }
}

class VolumesAssociatedResource_ extends Resource {

  VolumesAssociatedResource_(Client client) : super(client) {
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
  async.Future<Volumes> list(core.String volumeId, {core.String association, core.String locale, core.String source, core.Map optParams}) {
    var url = "volumes/{volumeId}/associated";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Volumes.fromJson(data));
  }
}

class VolumesMybooksResource_ extends Resource {

  VolumesMybooksResource_(Client client) : super(client) {
  }

  /**
   * Return a list of books in My Library.
   *
   * [acquireMethod] - How the book was aquired
   *   Allowed values:
   *     PREORDERED - Preordered books (not yet available)
   *     PUBLIC_DOMAIN - Public domain books
   *     PURCHASED - Purchased books
   *     SAMPLE - Sample books
   *     UPLOADED - User uploaded books
   *
   * [locale] - ISO-639-1 language and ISO-3166-1 country code. Ex:'en_US'. Used for generating recommendations.
   *
   * [maxResults] - Maximum number of results to return.
   *   Minimum: 0
   *   Maximum: 100
   *
   * [processingState] - The processing state of the user uploaded volumes to be returned. Applicable only if the UPLOADED is specified in the acquireMethod.
   *   Allowed values:
   *     COMPLETED_FAILED - The volume processing hase failed.
   *     COMPLETED_SUCCESS - The volume processing was completed.
   *     RUNNING - The volume processing is not completed.
   *
   * [source] - String to identify the originator of this request.
   *
   * [startIndex] - Index of the first result to return (starts at 0)
   *   Minimum: 0
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Volumes> list({core.String acquireMethod, core.String locale, core.int maxResults, core.String processingState, core.String source, core.int startIndex, core.Map optParams}) {
    var url = "volumes/mybooks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (acquireMethod != null && !["PREORDERED", "PUBLIC_DOMAIN", "PURCHASED", "SAMPLE", "UPLOADED"].contains(acquireMethod)) {
      paramErrors.add("Allowed values for acquireMethod: PREORDERED, PUBLIC_DOMAIN, PURCHASED, SAMPLE, UPLOADED");
    }
    if (acquireMethod != null) queryParams["acquireMethod"] = acquireMethod;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (processingState != null && !["COMPLETED_FAILED", "COMPLETED_SUCCESS", "RUNNING"].contains(processingState)) {
      paramErrors.add("Allowed values for processingState: COMPLETED_FAILED, COMPLETED_SUCCESS, RUNNING");
    }
    if (processingState != null) queryParams["processingState"] = processingState;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Volumes.fromJson(data));
  }
}

class VolumesRecommendedResource_ extends Resource {

  VolumesRecommendedResource_(Client client) : super(client) {
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
  async.Future<Volumes> list({core.String locale, core.String source, core.Map optParams}) {
    var url = "volumes/recommended";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Volumes.fromJson(data));
  }
}

class VolumesUseruploadedResource_ extends Resource {

  VolumesUseruploadedResource_(Client client) : super(client) {
  }

  /**
   * Return a list of books uploaded by the current user.
   *
   * [locale] - ISO-639-1 language and ISO-3166-1 country code. Ex: 'en_US'. Used for generating recommendations.
   *
   * [maxResults] - Maximum number of results to return.
   *   Minimum: 0
   *   Maximum: 40
   *
   * [processingState] - The processing state of the user uploaded volumes to be returned.
   *   Allowed values:
   *     COMPLETED_FAILED - The volume processing hase failed.
   *     COMPLETED_SUCCESS - The volume processing was completed.
   *     RUNNING - The volume processing is not completed.
   *
   * [source] - String to identify the originator of this request.
   *
   * [startIndex] - Index of the first result to return (starts at 0)
   *   Minimum: 0
   *
   * [volumeId] - The ids of the volumes to be returned. If not specified all that match the processingState are returned.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Volumes> list({core.String locale, core.int maxResults, core.String processingState, core.String source, core.int startIndex, core.String volumeId, core.Map optParams}) {
    var url = "volumes/useruploaded";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (processingState != null && !["COMPLETED_FAILED", "COMPLETED_SUCCESS", "RUNNING"].contains(processingState)) {
      paramErrors.add("Allowed values for processingState: COMPLETED_FAILED, COMPLETED_SUCCESS, RUNNING");
    }
    if (processingState != null) queryParams["processingState"] = processingState;
    if (source != null) queryParams["source"] = source;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (volumeId != null) queryParams["volumeId"] = volumeId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Volumes.fromJson(data));
  }
}

