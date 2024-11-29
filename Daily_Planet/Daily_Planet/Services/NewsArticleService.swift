//
//  NewsArticleService.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 29/11/2024.
//

import Foundation

final class NewsArticleService {
    func fetchNewArticles() async throws -> [NewsResponse] {
        let url = URL(string: "https://newsapi.org/v2/everything?q=bitcoin&apiKey=a4a89329e9b5499d9be4907c2eda4d78")!
           let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([NewsResponse].self, from: data)
    }
}
