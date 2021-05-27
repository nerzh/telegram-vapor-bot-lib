// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 This object represents a bot command.

 SeeAlso Telegram Bot API Reference:
 [BotCommand](https://core.telegram.org/bots/api#botcommand)
 */
public final class BotCommand: Codable {

    /// Custom keys for coding/decoding `BotCommand` struct
    enum CodingKeys: String, CodingKey {
        case command = "command"
        case description = "description"
    }

    /// Text of the command, 1-32 characters. Can contain only lowercase English letters, digits and underscores.
    public var command: String

    /// Description of the command, 3-256 characters.
    public var description: String

    public init (command: String, description: String) {
        self.command = command
        self.description = description
    }
}
