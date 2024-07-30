const String createTableItems = '''
CREATE TABLE items(
  id INTEGER PRIMARY KEY AUTOINCREMENT, 
  name TEXT,
  price REAL,
  size TEXT
)
''';

const String createTableUsers = '''
CREATE TABLE users(
  id INTEGER PRIMARY KEY AUTOINCREMENT, 
  firstName TEXT,
  lastName TEXT,
  age INTEGER
)
''';

const String createTableUserItems = '''
CREATE TABLE user_items(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  userId INTEGER,
  itemId INTEGER,
  quantity INTEGER,
  total REAL,
  FOREIGN KEY(userId) REFERENCES users(id),
  FOREIGN KEY(itemId) REFERENCES items(id)
)
''';
