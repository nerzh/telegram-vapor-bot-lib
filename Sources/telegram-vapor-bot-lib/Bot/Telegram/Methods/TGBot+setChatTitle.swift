// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension TGBot {

    /// Parameters container struct for `setChatTitle` method
    struct SetChatTitleParams: Encodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// New chat title, 1-255 characters
        var title: String

        /// Custom keys for coding/decoding `SetChatTitleParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case title = "title"
        }

        public init(chatId: ChatId, title: String) {
            self.chatId = chatId
            self.title = title
        }
    }

    /**
     Use this method to change the title of a chat. Titles can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [SetChatTitleParams](https://core.telegram.org/bots/api#setchattitle)
     
     - Parameters:
         - params: Parameters container, see `SetChatTitleParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `Bool` type
     */
    @discardableResult
    func setChatTitle(params: SetChatTitleParams) throws -> EventLoopFuture<Bool> {
        let methodURL: URI = .init(string: getMethodURL("setChatTitle"))
        let future: EventLoopFuture<Bool> = tgClient.post(methodURL, params: params)
        return future
    }
}
