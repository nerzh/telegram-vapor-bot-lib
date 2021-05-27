// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension TGBot {

    /// Parameters container struct for `leaveChat` method
    struct LeaveChatParams: Encodable {

        /// Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
        var chatId: ChatId

        /// Custom keys for coding/decoding `LeaveChatParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
        }

        public init(chatId: ChatId) {
            self.chatId = chatId
        }
    }

    /**
     Use this method for your bot to leave a group, supergroup or channel. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [LeaveChatParams](https://core.telegram.org/bots/api#leavechat)
     
     - Parameters:
         - params: Parameters container, see `LeaveChatParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `Bool` type
     */
    @discardableResult
    func leaveChat(params: LeaveChatParams) throws -> EventLoopFuture<Bool> {
        let methodURL: URI = .init(string: getMethodURL("leaveChat"))
        let future: EventLoopFuture<Bool> = tgClient.post(methodURL, params: params)
        return future
    }
}
