extension initials on String {
  String getInitials() {
    return this.isNotEmpty
        ? this.trim().split(" ").map((e) => e[0]).take(2).join().toUpperCase()
        : "";
  }
}
