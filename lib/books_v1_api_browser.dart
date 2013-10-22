library books_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_books_v1_api/src/browser_client.dart';
import "package:google_books_v1_api/books_v1_api_client.dart";

/** Lets you search for books and manage your Google Books library. */
class Books extends Client with BrowserClient {

  /** OAuth Scope2: Manage your books */
  static const String BOOKS_SCOPE = "https://www.googleapis.com/auth/books";

  final oauth.OAuth2 auth;

  Books([oauth.OAuth2 this.auth]);
}
