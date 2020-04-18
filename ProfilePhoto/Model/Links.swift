import Foundation
struct Links : Codable {
	let selfLink : SelfLink?
	let edit : Edit?
	enum CodingKeys: String, CodingKey {
		case selfLink = "self"
		case edit = "edit"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		selfLink = try values.decodeIfPresent(SelfLink.self, forKey: .selfLink)
		edit = try values.decodeIfPresent(Edit.self, forKey: .edit)
	}
}
