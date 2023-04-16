class BantenSebelumRecord {
  final String name;
  final String description;

  const BantenSebelumRecord(this.name, this.description);

  @override
  String toString() => name;
}

enum BantenSebelum { sugihan, pengerebuan, penyajan, penampan }

extension BantenSebelumExtension on BantenSebelum {
  BantenSebelumRecord toRecord() {
    switch (this) {
      case BantenSebelum.sugihan:
        return const BantenSebelumRecord("sugihan", "Sebelum Galungan");
      case BantenSebelum.pengerebuan:
        return const BantenSebelumRecord("pengerebuan", "Sebelum Galungan");
      case BantenSebelum.penyajan:
        return const BantenSebelumRecord("penyajan", "Sesudah Galungan");
      case BantenSebelum.penampan:
        return const BantenSebelumRecord("penampan", "Sesudah Galungan");
    }
  }
}

class TypeSugihan {
  final String name;

  const TypeSugihan(this.name);

  @override
  String toString() => name;
}

enum Type { jawa, bali, bukan }

extension TypeSugihanExtension on Type {
  TypeSugihan toRecord() {
    switch (this) {
      case Type.jawa:
        return const TypeSugihan('sugihan jawa');
      case Type.bali:
        return const TypeSugihan('sugihan bali');
      case Type.bukan:
        return const TypeSugihan('bukan sugihan');
    }
  }
}

class ExecutionTime {
  final String time;

  const ExecutionTime(this.time);

  @override
  String toString() => time;
}

enum Execution { sebelum, sesudah, saat }

extension ExecutionTimeExtention on Execution {
  ExecutionTime toRecord() {
    switch (this) {
      case Execution.sebelum:
        return const ExecutionTime('sebelum galungan');
      case Execution.sesudah:
        return const ExecutionTime('sesudah galungan');
      case Execution.saat:
        return const ExecutionTime('saat galungan');
    }
  }
}

class Dificulty {
  final String dificult;

  const Dificulty(this.dificult);

  @override
  String toString() => dificult;
}

enum DificultyEnum { easy, normal, hard }

extension DificultyExtention on DificultyEnum {
  Dificulty toRecord() {
    switch (this) {
      case DificultyEnum.easy:
        return const Dificulty('easy');
      case DificultyEnum.normal:
        return const Dificulty('normal');
      case DificultyEnum.hard:
        return const Dificulty('hard');
    }
  }
}

class Affordability {
  final String affordability;

  const Affordability(this.affordability);

  @override
  String toString() => affordability;
}

enum AffordabilityEnum { affordable, quiteAffordable, unreachable }

extension AffordabilityExtention on AffordabilityEnum {
  Affordability toRecord() {
    switch (this) {
      case AffordabilityEnum.affordable:
        return const Affordability('terjangkau');
      case AffordabilityEnum.quiteAffordable:
        return const Affordability('lumayan terjangkau');
      case AffordabilityEnum.unreachable:
        return const Affordability('tidak terjangkau');
    }
  }
}
