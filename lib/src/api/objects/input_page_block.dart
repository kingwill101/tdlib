import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a block of a rich message to send
@immutable
sealed class InputPageBlock extends TdObject {
  const InputPageBlock();

  static const String constructor = 'inputPageBlock';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [InputPageBlockAnchor]
  /// [InputPageBlockAnimation]
  /// [InputPageBlockAudio]
  /// [InputPageBlockBlockQuote]
  /// [InputPageBlockCollage]
  /// [InputPageBlockDetails]
  /// [InputPageBlockDivider]
  /// [InputPageBlockFooter]
  /// [InputPageBlockList]
  /// [InputPageBlockMap]
  /// [InputPageBlockMathematicalExpression]
  /// [InputPageBlockParagraph]
  /// [InputPageBlockPhoto]
  /// [InputPageBlockPreformatted]
  /// [InputPageBlockPullQuote]
  /// [InputPageBlockSectionHeading]
  /// [InputPageBlockSlideshow]
  /// [InputPageBlockTable]
  /// [InputPageBlockThinking]
  /// [InputPageBlockVideo]
  /// [InputPageBlockVoiceNote]
  static InputPageBlock? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputPageBlockAnchor.constructor:
        return InputPageBlockAnchor.fromJson(json);

      case InputPageBlockAnimation.constructor:
        return InputPageBlockAnimation.fromJson(json);

      case InputPageBlockAudio.constructor:
        return InputPageBlockAudio.fromJson(json);

      case InputPageBlockBlockQuote.constructor:
        return InputPageBlockBlockQuote.fromJson(json);

      case InputPageBlockCollage.constructor:
        return InputPageBlockCollage.fromJson(json);

      case InputPageBlockDetails.constructor:
        return InputPageBlockDetails.fromJson(json);

      case InputPageBlockDivider.constructor:
        return InputPageBlockDivider.fromJson(json);

      case InputPageBlockFooter.constructor:
        return InputPageBlockFooter.fromJson(json);

      case InputPageBlockList.constructor:
        return InputPageBlockList.fromJson(json);

      case InputPageBlockMap.constructor:
        return InputPageBlockMap.fromJson(json);

      case InputPageBlockMathematicalExpression.constructor:
        return InputPageBlockMathematicalExpression.fromJson(json);

      case InputPageBlockParagraph.constructor:
        return InputPageBlockParagraph.fromJson(json);

      case InputPageBlockPhoto.constructor:
        return InputPageBlockPhoto.fromJson(json);

      case InputPageBlockPreformatted.constructor:
        return InputPageBlockPreformatted.fromJson(json);

      case InputPageBlockPullQuote.constructor:
        return InputPageBlockPullQuote.fromJson(json);

      case InputPageBlockSectionHeading.constructor:
        return InputPageBlockSectionHeading.fromJson(json);

      case InputPageBlockSlideshow.constructor:
        return InputPageBlockSlideshow.fromJson(json);

      case InputPageBlockTable.constructor:
        return InputPageBlockTable.fromJson(json);

      case InputPageBlockThinking.constructor:
        return InputPageBlockThinking.fromJson(json);

      case InputPageBlockVideo.constructor:
        return InputPageBlockVideo.fromJson(json);

      case InputPageBlockVoiceNote.constructor:
        return InputPageBlockVoiceNote.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An invisible anchor
@immutable
final class InputPageBlockAnchor extends InputPageBlock {
  InputPageBlockAnchor({required this.name});

  /// [name] Name of the anchor
  final String name;

  static const String constructor = 'inputPageBlockAnchor';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    '@type': constructor,
  };

  static InputPageBlockAnchor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockAnchor(name: (json['name'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An animation
@immutable
final class InputPageBlockAnimation extends InputPageBlock {
  InputPageBlockAnimation({
    this.animation,
    this.caption,
    required this.hasSpoiler,
  });

  /// [animation] The animation to be sent
  final InputAnimation? animation;

  /// [caption] Animation caption; pass null if none
  final PageBlockCaption? caption;

  /// [hasSpoiler] True, if the animation preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  static const String constructor = 'inputPageBlockAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'animation': animation?.toJson(),
    'caption': caption?.toJson(),
    'has_spoiler': hasSpoiler,
    '@type': constructor,
  };

  static InputPageBlockAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockAnimation(
      animation: InputAnimation.fromJson(tdMapFromJson(json['animation'])),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
      hasSpoiler: (json['has_spoiler'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An audio file
@immutable
final class InputPageBlockAudio extends InputPageBlock {
  InputPageBlockAudio({this.audio, this.caption});

  /// [audio] The audio to be sent
  final InputAudio? audio;

  /// [caption] Audio file caption; pass null if none
  final PageBlockCaption? caption;

  static const String constructor = 'inputPageBlockAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'audio': audio?.toJson(),
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static InputPageBlockAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockAudio(
      audio: InputAudio.fromJson(tdMapFromJson(json['audio'])),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A block quote
@immutable
final class InputPageBlockBlockQuote extends InputPageBlock {
  InputPageBlockBlockQuote({required this.blocks, this.credit});

  /// [blocks] Quote blocks
  final List<InputPageBlock> blocks;

  /// [credit] Quote credit; pass null if none
  final RichText? credit;

  static const String constructor = 'inputPageBlockBlockQuote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'blocks': blocks.map((item) => item.toJson()).toList(),
    'credit': credit?.toJson(),
    '@type': constructor,
  };

  static InputPageBlockBlockQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockBlockQuote(
      blocks: List<InputPageBlock>.from(
        tdListFromJson(json['blocks'])
            .map((item) => InputPageBlock.fromJson(tdMapFromJson(item)))
            .whereType<InputPageBlock>(),
      ),
      credit: RichText.fromJson(tdMapFromJson(json['credit'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A collage
@immutable
final class InputPageBlockCollage extends InputPageBlock {
  InputPageBlockCollage({required this.blocks, this.caption});

  /// [blocks] Collage item contents
  final List<InputPageBlock> blocks;

  /// [caption] Block caption; pass null if none
  final PageBlockCaption? caption;

  static const String constructor = 'inputPageBlockCollage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'blocks': blocks.map((item) => item.toJson()).toList(),
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static InputPageBlockCollage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockCollage(
      blocks: List<InputPageBlock>.from(
        tdListFromJson(json['blocks'])
            .map((item) => InputPageBlock.fromJson(tdMapFromJson(item)))
            .whereType<InputPageBlock>(),
      ),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A collapsible block
@immutable
final class InputPageBlockDetails extends InputPageBlock {
  InputPageBlockDetails({
    this.header,
    required this.blocks,
    required this.isOpen,
  });

  /// [header] Always visible heading for the block
  final RichText? header;

  /// [blocks] Block contents
  final List<InputPageBlock> blocks;

  /// [isOpen] True, if the block is open by default
  final bool isOpen;

  static const String constructor = 'inputPageBlockDetails';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'header': header?.toJson(),
    'blocks': blocks.map((item) => item.toJson()).toList(),
    'is_open': isOpen,
    '@type': constructor,
  };

  static InputPageBlockDetails? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockDetails(
      header: RichText.fromJson(tdMapFromJson(json['header'])),
      blocks: List<InputPageBlock>.from(
        tdListFromJson(json['blocks'])
            .map((item) => InputPageBlock.fromJson(tdMapFromJson(item)))
            .whereType<InputPageBlock>(),
      ),
      isOpen: (json['is_open'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An empty block separating the page
@immutable
final class InputPageBlockDivider extends InputPageBlock {
  const InputPageBlockDivider();

  static const String constructor = 'inputPageBlockDivider';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static InputPageBlockDivider? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InputPageBlockDivider();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The footer of the page
@immutable
final class InputPageBlockFooter extends InputPageBlock {
  InputPageBlockFooter({this.footer});

  /// [footer] Footer
  final RichText? footer;

  static const String constructor = 'inputPageBlockFooter';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'footer': footer?.toJson(),
    '@type': constructor,
  };

  static InputPageBlockFooter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockFooter(
      footer: RichText.fromJson(tdMapFromJson(json['footer'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A list of data blocks
@immutable
final class InputPageBlockList extends InputPageBlock {
  InputPageBlockList({required this.items});

  /// [items] The items of the list
  final List<InputPageBlockListItem> items;

  static const String constructor = 'inputPageBlockList';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'items': items.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static InputPageBlockList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockList(
      items: List<InputPageBlockListItem>.from(
        tdListFromJson(json['items'])
            .map((item) => InputPageBlockListItem.fromJson(tdMapFromJson(item)))
            .whereType<InputPageBlockListItem>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A map. The map's width and height must not exceed 10000 in total. Width
/// and height ratio must be at most 20
@immutable
final class InputPageBlockMap extends InputPageBlock {
  InputPageBlockMap({
    this.location,
    required this.zoom,
    required this.width,
    required this.height,
    this.caption,
  });

  /// [location] Location of the map center
  final Location? location;

  /// [zoom] Map zoom level; 0-24
  final int zoom;

  /// [width] Map width; 0-10000
  final int width;

  /// [height] Map height; 0-10000
  final int height;

  /// [caption] Block caption; pass null if none
  final PageBlockCaption? caption;

  static const String constructor = 'inputPageBlockMap';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'location': location?.toJson(),
    'zoom': zoom,
    'width': width,
    'height': height,
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static InputPageBlockMap? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockMap(
      location: Location.fromJson(tdMapFromJson(json['location'])),
      zoom: (json['zoom'] as int?) ?? 0,
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A mathematical expression
@immutable
final class InputPageBlockMathematicalExpression extends InputPageBlock {
  InputPageBlockMathematicalExpression({required this.expression});

  /// [expression] The expression in LaTeX format
  final String expression;

  static const String constructor = 'inputPageBlockMathematicalExpression';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'expression': expression,
    '@type': constructor,
  };

  static InputPageBlockMathematicalExpression? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return InputPageBlockMathematicalExpression(
      expression: (json['expression'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A text paragraph
@immutable
final class InputPageBlockParagraph extends InputPageBlock {
  InputPageBlockParagraph({this.text});

  /// [text] Paragraph text
  final RichText? text;

  static const String constructor = 'inputPageBlockParagraph';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    '@type': constructor,
  };

  static InputPageBlockParagraph? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockParagraph(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A photo
@immutable
final class InputPageBlockPhoto extends InputPageBlock {
  InputPageBlockPhoto({this.photo, this.caption, required this.hasSpoiler});

  /// [photo] The photo to be sent
  final InputPhoto? photo;

  /// [caption] Photo caption; pass null if none
  final PageBlockCaption? caption;

  /// [hasSpoiler] True, if the photo preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  static const String constructor = 'inputPageBlockPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    'caption': caption?.toJson(),
    'has_spoiler': hasSpoiler,
    '@type': constructor,
  };

  static InputPageBlockPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockPhoto(
      photo: InputPhoto.fromJson(tdMapFromJson(json['photo'])),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
      hasSpoiler: (json['has_spoiler'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A preformatted text paragraph
@immutable
final class InputPageBlockPreformatted extends InputPageBlock {
  InputPageBlockPreformatted({this.text, required this.language});

  /// [text] Paragraph text
  final RichText? text;

  /// [language] Programming language for which the text needs to be formatted
  final String language;

  static const String constructor = 'inputPageBlockPreformatted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'language': language,
    '@type': constructor,
  };

  static InputPageBlockPreformatted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockPreformatted(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      language: (json['language'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A pull quote
@immutable
final class InputPageBlockPullQuote extends InputPageBlock {
  InputPageBlockPullQuote({this.text, this.credit});

  /// [text] Quote text
  final RichText? text;

  /// [credit] Quote credit; pass null if none
  final RichText? credit;

  static const String constructor = 'inputPageBlockPullQuote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'credit': credit?.toJson(),
    '@type': constructor,
  };

  static InputPageBlockPullQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockPullQuote(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      credit: RichText.fromJson(tdMapFromJson(json['credit'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A section heading
@immutable
final class InputPageBlockSectionHeading extends InputPageBlock {
  InputPageBlockSectionHeading({this.text, required this.size});

  /// [text] Text of the section heading
  final RichText? text;

  /// [size] Relative size of the text font; 1-6, 1 is the largest, 6 is the
  /// smallest
  final int size;

  static const String constructor = 'inputPageBlockSectionHeading';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'size': size,
    '@type': constructor,
  };

  static InputPageBlockSectionHeading? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockSectionHeading(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      size: (json['size'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A slideshow
@immutable
final class InputPageBlockSlideshow extends InputPageBlock {
  InputPageBlockSlideshow({required this.blocks, this.caption});

  /// [blocks] Slideshow item contents
  final List<InputPageBlock> blocks;

  /// [caption] Block caption; pass null if none
  final PageBlockCaption? caption;

  static const String constructor = 'inputPageBlockSlideshow';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'blocks': blocks.map((item) => item.toJson()).toList(),
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static InputPageBlockSlideshow? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockSlideshow(
      blocks: List<InputPageBlock>.from(
        tdListFromJson(json['blocks'])
            .map((item) => InputPageBlock.fromJson(tdMapFromJson(item)))
            .whereType<InputPageBlock>(),
      ),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A table
@immutable
final class InputPageBlockTable extends InputPageBlock {
  InputPageBlockTable({
    this.caption,
    required this.cells,
    required this.isBordered,
    required this.isStriped,
  });

  /// [caption] Table caption
  final RichText? caption;

  /// [cells] Table cells
  final List<List<PageBlockTableCell>> cells;

  /// [isBordered] True, if the table is bordered
  final bool isBordered;

  /// [isStriped] True, if the table is striped
  final bool isStriped;

  static const String constructor = 'inputPageBlockTable';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'caption': caption?.toJson(),
    'cells': cells
        .map((item) => item.map((item) => item.toJson()).toList())
        .toList(),
    'is_bordered': isBordered,
    'is_striped': isStriped,
    '@type': constructor,
  };

  static InputPageBlockTable? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockTable(
      caption: RichText.fromJson(tdMapFromJson(json['caption'])),
      cells: List<List<PageBlockTableCell>>.from(
        tdListFromJson(json['cells'])
            .map(
              (item) => List<PageBlockTableCell>.from(
                tdListFromJson(json['List<PageBlockTableCell>'])
                    .map(
                      (item) =>
                          PageBlockTableCell.fromJson(tdMapFromJson(item)),
                    )
                    .whereType<PageBlockTableCell>(),
              ),
            )
            .whereType<List<PageBlockTableCell>>(),
      ),
      isBordered: (json['is_bordered'] as bool?) ?? false,
      isStriped: (json['is_striped'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A "Thinking..." placeholder; for pending rich messages only; for bots only
@immutable
final class InputPageBlockThinking extends InputPageBlock {
  InputPageBlockThinking({this.text});

  /// [text] Text of the placeholder
  final RichText? text;

  static const String constructor = 'inputPageBlockThinking';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    '@type': constructor,
  };

  static InputPageBlockThinking? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockThinking(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video
@immutable
final class InputPageBlockVideo extends InputPageBlock {
  InputPageBlockVideo({this.video, this.caption, required this.hasSpoiler});

  /// [video] The video to be sent
  final InputVideo? video;

  /// [caption] Video caption; pass null if none
  final PageBlockCaption? caption;

  /// [hasSpoiler] True, if the video preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  static const String constructor = 'inputPageBlockVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video?.toJson(),
    'caption': caption?.toJson(),
    'has_spoiler': hasSpoiler,
    '@type': constructor,
  };

  static InputPageBlockVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockVideo(
      video: InputVideo.fromJson(tdMapFromJson(json['video'])),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
      hasSpoiler: (json['has_spoiler'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A voice note
@immutable
final class InputPageBlockVoiceNote extends InputPageBlock {
  InputPageBlockVoiceNote({this.voiceNote, this.caption});

  /// [voiceNote] The voice note to be sent
  final InputVoiceNote? voiceNote;

  /// [caption] Voice note caption; pass null if none
  final PageBlockCaption? caption;

  static const String constructor = 'inputPageBlockVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'voice_note': voiceNote?.toJson(),
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static InputPageBlockVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockVoiceNote(
      voiceNote: InputVoiceNote.fromJson(tdMapFromJson(json['voice_note'])),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
