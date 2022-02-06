//
//
//

import 'package:casino_plus/config/image_names.dart';
import 'package:casino_plus/types/machine.dart';
import 'package:casino_plus/types/machine_id.dart';
import 'package:casino_plus/types/reel.dart';
import 'package:casino_plus/types/reel_id.dart';
import 'package:casino_plus/types/symbol_id.dart';

final List<MachineId> machineIds = [
  MachineId.classic,
];

final List<Reel> reels = [
  Reel(
    id: ReelIdExt.rawValues[ReelId.classicL]!,
    symbols: [
      SymbolIdExt.rawValues[SymbolId.luckySeven]!,
      SymbolIdExt.rawValues[SymbolId.cherry]!,
      SymbolIdExt.rawValues[SymbolId.clover]!,
      SymbolIdExt.rawValues[SymbolId.bell]!,
      SymbolIdExt.rawValues[SymbolId.horseshoe]!,
      SymbolIdExt.rawValues[SymbolId.cherry]!,
      SymbolIdExt.rawValues[SymbolId.clover]!,
      SymbolIdExt.rawValues[SymbolId.bell]!,
    ],
  ),
  Reel(
    id: ReelIdExt.rawValues[ReelId.classicC]!,
    symbols: [
      SymbolIdExt.rawValues[SymbolId.clover]!,
      SymbolIdExt.rawValues[SymbolId.luckySeven]!,
      SymbolIdExt.rawValues[SymbolId.bell]!,
      SymbolIdExt.rawValues[SymbolId.cherry]!,
      SymbolIdExt.rawValues[SymbolId.clover]!,
      SymbolIdExt.rawValues[SymbolId.horseshoe]!,
      SymbolIdExt.rawValues[SymbolId.bell]!,
      SymbolIdExt.rawValues[SymbolId.cherry]!,
    ],
  ),
  Reel(
    id: ReelIdExt.rawValues[ReelId.classicR]!,
    symbols: [
      SymbolIdExt.rawValues[SymbolId.cherry]!,
      SymbolIdExt.rawValues[SymbolId.bell]!,
      SymbolIdExt.rawValues[SymbolId.horseshoe]!,
      SymbolIdExt.rawValues[SymbolId.clover]!,
      SymbolIdExt.rawValues[SymbolId.cherry]!,
      SymbolIdExt.rawValues[SymbolId.bell]!,
      SymbolIdExt.rawValues[SymbolId.horseshoe]!,
      SymbolIdExt.rawValues[SymbolId.luckySeven]!,
    ],
  ),
];

final List<Machine> machines = [
  Machine(
    id: MachineIdExt.rawValues[MachineId.classic]!,
    name: "クラシック",
    miniImageUrl: "assets://" + ImageNames.slotMachineClassicFlat,
    accentColorHex: 'FF0800',
    baseColorHex: '222222',
    borderColorHex: '007700',
    reels: [
      ReelIdExt.rawValues[ReelId.classicL]!,
      ReelIdExt.rawValues[ReelId.classicC]!,
      ReelIdExt.rawValues[ReelId.classicR]!,
    ],
    spinCost: 20,
    memberSymbols: [
      SymbolIdExt.rawValues[SymbolId.cherry]!,
      SymbolIdExt.rawValues[SymbolId.bell]!,
      SymbolIdExt.rawValues[SymbolId.clover]!,
      SymbolIdExt.rawValues[SymbolId.cherry]!,
      SymbolIdExt.rawValues[SymbolId.horseshoe]!,
      SymbolIdExt.rawValues[SymbolId.luckySeven]!,
    ],
  ),
];
