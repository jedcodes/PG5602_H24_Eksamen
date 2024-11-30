//
//  SearchScreenView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 27/11/2024.
//

import SwiftUI

struct SearchScreenView: View {
    @Bindable var model: NewsArticleService
    var body: some View {
        ZStack {
            Color(ColorTheme.primary)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        
                    TextField("Search for articles", text: $model.searchTerm)
                        .padding(10)
                        .background(Color(ColorTheme.tertiary))
                        .foregroundColor(ColorTheme.secondary)
                        .font(.headline)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 10)
                
                Spacer()
                
                if $model.articles.isEmpty {
                    GlobalEmptyListView(title: "No results found", subtitle: "Try searching for a topic")
                } else {
                    NavigationStack {
                        List($model.articles, id: \.source.id) { result in
                            SearchResultView()
                            
                        }
                    }
                }
                Spacer()
            }
        }
        .task {
            do {
                model.articles = try await model.fetchNewArticles()
            } catch {
                print(error.localizedDescription)

            }
        }
    }
}

#Preview {
    SearchScreenView(model: NewsArticleService())
}
