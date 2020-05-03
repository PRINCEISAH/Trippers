class Trips {
  int id;
  String TypeName;

  Trips(this.id, this.TypeName);
  static List<Trips> getTrips() {
    return <Trips>[
      Trips(1, "Buiness"),
      Trips(2, "Education"),
      Trips(3, "Health"),
      Trips(4, 'Vacation'),
    ];
  }
}
