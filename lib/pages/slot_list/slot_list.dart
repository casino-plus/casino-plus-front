import 'package:casino_plus/config/slot.dart';
import 'package:casino_plus/router/page_id.dart';
import 'package:casino_plus/router/router.dart';
import 'package:casino_plus/types/machine_id.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SlotList extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          for (var machineId in machineIds)
            item(MachineIdExt.rawValues[machineId]!, () {
              ref.read(router).pushBaseNavi(PageId.slot);
            }),
        ],
      ),
    );
  }

  Widget item(int machineId, void Function() onPressed) {
    final machine = machines.firstWhere((machine) => machine.id == machineId);
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(machine.name),
    );
  }
}
