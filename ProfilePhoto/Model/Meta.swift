import Foundation
struct Meta : Codable {
	let success : Bool?
	let code : Int?
	let message : String?
	let totalCount : Int?
	let pageCount : Int?
	let currentPage : Int?
	let perPage : Int?
	let rateLimit : RateLimit?
	enum CodingKeys: String, CodingKey {
		case success = "success"
		case code = "code"
		case message = "message"
		case totalCount = "totalCount"
		case pageCount = "pageCount"
		case currentPage = "currentPage"
		case perPage = "perPage"
		case rateLimit = "rateLimit"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		success = try values.decodeIfPresent(Bool.self, forKey: .success)
		code = try values.decodeIfPresent(Int.self, forKey: .code)
		message = try values.decodeIfPresent(String.self, forKey: .message)
		totalCount = try values.decodeIfPresent(Int.self, forKey: .totalCount)
		pageCount = try values.decodeIfPresent(Int.self, forKey: .pageCount)
		currentPage = try values.decodeIfPresent(Int.self, forKey: .currentPage)
		perPage = try values.decodeIfPresent(Int.self, forKey: .perPage)
		rateLimit = try values.decodeIfPresent(RateLimit.self, forKey: .rateLimit)
	}
}
