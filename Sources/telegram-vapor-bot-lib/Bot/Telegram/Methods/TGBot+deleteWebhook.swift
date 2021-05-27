// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension TGBot {

    /// Parameters container struct for `deleteWebhook` method
    struct DeleteWebhookParams: Encodable {

        /// Pass True to drop all pending updates
        var dropPendingUpdates: Bool?

        /// Custom keys for coding/decoding `DeleteWebhookParams` struct
        enum CodingKeys: String, CodingKey {
            case dropPendingUpdates = "drop_pending_updates"
        }

        public init(dropPendingUpdates: Bool? = nil) {
            self.dropPendingUpdates = dropPendingUpdates
        }
    }

    /**
     Use this method to remove webhook integration if you decide to switch back to getUpdates. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [DeleteWebhookParams](https://core.telegram.org/bots/api#deletewebhook)
     
     - Parameters:
         - params: Parameters container, see `DeleteWebhookParams` struct
     - Throws: Throws on errors
     - Returns: EventLoopFuture of `Bool` type
     */
    @discardableResult
    func deleteWebhook(params: DeleteWebhookParams? = nil) throws -> EventLoopFuture<Bool> {
        let methodURL: URI = .init(string: getMethodURL("deleteWebhook"))
        let future: EventLoopFuture<Bool> = tgClient.post(methodURL, params: params ?? TGEmptyParams())
        return future
    }
}
