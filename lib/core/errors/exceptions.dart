class DatabaseException implements Exception {
  final String message;
  DatabaseException(this.message);

  @override
  String toString() => "DatabaseException: $message";
}

class InitializeException extends DatabaseException {
  InitializeException(super.message);
}

class InsertException extends DatabaseException {
  InsertException(super.message);
}

class QueryException extends DatabaseException {
  QueryException(super.message);
}

class UpdateException extends DatabaseException {
  UpdateException(super.message);
}

class DeleteException extends DatabaseException {
  DeleteException(super.message);
}
