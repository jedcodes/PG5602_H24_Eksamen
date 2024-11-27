//
//  Article.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 27/11/2024.
//

import Foundation
import SwiftData

@Model
class Article {
    var author: String
    var title: String
    var newsDescription: String
    var url: String
    var urlToImage: String
    var publishedAt: String
    var content: String
    
    init(author: String = "", title: String = "", newsDescription: String = "", url: String = "", urlToImage: String = "", publishedAt: String = "", content: String = "") {
        self.author = author
        self.title = title
        self.newsDescription = newsDescription
        self.url = url
        self.urlToImage = urlToImage
        self.publishedAt = publishedAt
        self.content = content
    }
}
