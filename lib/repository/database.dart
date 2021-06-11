class Database {
  bool created = false;

  Future<bool> createDatabase() async {
    await Future.delayed(
      Duration(milliseconds: 100),
    );
    this.created = true;
    return created;
  }
}
