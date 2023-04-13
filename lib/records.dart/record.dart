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
