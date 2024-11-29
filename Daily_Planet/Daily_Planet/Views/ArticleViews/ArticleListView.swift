//
//  ArticleListView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 27/11/2024.
//

import SwiftUI
import SwiftData

struct ArticleListView: View {
    @Query private var articles: [Article]
    @State private var navigationPath: [Article] = []
    @Environment(\.modelContext) var context
    var body: some View {
        NavigationStack(path: $navigationPath) {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(articles) { article in
                       
                        
                        NavigationLink(destination: ArticleDetailScreenView(article: article)) {
                            ArticleCardView(article: article)
                        }
                        
                    }
                    .onDelete { indexes in
                        for index in indexes {
                            deleteArticle(articles[index])
                        }
                    }
                }
                .padding(.horizontal, 10)
            }
        }
    }
    func deleteArticle(_ article: Article) {
        context.delete(article)
    }
}

#Preview {
    ArticleListView()
}
