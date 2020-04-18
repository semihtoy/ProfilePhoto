import Foundation
struct RateLimit : Codable {
	let limit : Int?
	let remaining : Int?
	let reset : Int?
	enum CodingKeys: String, CodingKey {
		case limit = "limit"
		case remaining = "remaining"
		case reset = "reset"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		limit = try values.decodeIfPresent(Int.self, forKey: .limit)
		remaining = try values.decodeIfPresent(Int.self, forKey: .remaining)
		reset = try values.decodeIfPresent(Int.self, forKey: .reset)
	}
}
