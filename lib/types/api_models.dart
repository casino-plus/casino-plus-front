//
//
//

class User {
  final int id;
  final String mail;
  final String nickname;
  final int chip;
  final List<String> symbols;
  final String iconURL;
  final String selfIntro;
  const User(this.mail, this.nickname)
      : id = 0,
        chip = 0,
        symbols = const [],
        iconURL = '',
        selfIntro = '';
  User.fromJson(dynamic json)
      : id = json['id'],
        mail = json['mail'],
        nickname = json['nickname'],
        chip = json['chip'],
        symbols = List<dynamic>.from(json['symbols'])
            .map((e) => e.toString())
            .toList(),
        iconURL = json['icon_url'],
        selfIntro = json['self_intro'];
  dynamic toJson() {
    return {
      'id': id,
      'mail': mail,
      'nickname': nickname,
      'chip': chip,
      'symbols': symbols,
      'icon_url': iconURL,
      'self_intro': selfIntro,
    };
  }
}

class Game {
  final List<Player> players;
  final Board board;
  final Dock dock;
  const Game(
    this.players,
    this.board,
    this.dock,
  );
  Game.fromJson(dynamic json)
      : players = List<dynamic>.from(json['players'])
            .map((e) => Player.fromJson(e))
            .toList(),
        board = Board.fromJson(json['board']),
        dock = Dock.fromJson(json['dock']);
  dynamic toJson() {
    return {
      'players': players.map((e) => e.toJson()),
      'board': board.toJson(),
      'dock': dock.toJson(),
    };
  }
}

class Player {
  final int seat;
  final String playerId;
  final String nickname;
  final String iconUrl;
  final String step;
  final int chip;
  Player(
    this.seat,
    this.playerId,
    this.nickname,
    this.iconUrl,
    this.step,
    this.chip,
  );
  Player.fromJson(dynamic json)
      : seat = json['seat'],
        playerId = json['player_id'],
        nickname = json['nickname'],
        iconUrl = json['nickname'],
        step = json['step'],
        chip = json['chip'];
  dynamic toJson() {
    return {
      'seat': seat,
      'player_id': playerId,
      'nickname': nickname,
      'icon_url': iconUrl,
      'step': step,
      'chip': chip,
    };
  }
}

class Board {
  final List<BetBox> betBoxes;
  final List<PutBox> putBoxes;
  final int innerOffset;
  final int outerOffset;
  const Board(
    this.betBoxes,
    this.putBoxes,
    this.innerOffset,
    this.outerOffset,
  );
  Board.fromJson(dynamic json)
      : betBoxes = List<dynamic>.from(json['bet_boxes'])
            .map((e) => BetBox.fromJson(e))
            .toList(),
        putBoxes = List<dynamic>.from(json['put_boxes'])
            .map((e) => PutBox.fromJson(e))
            .toList(),
        innerOffset = json['inner_offset'],
        outerOffset = json['outer_offset'];
  dynamic toJson() {
    return {
      'bet_boxes': betBoxes.map((e) => e.toJson()),
      'put_boxes': putBoxes.map((e) => e.toJson()),
      'inner_offset': innerOffset,
      'outer_offset': outerOffset,
    };
  }
}

class BetBox {
  final int seat;
  final String? betLevel;
  BetBox(this.seat, this.betLevel);
  BetBox.fromJson(dynamic json)
      : seat = json['seat'],
        betLevel = json['bet_level'];
  dynamic toJson() {
    return {
      'seat': seat,
      'bet_level': betLevel,
    };
  }
}

class PutBox {
  final int seat;
  final bool hasCard;
  PutBox(this.seat, this.hasCard);
  PutBox.fromJson(dynamic json)
      : seat = json['seat'],
        hasCard = json['has_card'];
  dynamic toJson() {
    return {
      'seat': seat,
      'has_card': hasCard,
    };
  }
}

class Dock {
  final List<String> cards;
  const Dock(this.cards);
  Dock.fromJson(dynamic json) : cards = json['cards'];
  dynamic toJson() {
    return {
      'cards': cards,
    };
  }
}

class ShowdownAnimation {
  final int seat;
  final String putCard;
  final int oldInnerOffset;
  final int? newInnerOffset;
  final int oldOuterOffset;
  final int? newOuterOffset;
  ShowdownAnimation(
    this.seat,
    this.putCard,
    this.oldInnerOffset,
    this.newInnerOffset,
    this.oldOuterOffset,
    this.newOuterOffset,
  );
  ShowdownAnimation.fromJson(dynamic json)
      : seat = json['seat'],
        putCard = json['put_card'],
        oldInnerOffset = json['old_inner_offset'],
        newInnerOffset = json['new_inner_offset'],
        oldOuterOffset = json['old_outer_offset'],
        newOuterOffset = json['new_outer_offset'];
  dynamic toJson() {
    return {
      'seat': seat,
      'put_card': putCard,
      'old_inner_offset': oldInnerOffset,
      'new_inner_offset': newInnerOffset,
      'old_outer_offset': oldOuterOffset,
      'new_outer_offset': newOuterOffset,
    };
  }
}

class Score {
  final String playerId;
  final String nickname;
  final int oldTotalChip;
  final int bonusChip;
  final int newTotalChip;
  final String putCard;
  final String inner;
  final String outer;
  final String comboName;
  Score(
    this.playerId,
    this.nickname,
    this.oldTotalChip,
    this.bonusChip,
    this.newTotalChip,
    this.putCard,
    this.inner,
    this.outer,
    this.comboName,
  );
  Score.fromJson(dynamic json)
      : playerId = json['player_id'],
        nickname = json['nickname'],
        oldTotalChip = json['old_total_chip'],
        bonusChip = json['bonus_chip'],
        newTotalChip = json['new_total_chip'],
        putCard = json['put_card'],
        inner = json['inner'],
        outer = json['outer'],
        comboName = json['combo_name'];
  dynamic toJson() {
    return {
      'player_id': playerId,
      'nickname': nickname,
      'old_total_chip': oldTotalChip,
      'bonus_chip': bonusChip,
      'new_total_chip': newTotalChip,
      'put_card': putCard,
      'inner': inner,
      'outer': outer,
      'combo_name': comboName,
    };
  }
}

class Announce {
  final String announceType;
  final Game game;
  final int? triggerSeat;
  final List<ShowdownAnimation>? showdownList;
  final List<Score>? scoreList;
  Announce(
    this.announceType,
    this.game,
    this.triggerSeat,
    this.showdownList,
    this.scoreList,
  );
}
