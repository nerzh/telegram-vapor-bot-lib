// Swift Telegram SDK - Telegram Bot Swift SDK.

import Foundation

/// DESCRIPTION:
/// Use this method to send an animated emoji that will display a random value. On success, the sent Message is returned.


/// Parameters container struct for `sendDice` method
public struct TGSendDiceParams: Encodable {

    /// Unique identifier of the business connection on behalf of which the message will be sent
    public var businessConnectionId: String?

    /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    public var chatId: TGChatId

    /// Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    public var messageThreadId: Int?

    /// Emoji on which the dice throw animation is based. Currently, must be one of “”, “”, “”, “”, “”, or “”. Dice can have values 1-6 for “”, “” and “”, values 1-5 for “” and “”, and values 1-64 for “”. Defaults to “”
    public var emoji: String?

    /// Sends the message silently. Users will receive a notification with no sound.
    public var disableNotification: Bool?

    /// Protects the contents of the sent message from forwarding
    public var protectContent: Bool?

    /// Pass True to allow up to 1000 messages per second, ignoring broadcasting limits for a fee of 0.1 Telegram Stars per message. The relevant Stars will be withdrawn from the bot's balance
    public var allowPaidBroadcast: Bool?

    /// Unique identifier of the message effect to be added to the message; for private chats only
    public var messageEffectId: String?

    /// Description of the message to reply to
    public var replyParameters: TGReplyParameters?

    /// Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove a reply keyboard or to force a reply from the user
    public var replyMarkup: TGReplyMarkup?

    /// Custom keys for coding/decoding `SendDiceParams` struct
    public enum CodingKeys: String, CodingKey {
            case businessConnectionId = "business_connection_id"
            case chatId = "chat_id"
            case messageThreadId = "message_thread_id"
            case emoji = "emoji"
            case disableNotification = "disable_notification"
            case protectContent = "protect_content"
            case allowPaidBroadcast = "allow_paid_broadcast"
            case messageEffectId = "message_effect_id"
            case replyParameters = "reply_parameters"
            case replyMarkup = "reply_markup"
    }

    public init(businessConnectionId: String? = nil, chatId: TGChatId, messageThreadId: Int? = nil, emoji: String? = nil, disableNotification: Bool? = nil, protectContent: Bool? = nil, allowPaidBroadcast: Bool? = nil, messageEffectId: String? = nil, replyParameters: TGReplyParameters? = nil, replyMarkup: TGReplyMarkup? = nil) {
            self.businessConnectionId = businessConnectionId
            self.chatId = chatId
            self.messageThreadId = messageThreadId
            self.emoji = emoji
            self.disableNotification = disableNotification
            self.protectContent = protectContent
            self.allowPaidBroadcast = allowPaidBroadcast
            self.messageEffectId = messageEffectId
            self.replyParameters = replyParameters
            self.replyMarkup = replyMarkup
    }
}


public extension TGBot {

/**
 Use this method to send an animated emoji that will display a random value. On success, the sent Message is returned.

 SeeAlso Telegram Bot API Reference:
 [SendDiceParams](https://core.telegram.org/bots/api#senddice)
 
 - Parameters:
     - params: Parameters container, see `SendDiceParams` struct
 - Throws: Throws on errors
 - Returns: `TGMessage`
 */

    @discardableResult
    func sendDice(params: TGSendDiceParams) async throws -> TGMessage {
        guard let methodURL: URL = .init(string: getMethodURL("sendDice")) else {
            throw BotError("Bad URL: \(getMethodURL("sendDice"))")
        }
        let result: TGMessage = try await tgClient.post(methodURL, params: params, as: nil)
        return result
    }
}
