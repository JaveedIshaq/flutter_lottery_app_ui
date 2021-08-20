/// Lottery Data Model
class Lottery {
  ///Constructor
  Lottery({
    this.logo,
    this.name,
    this.type,
    this.amount,
    this.country,
    this.flag,
    this.nextDrawTime,
  });

  /// Lottery Logo Name
  String? logo;

  /// Lottery Name
  String? name;

  ///Lottery Type
  String? type;

  ///Lottery Ammount
  String? amount;

  /// lottery place country
  String? country;

  /// lottery place country
  String? flag;

  /// next Lottery Draw Time and Date
  String? nextDrawTime;
}
