import 'package:tdlib2/td_api.dart';
import 'package:test/test.dart';

void main() {
  test('decodes current TDLib chat folder names', () {
    final folderJson = <String, dynamic>{
      '@type': 'chatFolderInfo',
      'id': 2,
      'name': {
        '@type': 'chatFolderName',
        'text': {
          '@type': 'formattedText',
          'text': 'Personal',
          'entities': <Object?>[],
        },
        'animate_custom_emoji': false,
      },
      'icon': {'@type': 'chatFolderIcon', 'name': 'Custom'},
      'color_id': 1,
      'is_shareable': false,
      'has_my_invite_links': false,
    };
    final folder = ChatFolderInfo.fromJson(folderJson);

    expect(folder, isNotNull);
    expect(folder!.name?.text?.text, 'Personal');
    expect(folder.icon?.name, 'Custom');
    expect(folder.toJson()['name'], isA<Map<String, dynamic>>());
    expect(folder.toJson(), isNot(contains('title')));

    final update = Update.fromJson({
      '@type': 'updateChatFolders',
      'chat_folders': [folderJson],
      'main_chat_list_position': 0,
      'are_tags_enabled': true,
    });

    expect(update, isA<UpdateChatFolders>());
    expect(
      (update! as UpdateChatFolders).chatFolders.single.name?.text?.text,
      'Personal',
    );
  });
}
