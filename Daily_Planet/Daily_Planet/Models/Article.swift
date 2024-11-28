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


struct MockData {
    static var sampleArticle = Article(author: "Sigurd Bjørnestad", title: "Økonomien går som en kule. Men noen steder er forholdene som i et U-land, sier professor", newsDescription: "USAs økonomi går som en kule. Men i deler av gigantlandet er forholdene som i et u-land, sier norsk professor.", url: "https://www.aftenposten.no/verden/i/wgxkbn/verdens-rikeste-bor-i-usa-men-mange-er-fattige", urlToImage: "https://premium.vgc.no/v2/images/de6d0d42-198b-4ea4-8518-123e3a576885?fit=crop&format=auto&h=1365&w=2048&s=66942eeb1c81a838f3ae4e4186769ce437c9868e", publishedAt: "2024-10-31T20:37:28Z", content: "USAs økonomi går som en kule. Men i deler av gigantlandet er forholdene som i et u-land, sier norsk professor.\r\nElon Musk er glansbildet av det nyskapende USA. Han driver valgkamp for Donald Trump")
}
