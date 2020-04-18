import Foundation
struct Result : Codable {
	let id : String?
	let album_id : String?
	let title : String?
	let url : String?
	let thumbnail : String?
	let links : Links?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case album_id = "album_id"
		case title = "title"
		case url = "url"
		case thumbnail = "thumbnail"
		case links = "_links"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		album_id = try values.decodeIfPresent(String.self, forKey: .album_id)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		thumbnail = try values.decodeIfPresent(String.self, forKey: .thumbnail)
		links = try values.decodeIfPresent(Links.self, forKey: .links)
	}

}
