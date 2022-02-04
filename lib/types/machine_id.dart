//
//
//

enum MachineId {
  classic,
  free,
  developer,
  v1,
}

extension MachineIdExt on MachineId {
  static final Map<MachineId, int> rawValues = {
    MachineId.classic: 1,
    MachineId.free: 2,
    MachineId.developer: 3,
    MachineId.v1: 4,
  };
  static MachineId from(int rawValue) {
    final MachineId member = MachineIdExt.rawValues.keys
        .firstWhere((key) => MachineIdExt.rawValues[key] == rawValue);
    return member;
  }
}
