//
//  modelbook.swift
//  TableViewDayThree
//
//  Created by Richard G on 15/06/22.
//

import Foundation

// MARK: - BookElement
struct BookElement: Decodable {
    let author, country, imageLink, language: String
    let link: String
    let pages: Int
    let title: String
    let year: Int
}
typealias Book = [BookElement]



