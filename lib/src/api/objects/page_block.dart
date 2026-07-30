import 'package:meta/meta.dart';

import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a block of an instant view for a web page or a block of a rich
/// message
@immutable
sealed class PageBlock extends TdObject {
  const PageBlock();

  static const String constructor = 'pageBlock';

  @override
  String getConstructor() => constructor;

  /// Inherited by:
  /// [PageBlockAnchor]
  /// [PageBlockAnimation]
  /// [PageBlockAudio]
  /// [PageBlockAuthorDate]
  /// [PageBlockBlockQuote]
  /// [PageBlockChatLink]
  /// [PageBlockCollage]
  /// [PageBlockCover]
  /// [PageBlockDetails]
  /// [PageBlockDivider]
  /// [PageBlockEmbedded]
  /// [PageBlockEmbeddedPost]
  /// [PageBlockFooter]
  /// [PageBlockHeader]
  /// [PageBlockKicker]
  /// [PageBlockList]
  /// [PageBlockMap]
  /// [PageBlockMathematicalExpression]
  /// [PageBlockParagraph]
  /// [PageBlockPhoto]
  /// [PageBlockPreformatted]
  /// [PageBlockPullQuote]
  /// [PageBlockRelatedArticles]
  /// [PageBlockSectionHeading]
  /// [PageBlockSlideshow]
  /// [PageBlockSubheader]
  /// [PageBlockSubtitle]
  /// [PageBlockTable]
  /// [PageBlockThinking]
  /// [PageBlockTitle]
  /// [PageBlockVideo]
  /// [PageBlockVoiceNote]
  static PageBlock? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PageBlockAnchor.constructor:
        return PageBlockAnchor.fromJson(json);

      case PageBlockAnimation.constructor:
        return PageBlockAnimation.fromJson(json);

      case PageBlockAudio.constructor:
        return PageBlockAudio.fromJson(json);

      case PageBlockAuthorDate.constructor:
        return PageBlockAuthorDate.fromJson(json);

      case PageBlockBlockQuote.constructor:
        return PageBlockBlockQuote.fromJson(json);

      case PageBlockChatLink.constructor:
        return PageBlockChatLink.fromJson(json);

      case PageBlockCollage.constructor:
        return PageBlockCollage.fromJson(json);

      case PageBlockCover.constructor:
        return PageBlockCover.fromJson(json);

      case PageBlockDetails.constructor:
        return PageBlockDetails.fromJson(json);

      case PageBlockDivider.constructor:
        return PageBlockDivider.fromJson(json);

      case PageBlockEmbedded.constructor:
        return PageBlockEmbedded.fromJson(json);

      case PageBlockEmbeddedPost.constructor:
        return PageBlockEmbeddedPost.fromJson(json);

      case PageBlockFooter.constructor:
        return PageBlockFooter.fromJson(json);

      case PageBlockHeader.constructor:
        return PageBlockHeader.fromJson(json);

      case PageBlockKicker.constructor:
        return PageBlockKicker.fromJson(json);

      case PageBlockList.constructor:
        return PageBlockList.fromJson(json);

      case PageBlockMap.constructor:
        return PageBlockMap.fromJson(json);

      case PageBlockMathematicalExpression.constructor:
        return PageBlockMathematicalExpression.fromJson(json);

      case PageBlockParagraph.constructor:
        return PageBlockParagraph.fromJson(json);

      case PageBlockPhoto.constructor:
        return PageBlockPhoto.fromJson(json);

      case PageBlockPreformatted.constructor:
        return PageBlockPreformatted.fromJson(json);

      case PageBlockPullQuote.constructor:
        return PageBlockPullQuote.fromJson(json);

      case PageBlockRelatedArticles.constructor:
        return PageBlockRelatedArticles.fromJson(json);

      case PageBlockSectionHeading.constructor:
        return PageBlockSectionHeading.fromJson(json);

      case PageBlockSlideshow.constructor:
        return PageBlockSlideshow.fromJson(json);

      case PageBlockSubheader.constructor:
        return PageBlockSubheader.fromJson(json);

      case PageBlockSubtitle.constructor:
        return PageBlockSubtitle.fromJson(json);

      case PageBlockTable.constructor:
        return PageBlockTable.fromJson(json);

      case PageBlockThinking.constructor:
        return PageBlockThinking.fromJson(json);

      case PageBlockTitle.constructor:
        return PageBlockTitle.fromJson(json);

      case PageBlockVideo.constructor:
        return PageBlockVideo.fromJson(json);

      case PageBlockVoiceNote.constructor:
        return PageBlockVoiceNote.fromJson(json);

      default:
        return null;
    }
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An invisible anchor on a page, which can be used in a URL to open the page
/// from the specified anchor
@immutable
final class PageBlockAnchor extends PageBlock {
  PageBlockAnchor({required this.name});

  /// [name] Name of the anchor
  final String name;

  static const String constructor = 'pageBlockAnchor';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'name': name,
    '@type': constructor,
  };

  static PageBlockAnchor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAnchor(name: (json['name'] as String?) ?? '');
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An animation
@immutable
final class PageBlockAnimation extends PageBlock {
  PageBlockAnimation({
    this.animation,
    this.caption,
    required this.needAutoplay,
    required this.hasSpoiler,
  });

  /// [animation] Animation file; may be null
  final Animation? animation;

  /// [caption] Animation caption; may be null if none
  final PageBlockCaption? caption;

  /// [needAutoplay] True, if the animation must be played automatically
  final bool needAutoplay;

  /// [hasSpoiler] True, if the animation preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  static const String constructor = 'pageBlockAnimation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'animation': animation?.toJson(),
    'caption': caption?.toJson(),
    'need_autoplay': needAutoplay,
    'has_spoiler': hasSpoiler,
    '@type': constructor,
  };

  static PageBlockAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAnimation(
      animation: Animation.fromJson(tdMapFromJson(json['animation'])),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
      needAutoplay: (json['need_autoplay'] as bool?) ?? false,
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
final class PageBlockAudio extends PageBlock {
  PageBlockAudio({this.audio, this.caption});

  /// [audio] Audio file; may be null
  final Audio? audio;

  /// [caption] Audio file caption; may be null if none
  final PageBlockCaption? caption;

  static const String constructor = 'pageBlockAudio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'audio': audio?.toJson(),
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static PageBlockAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAudio(
      audio: Audio.fromJson(tdMapFromJson(json['audio'])),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The author and publishing date of a page; instant view only
@immutable
final class PageBlockAuthorDate extends PageBlock {
  PageBlockAuthorDate({this.author, required this.publishDate});

  /// [author] Author
  final RichText? author;

  /// [publishDate] Point in time (Unix timestamp) when the article was
  /// published; 0 if unknown
  final int publishDate;

  static const String constructor = 'pageBlockAuthorDate';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'author': author?.toJson(),
    'publish_date': publishDate,
    '@type': constructor,
  };

  static PageBlockAuthorDate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockAuthorDate(
      author: RichText.fromJson(tdMapFromJson(json['author'])),
      publishDate: (json['publish_date'] as int?) ?? 0,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A block quote
@immutable
final class PageBlockBlockQuote extends PageBlock {
  PageBlockBlockQuote({required this.blocks, this.credit});

  /// [blocks] Quote blocks
  final List<PageBlock> blocks;

  /// [credit] Quote credit; may be null if none
  final RichText? credit;

  static const String constructor = 'pageBlockBlockQuote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'blocks': blocks.map((item) => item.toJson()).toList(),
    'credit': credit?.toJson(),
    '@type': constructor,
  };

  static PageBlockBlockQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockBlockQuote(
      blocks: List<PageBlock>.from(
        tdListFromJson(json['blocks'])
            .map((item) => PageBlock.fromJson(tdMapFromJson(item)))
            .whereType<PageBlock>(),
      ),
      credit: RichText.fromJson(tdMapFromJson(json['credit'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A link to a chat; instant view only
@immutable
final class PageBlockChatLink extends PageBlock {
  PageBlockChatLink({
    required this.title,
    this.photo,
    required this.accentColorId,
    required this.username,
  });

  /// [title] Chat title
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [accentColorId] Identifier of the accent color for chat title and
  /// background of chat photo
  final int accentColorId;

  /// [username] Chat username by which all other information about the chat can
  /// be resolved
  final String username;

  static const String constructor = 'pageBlockChatLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'photo': photo?.toJson(),
    'accent_color_id': accentColorId,
    'username': username,
    '@type': constructor,
  };

  static PageBlockChatLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockChatLink(
      title: (json['title'] as String?) ?? '',
      photo: ChatPhotoInfo.fromJson(tdMapFromJson(json['photo'])),
      accentColorId: (json['accent_color_id'] as int?) ?? 0,
      username: (json['username'] as String?) ?? '',
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A collage
@immutable
final class PageBlockCollage extends PageBlock {
  PageBlockCollage({required this.blocks, this.caption});

  /// [blocks] Collage item contents
  final List<PageBlock> blocks;

  /// [caption] Block caption; may be null if none
  final PageBlockCaption? caption;

  static const String constructor = 'pageBlockCollage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'blocks': blocks.map((item) => item.toJson()).toList(),
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static PageBlockCollage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockCollage(
      blocks: List<PageBlock>.from(
        tdListFromJson(json['blocks'])
            .map((item) => PageBlock.fromJson(tdMapFromJson(item)))
            .whereType<PageBlock>(),
      ),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A page cover; instant view only
@immutable
final class PageBlockCover extends PageBlock {
  PageBlockCover({this.cover});

  /// [cover] Cover
  final PageBlock? cover;

  static const String constructor = 'pageBlockCover';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'cover': cover?.toJson(),
    '@type': constructor,
  };

  static PageBlockCover? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockCover(
      cover: PageBlock.fromJson(tdMapFromJson(json['cover'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A collapsible block
@immutable
final class PageBlockDetails extends PageBlock {
  PageBlockDetails({this.header, required this.blocks, required this.isOpen});

  /// [header] Always visible heading for the block
  final RichText? header;

  /// [blocks] Block contents
  final List<PageBlock> blocks;

  /// [isOpen] True, if the block is open by default
  final bool isOpen;

  static const String constructor = 'pageBlockDetails';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'header': header?.toJson(),
    'blocks': blocks.map((item) => item.toJson()).toList(),
    'is_open': isOpen,
    '@type': constructor,
  };

  static PageBlockDetails? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockDetails(
      header: RichText.fromJson(tdMapFromJson(json['header'])),
      blocks: List<PageBlock>.from(
        tdListFromJson(json['blocks'])
            .map((item) => PageBlock.fromJson(tdMapFromJson(item)))
            .whereType<PageBlock>(),
      ),
      isOpen: (json['is_open'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An empty block separating a page
@immutable
final class PageBlockDivider extends PageBlock {
  const PageBlockDivider();

  static const String constructor = 'pageBlockDivider';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  static PageBlockDivider? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockDivider();
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An embedded web page; instant view only
@immutable
final class PageBlockEmbedded extends PageBlock {
  PageBlockEmbedded({
    required this.url,
    required this.html,
    this.posterPhoto,
    required this.width,
    required this.height,
    this.caption,
    required this.isFullWidth,
    required this.allowScrolling,
  });

  /// [url] URL of the embedded page, if available
  final String url;

  /// [html] HTML-markup of the embedded page
  final String html;

  /// [posterPhoto] Poster photo, if available; may be null
  final Photo? posterPhoto;

  /// [width] Block width; 0 if unknown
  final int width;

  /// [height] Block height; 0 if unknown
  final int height;

  /// [caption] Block caption; may be null if none
  final PageBlockCaption? caption;

  /// [isFullWidth] True, if the block must be full width
  final bool isFullWidth;

  /// [allowScrolling] True, if scrolling needs to be allowed
  final bool allowScrolling;

  static const String constructor = 'pageBlockEmbedded';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'html': html,
    'poster_photo': posterPhoto?.toJson(),
    'width': width,
    'height': height,
    'caption': caption?.toJson(),
    'is_full_width': isFullWidth,
    'allow_scrolling': allowScrolling,
    '@type': constructor,
  };

  static PageBlockEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockEmbedded(
      url: (json['url'] as String?) ?? '',
      html: (json['html'] as String?) ?? '',
      posterPhoto: Photo.fromJson(tdMapFromJson(json['poster_photo'])),
      width: (json['width'] as int?) ?? 0,
      height: (json['height'] as int?) ?? 0,
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
      isFullWidth: (json['is_full_width'] as bool?) ?? false,
      allowScrolling: (json['allow_scrolling'] as bool?) ?? false,
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// An embedded post; instant view only
@immutable
final class PageBlockEmbeddedPost extends PageBlock {
  PageBlockEmbeddedPost({
    required this.url,
    required this.author,
    this.authorPhoto,
    required this.date,
    required this.blocks,
    this.caption,
  });

  /// [url] URL of the embedded post
  final String url;

  /// [author] Post author
  final String author;

  /// [authorPhoto] Post author photo; may be null
  final Photo? authorPhoto;

  /// [date] Point in time (Unix timestamp) when the post was created; 0 if
  /// unknown
  final int date;

  /// [blocks] Post content
  final List<PageBlock> blocks;

  /// [caption] Post caption; may be null if none
  final PageBlockCaption? caption;

  static const String constructor = 'pageBlockEmbeddedPost';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'author': author,
    'author_photo': authorPhoto?.toJson(),
    'date': date,
    'blocks': blocks.map((item) => item.toJson()).toList(),
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static PageBlockEmbeddedPost? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockEmbeddedPost(
      url: (json['url'] as String?) ?? '',
      author: (json['author'] as String?) ?? '',
      authorPhoto: Photo.fromJson(tdMapFromJson(json['author_photo'])),
      date: (json['date'] as int?) ?? 0,
      blocks: List<PageBlock>.from(
        tdListFromJson(json['blocks'])
            .map((item) => PageBlock.fromJson(tdMapFromJson(item)))
            .whereType<PageBlock>(),
      ),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The footer of a page
@immutable
final class PageBlockFooter extends PageBlock {
  PageBlockFooter({this.footer});

  /// [footer] Footer
  final RichText? footer;

  static const String constructor = 'pageBlockFooter';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'footer': footer?.toJson(),
    '@type': constructor,
  };

  static PageBlockFooter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockFooter(
      footer: RichText.fromJson(tdMapFromJson(json['footer'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A header; instant view only
@immutable
final class PageBlockHeader extends PageBlock {
  PageBlockHeader({this.header});

  /// [header] Header
  final RichText? header;

  static const String constructor = 'pageBlockHeader';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'header': header?.toJson(),
    '@type': constructor,
  };

  static PageBlockHeader? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockHeader(
      header: RichText.fromJson(tdMapFromJson(json['header'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A kicker; instant view only
@immutable
final class PageBlockKicker extends PageBlock {
  PageBlockKicker({this.kicker});

  /// [kicker] Kicker
  final RichText? kicker;

  static const String constructor = 'pageBlockKicker';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'kicker': kicker?.toJson(),
    '@type': constructor,
  };

  static PageBlockKicker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockKicker(
      kicker: RichText.fromJson(tdMapFromJson(json['kicker'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A list of data blocks
@immutable
final class PageBlockList extends PageBlock {
  PageBlockList({required this.items});

  /// [items] The items of the list
  final List<PageBlockListItem> items;

  static const String constructor = 'pageBlockList';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'items': items.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static PageBlockList? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockList(
      items: List<PageBlockListItem>.from(
        tdListFromJson(json['items'])
            .map((item) => PageBlockListItem.fromJson(tdMapFromJson(item)))
            .whereType<PageBlockListItem>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A map
@immutable
final class PageBlockMap extends PageBlock {
  PageBlockMap({
    this.location,
    required this.zoom,
    required this.width,
    required this.height,
    this.caption,
  });

  /// [location] Location of the map center
  final Location? location;

  /// [zoom] Map zoom level
  final int zoom;

  /// [width] Map width
  final int width;

  /// [height] Map height
  final int height;

  /// [caption] Block caption; may be null if none
  final PageBlockCaption? caption;

  static const String constructor = 'pageBlockMap';

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

  static PageBlockMap? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockMap(
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
final class PageBlockMathematicalExpression extends PageBlock {
  PageBlockMathematicalExpression({required this.expression});

  /// [expression] The expression in LaTeX format
  final String expression;

  static const String constructor = 'pageBlockMathematicalExpression';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'expression': expression,
    '@type': constructor,
  };

  static PageBlockMathematicalExpression? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockMathematicalExpression(
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
final class PageBlockParagraph extends PageBlock {
  PageBlockParagraph({this.text});

  /// [text] Paragraph text
  final RichText? text;

  static const String constructor = 'pageBlockParagraph';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    '@type': constructor,
  };

  static PageBlockParagraph? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockParagraph(
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
final class PageBlockPhoto extends PageBlock {
  PageBlockPhoto({
    this.photo,
    this.caption,
    required this.url,
    required this.hasSpoiler,
  });

  /// [photo] Photo file; may be null
  final Photo? photo;

  /// [caption] Photo caption; may be null if none
  final PageBlockCaption? caption;

  /// [url] URL that needs to be opened when the photo is clicked; instant view
  /// only
  final String url;

  /// [hasSpoiler] True, if the photo preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  static const String constructor = 'pageBlockPhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'photo': photo?.toJson(),
    'caption': caption?.toJson(),
    'url': url,
    'has_spoiler': hasSpoiler,
    '@type': constructor,
  };

  static PageBlockPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockPhoto(
      photo: Photo.fromJson(tdMapFromJson(json['photo'])),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
      url: (json['url'] as String?) ?? '',
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
final class PageBlockPreformatted extends PageBlock {
  PageBlockPreformatted({this.text, required this.language});

  /// [text] Paragraph text
  final RichText? text;

  /// [language] Programming language for which the text needs to be formatted
  final String language;

  static const String constructor = 'pageBlockPreformatted';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'language': language,
    '@type': constructor,
  };

  static PageBlockPreformatted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockPreformatted(
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
final class PageBlockPullQuote extends PageBlock {
  PageBlockPullQuote({this.text, this.credit});

  /// [text] Quote text
  final RichText? text;

  /// [credit] Quote credit; may be null if none
  final RichText? credit;

  static const String constructor = 'pageBlockPullQuote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'credit': credit?.toJson(),
    '@type': constructor,
  };

  static PageBlockPullQuote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockPullQuote(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
      credit: RichText.fromJson(tdMapFromJson(json['credit'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// Related articles; instant view only
@immutable
final class PageBlockRelatedArticles extends PageBlock {
  PageBlockRelatedArticles({this.header, required this.articles});

  /// [header] Block header
  final RichText? header;

  /// [articles] List of related articles
  final List<PageBlockRelatedArticle> articles;

  static const String constructor = 'pageBlockRelatedArticles';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'header': header?.toJson(),
    'articles': articles.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  static PageBlockRelatedArticles? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockRelatedArticles(
      header: RichText.fromJson(tdMapFromJson(json['header'])),
      articles: List<PageBlockRelatedArticle>.from(
        tdListFromJson(json['articles'])
            .map(
              (item) => PageBlockRelatedArticle.fromJson(tdMapFromJson(item)),
            )
            .whereType<PageBlockRelatedArticle>(),
      ),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A section heading
@immutable
final class PageBlockSectionHeading extends PageBlock {
  PageBlockSectionHeading({this.text, required this.size});

  /// [text] Text of the section heading
  final RichText? text;

  /// [size] Relative size of the text font; 1-6, 1 is the largest, 6 is the
  /// smallest
  final int size;

  static const String constructor = 'pageBlockSectionHeading';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    'size': size,
    '@type': constructor,
  };

  static PageBlockSectionHeading? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSectionHeading(
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
final class PageBlockSlideshow extends PageBlock {
  PageBlockSlideshow({required this.blocks, this.caption});

  /// [blocks] Slideshow item contents
  final List<PageBlock> blocks;

  /// [caption] Block caption; may be null if none
  final PageBlockCaption? caption;

  static const String constructor = 'pageBlockSlideshow';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'blocks': blocks.map((item) => item.toJson()).toList(),
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static PageBlockSlideshow? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSlideshow(
      blocks: List<PageBlock>.from(
        tdListFromJson(json['blocks'])
            .map((item) => PageBlock.fromJson(tdMapFromJson(item)))
            .whereType<PageBlock>(),
      ),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A subheader; instant view only
@immutable
final class PageBlockSubheader extends PageBlock {
  PageBlockSubheader({this.subheader});

  /// [subheader] Subheader
  final RichText? subheader;

  static const String constructor = 'pageBlockSubheader';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subheader': subheader?.toJson(),
    '@type': constructor,
  };

  static PageBlockSubheader? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSubheader(
      subheader: RichText.fromJson(tdMapFromJson(json['subheader'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The subtitle of a page; instant view only
@immutable
final class PageBlockSubtitle extends PageBlock {
  PageBlockSubtitle({this.subtitle});

  /// [subtitle] Subtitle
  final RichText? subtitle;

  static const String constructor = 'pageBlockSubtitle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'subtitle': subtitle?.toJson(),
    '@type': constructor,
  };

  static PageBlockSubtitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSubtitle(
      subtitle: RichText.fromJson(tdMapFromJson(json['subtitle'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A table
@immutable
final class PageBlockTable extends PageBlock {
  PageBlockTable({
    this.caption,
    required this.cells,
    required this.isBordered,
    required this.isStriped,
  });

  /// [caption] Table caption; may be null if none
  final RichText? caption;

  /// [cells] Table cells
  final List<List<PageBlockTableCell>> cells;

  /// [isBordered] True, if the table is bordered
  final bool isBordered;

  /// [isStriped] True, if the table is striped
  final bool isStriped;

  static const String constructor = 'pageBlockTable';

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

  static PageBlockTable? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockTable(
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

/// A "Thinking..." placeholder; for pending rich messages only
@immutable
final class PageBlockThinking extends PageBlock {
  PageBlockThinking({this.text});

  /// [text] Text of the placeholder
  final RichText? text;

  static const String constructor = 'pageBlockThinking';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'text': text?.toJson(),
    '@type': constructor,
  };

  static PageBlockThinking? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockThinking(
      text: RichText.fromJson(tdMapFromJson(json['text'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// The title of a page; instant view only
@immutable
final class PageBlockTitle extends PageBlock {
  PageBlockTitle({this.title});

  /// [title] Title
  final RichText? title;

  static const String constructor = 'pageBlockTitle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title?.toJson(),
    '@type': constructor,
  };

  static PageBlockTitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockTitle(
      title: RichText.fromJson(tdMapFromJson(json['title'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}

/// A video
@immutable
final class PageBlockVideo extends PageBlock {
  PageBlockVideo({
    this.video,
    this.caption,
    required this.needAutoplay,
    required this.isLooped,
    required this.hasSpoiler,
  });

  /// [video] Video file; may be null
  final Video? video;

  /// [caption] Video caption; may be null if none
  final PageBlockCaption? caption;

  /// [needAutoplay] True, if the video must be played automatically
  final bool needAutoplay;

  /// [isLooped] True, if the video must be looped
  final bool isLooped;

  /// [hasSpoiler] True, if the video preview must be covered by a spoiler
  /// animation
  final bool hasSpoiler;

  static const String constructor = 'pageBlockVideo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'video': video?.toJson(),
    'caption': caption?.toJson(),
    'need_autoplay': needAutoplay,
    'is_looped': isLooped,
    'has_spoiler': hasSpoiler,
    '@type': constructor,
  };

  static PageBlockVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockVideo(
      video: Video.fromJson(tdMapFromJson(json['video'])),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
      needAutoplay: (json['need_autoplay'] as bool?) ?? false,
      isLooped: (json['is_looped'] as bool?) ?? false,
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
final class PageBlockVoiceNote extends PageBlock {
  PageBlockVoiceNote({this.voiceNote, this.caption});

  /// [voiceNote] Voice note; may be null
  final VoiceNote? voiceNote;

  /// [caption] Voice note caption; may be null if none
  final PageBlockCaption? caption;

  static const String constructor = 'pageBlockVoiceNote';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'voice_note': voiceNote?.toJson(),
    'caption': caption?.toJson(),
    '@type': constructor,
  };

  static PageBlockVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockVoiceNote(
      voiceNote: VoiceNote.fromJson(tdMapFromJson(json['voice_note'])),
      caption: PageBlockCaption.fromJson(tdMapFromJson(json['caption'])),
    );
  }

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
