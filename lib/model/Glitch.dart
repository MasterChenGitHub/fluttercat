class Glitch{
  String message;

  Glitch({ this.message=""});

  @override
  String toString() =>'Glitch(message: $message)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Glitch &&
          runtimeType == other.runtimeType &&
          message == other.message;

  @override
  int get hashCode => message.hashCode;
}