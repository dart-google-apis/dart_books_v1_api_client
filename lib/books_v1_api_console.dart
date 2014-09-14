library books_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_books_v1_api/src/console_client.dart';

import "package:google_books_v1_api/books_v1_api_client.dart";

/** Lets you search for books and manage your Google Books library. */
@deprecated
class Books extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your books */
  static const String BOOKS_SCOPE = "https://www.googleapis.com/auth/books";

  final oauth2.OAuth2Console auth;

  Books([oauth2.OAuth2Console this.auth]);
}
