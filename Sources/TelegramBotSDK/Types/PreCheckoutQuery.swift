// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// This object contains information about an incoming pre-checkout query.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#precheckoutquery>

public struct PreCheckoutQuery: JsonConvertible, InternalJsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: Any {
        get {
            return internalJson.object
        }
        set {
            internalJson = JSON(newValue)
        }
    }
    internal var internalJson: JSON

    /// Unique query identifier
    public var id: String {
        get { return internalJson["id"].stringValue }
        set { internalJson["id"].stringValue = newValue }
    }

    /// User who sent the query
    public var from: User {
        get { return User(internalJson: internalJson["from"]) }
        set { internalJson["from"] = JSON(newValue.json) }
    }

    /// Three-letter ISO 4217 currency code
    public var currency: String {
        get { return internalJson["currency"].stringValue }
        set { internalJson["currency"].stringValue = newValue }
    }

    /// Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
    public var totalAmount: Int {
        get { return internalJson["total_amount"].intValue }
        set { internalJson["total_amount"].intValue = newValue }
    }

    /// Bot specified invoice payload
    public var invoicePayload: String {
        get { return internalJson["invoice_payload"].stringValue }
        set { internalJson["invoice_payload"].stringValue = newValue }
    }

    /// Optional. Identifier of the shipping option chosen by the user
    public var shippingOptionId: String? {
        get { return internalJson["shipping_option_id"].string }
        set { internalJson["shipping_option_id"].string = newValue }
    }

    /// Optional. Order info provided by the user
    public var orderInfo: OrderInfo? {
        get {
            let value = internalJson["order_info"]
            return value.isNullOrUnknown ? nil : OrderInfo(internalJson: value)
        }
        set {
            internalJson["order_info"] = newValue?.internalJson ?? JSON.null
        }
    }

    internal init(internalJson: JSON = [:]) {
        self.internalJson = internalJson
    }
    public init(json: Any) {
        self.internalJson = JSON(json)
    }
}
