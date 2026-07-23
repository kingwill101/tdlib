//@class AuthorizationState @description Represents the current authorization state of the client
//@class MessageContent @description Contains the content of a message
//@class UserType @description Represents the type of a user

---types---
authorizationStateReady = AuthorizationState;
authorizationStateWaitPhoneNumber phone_number:String = AuthorizationState;
authorizationStateWaitCode code_info:authenticationCodeInfo is_registered:Bool = AuthorizationState;

messageText text:formattedText = MessageContent;
messagePhoto caption:formattedText has_stickers:Bool = MessageContent;
messageAnimation caption:formattedText duration:int32 width:int32 height:int32 = MessageContent;

userTypeRegular = UserType;
userTypeBot can_join_groups:Bool can_read_all_group_messages:Bool inline_queries:Bot = UserType;
userTypeDeleted = UserType;

user id:int53 first_name:string last_name:string type:UserType = User;

formattedText text:string entities:vector<textEntity> = formattedText;

textEntity offset:int32 length:int32 type:TextEntityType = textEntity;

error code:int32 message:string = Error;

---functions---
getUser user_id:int53 = User;
sendMessage chat_id:int53 message:text = Message;
deleteMessages chat_id:int53 message_ids:vector<int53> revoke:Bool = Ok;

//@class Test @description Test class
