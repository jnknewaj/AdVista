/// Common documentation for exceptions handled by HTTP requests.
const String docsCommonHttpExceptions = '''
Throws:
- [NetworkException]: If there is no network connectivity or a network-related issue occurs.
- [TimeoutException]: If the request takes longer than 15 seconds to complete.
- [ParsingException]: If the server response cannot be parsed into JSON.
- [ServerException]: If the server returns a non-200 status code.
- [UnknownException]: If an unexpected error occurs.
''';
