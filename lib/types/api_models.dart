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
  final String player_id;
  final String nickname;
  final String icon_url;
  final String step;
  final int chip;
  Player(
    this.seat,
    this.player_id,
    this.nickname,
    this.icon_url,
    this.step,
    this.chip,
  );
  Player.fromJson(dynamic json)
      : seat = json['seat'],
        player_id = json['player_id'],
        nickname = json['nickname'],
        icon_url = json['nickname'],
        step = json['step'],
        chip = json['chip'];
  dynamic toJson() {
    return {
      'seat': seat,
      'player_id': player_id,
      'nickname': nickname,
      'icon_url': icon_url,
      'step': step,
      'chip': chip,
    };
  }
}

class Board {
  final List<BetBox> bet_boxes;
  final List<PutBox> put_boxes;
  final int inner_offset;
  final int outer_offset;
  const Board(
    this.bet_boxes,
    this.put_boxes,
    this.inner_offset,
    this.outer_offset,
  );
  Board.fromJson(dynamic json)
      : bet_boxes = List<dynamic>.from(json['bet_boxes'])
            .map((e) => BetBox.fromJson(e))
            .toList(),
        put_boxes = List<dynamic>.from(json['put_boxes'])
            .map((e) => PutBox.fromJson(e))
            .toList(),
        inner_offset = json['inner_offset'],
        outer_offset = json['outer_offset'];
  dynamic toJson() {
    return {
      'bet_boxes': bet_boxes.map((e) => e.toJson()),
      'put_boxes': put_boxes.map((e) => e.toJson()),
      'inner_offset': inner_offset,
      'outer_offset': outer_offset,
    };
  }
}

class BetBox {
  final int seat;
  final String? bet_level;
  BetBox(this.seat, this.bet_level);
  BetBox.fromJson(dynamic json)
      : seat = json['seat'],
        bet_level = json['bet_level'];
  dynamic toJson() {
    return {
      'seat': seat,
      'bet_level': bet_level,
    };
  }
}

class PutBox {
  final int seat;
  final bool has_card;
  PutBox(this.seat, this.has_card);
  PutBox.fromJson(dynamic json)
      : seat = json['seat'],
        has_card = json['has_card'];
  dynamic toJson() {
    return {
      'seat': seat,
      'has_card': has_card,
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
  final String put_card;
  final int old_inner_offset;
  final int? new_inner_offset;
  final int old_outer_offset;
  final int? new_outer_offset;
  ShowdownAnimation(
    this.seat,
    this.put_card,
    this.old_inner_offset,
    this.new_inner_offset,
    this.old_outer_offset,
    this.new_outer_offset,
  );
  ShowdownAnimation.fromJson(dynamic json)
      : seat = json['seat'],
        put_card = json['put_card'],
        old_inner_offset = json['old_inner_offset'],
        new_inner_offset = json['new_inner_offset'],
        old_outer_offset = json['old_outer_offset'],
        new_outer_offset = json['new_outer_offset'];
  dynamic toJson() {
    return {
      'seat': seat,
      'put_card': put_card,
      'old_inner_offset': old_inner_offset,
      'new_inner_offset': new_inner_offset,
      'old_outer_offset': old_outer_offset,
      'new_outer_offset': new_outer_offset,
    };
  }
}

class Score {
  final String player_id;
  final String nickname;
  final int old_total_chip;
  final int bonus_chip;
  final int new_total_chip;
  final String put_card;
  final String inner;
  final String outer;
  final String combo_name;
  Score(
    this.player_id,
    this.nickname,
    this.old_total_chip,
    this.bonus_chip,
    this.new_total_chip,
    this.put_card,
    this.inner,
    this.outer,
    this.combo_name,
  );
  Score.fromJson(dynamic json)
      : player_id = json['player_id'],
        nickname = json['nickname'],
        old_total_chip = json['old_total_chip'],
        bonus_chip = json['bonus_chip'],
        new_total_chip = json['new_total_chip'],
        put_card = json['put_card'],
        inner = json['inner'],
        outer = json['outer'],
        combo_name = json['combo_name'];
  dynamic toJson() {
    return {
      'player_id': player_id,
      'nickname': nickname,
      'old_total_chip': old_total_chip,
      'bonus_chip': bonus_chip,
      'new_total_chip': new_total_chip,
      'put_card': put_card,
      'inner': inner,
      'outer': outer,
      'combo_name': combo_name,
    };
  }
}

class Announce {
  final String announce_type;
  final Game game;
  final int? trigger_seat;
  final List<ShowdownAnimation>? showdown_list;
  final List<Score>? score_list;
  Announce(
    this.announce_type,
    this.game,
    this.trigger_seat,
    this.showdown_list,
    this.score_list,
  );
}
