part of books_v1_api_browser;

/** Client to access the books v1 API */
/** Lets you search for books and manage your Google Books library. */
class Books extends BrowserClient {

  BookshelvesResource _bookshelves;
  BookshelvesResource get bookshelves => _bookshelves;
  LayersResource _layers;
  LayersResource get layers => _layers;
  MyconfigResource _myconfig;
  MyconfigResource get myconfig => _myconfig;
  MylibraryResource _mylibrary;
  MylibraryResource get mylibrary => _mylibrary;
  VolumesResource _volumes;
  VolumesResource get volumes => _volumes;

  /** OAuth Scope2: Manage your books */
  static const String BOOKS_SCOPE = "https://www.googleapis.com/auth/books";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  String get alt => params["alt"];
  set alt(String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  String get fields => params["fields"];
  set fields(String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  String get key => params["key"];
  set key(String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  String get oauth_token => params["oauth_token"];
  set oauth_token(String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  String get quotaUser => params["quotaUser"];
  set quotaUser(String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  String get userIp => params["userIp"];
  set userIp(String value) => params["userIp"] = value;

  Books([OAuth2 auth]) : super(auth) {
    basePath = "/books/v1/";
    rootUrl = "https://www.googleapis.com:443/";
    _bookshelves = new BookshelvesResource(this);
    _layers = new LayersResource(this);
    _myconfig = new MyconfigResource(this);
    _mylibrary = new MylibraryResource(this);
    _volumes = new VolumesResource(this);
  }
}
