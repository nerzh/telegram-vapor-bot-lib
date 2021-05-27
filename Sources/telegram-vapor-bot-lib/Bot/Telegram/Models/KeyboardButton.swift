// Telegram-vapor-bot-lib - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 This object represents one button of the reply keyboard. For simple text buttons String can be used instead of this object to specify text of the button. Optional fields request_contact, request_location, and request_poll are mutually exclusive.

 SeeAlso Telegram Bot API Reference:
 [KeyboardButton](https://core.telegram.org/bots/api#keyboardbutton)
 */
public final class KeyboardButton: Codable {

    /// Custom keys for coding/decoding `KeyboardButton` struct
    enum CodingKeys: String, CodingKey {
        case text = "text"
        case requestContact = "request_contact"
        case requestLocation = "request_location"
        case requestPoll = "request_poll"
    }

    /// Text of the button. If none of the optional fields are used, it will be sent as a message when the button is pressed
    public var text: String

    /// Optional. If True, the user's phone number will be sent as a contact when the button is pressed. Available in private chats only
    public var requestContact: Bool?

    /// Optional. If True, the user's current location will be sent when the button is pressed. Available in private chats only
    public var requestLocation: Bool?

    /// Optional. If specified, the user will be asked to create a poll and send it to the bot when the button is pressed. Available in private chats only
    public var requestPoll: KeyboardButtonPollType?

    public init (text: String, requestContact: Bool? = nil, requestLocation: Bool? = nil, requestPoll: KeyboardButtonPollType? = nil) {
        self.text = text
        self.requestContact = requestContact
        self.requestLocation = requestLocation
        self.requestPoll = requestPoll
    }
}
