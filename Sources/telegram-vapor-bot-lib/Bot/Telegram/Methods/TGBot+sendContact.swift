// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension TGBot {

    /// Parameters container struct for `sendContact` method
    struct SendContactParams: Encodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Contact's phone number
        var phoneNumber: String

        /// Contact's first name
        var firstName: String

        /// Contact's last name
        var lastName: String?

        /// Additional data about the contact in the form of a vCard, 0-2048 bytes
        var vcard: String?

        /// Sends the message silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// If the message is a reply, ID of the original message
        var replyToMessageId: Int?

        /// Pass True, if the message should be sent even if the specified replied-to message is not found
        var allowSendingWithoutReply: Bool?

        /// Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove keyboard or to force a reply from the user.
        var replyMarkup: ReplyMarkup?

        /// Custom keys for coding/decoding `SendContactParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case phoneNumber = "phone_number"
            case firstName = "first_name"
            case lastName = "last_name"
            case vcard = "vcard"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case allowSendingWithoutReply = "allow_sending_without_reply"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, phoneNumber: String, firstName: String, lastName: String? = nil, vcard: String? = nil, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, allowSendingWithoutReply: Bool? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.phoneNumber = phoneNumber
            self.firstName = firstName
            self.lastName = lastName
            self.vcard = vcard
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.allowSendingWithoutReply = allowSendingWithoutReply
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send phone contacts. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendContactParams](https://core.telegram.org/bots/api#sendcontact)
     
     - Parameters:
         - params: Parameters container, see `SendContactParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `Message` type
     */
    @discardableResult
    func sendContact(params: SendContactParams) throws -> EventLoopFuture<Message> {
        let methodURL: URI = .init(string: getMethodURL("sendContact"))
        let future: EventLoopFuture<Message> = tgClient.post(methodURL, params: params)
        return future
    }
}
