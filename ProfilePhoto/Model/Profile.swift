import Foundation
struct Profile : Codable {
	let meta : Meta?
	let result : [Result]?
	enum CodingKeys: String, CodingKey {
		case meta = "_meta"
		case result = "result"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		meta = try values.decodeIfPresent(Meta.self, forKey: .meta)
		result = try values.decodeIfPresent([Result].self, forKey: .result)
	}
}
