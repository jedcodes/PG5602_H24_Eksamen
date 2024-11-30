//
//  NewsArticleService.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 29/11/2024.
//

import Foundation

@Observable class NewsArticleService {
    var articles: [NewsArticle] = []
    var searchTerm: String = ""
    var country: String = ""
    var category: String = ""
    var language: String = ""
    
    
    @ObservationIgnored  private let BASE_URL: String = "https://newsapi.org/v2/"
    @ObservationIgnored  private let API_KEY: String = "a4a89329e9b5499d9be4907c2eda4d78"
    
    
    func fetchNewArticles() async throws -> [NewsArticle] {
        guard let url = URL(string: BASE_URL + "everything?q=apple&apiKey=\(API_KEY)") else {
            throw ArticleError.invalidURL
        }
       
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw ArticleError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            let wrapper = try decoder.decode(NewsResponse.self, from: data)
                
            
            return wrapper.articles

        } catch {
            throw ArticleError.invalidData
        }
    }
}
