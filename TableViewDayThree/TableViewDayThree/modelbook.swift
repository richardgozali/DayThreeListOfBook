import Foundation
struct BookElement: Codable {
    let title, isbn: String?
    let pageCount: Int?
    let publishedDate: PublishedDate?
    let thumbnailURL: String?
    let shortDescription, longDescription, status: String?
    let authors, categories: [String]?

}

// MARK: - PublishedDate
struct PublishedDate: Codable {
    let date: String?

    enum CodingKeys: String, CodingKey {
        case date
    }
}

typealias Books = [BookElement]
