class Flight {
  const Flight(
    this.id,
    this.departureAirport,
    this.arrivalAirport,
    this.departureDate,
    this.arrivalDate,
    this.noTravellers,
    this.ticketClass,
    this.paymentMethod,
    this.price,
  );

  final String id;
  final String departureAirport;
  final String arrivalAirport;
  final String departureDate;
  final String arrivalDate;
  final String noTravellers;
  final String ticketClass;
  final String paymentMethod;
  final String price;
}
