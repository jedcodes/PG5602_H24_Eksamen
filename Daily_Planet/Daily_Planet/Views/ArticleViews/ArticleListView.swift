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
    var body: some View {
        NavigationStack(path: $navigationPath) {
            List {
                ForEach(articles) { article in
                   
                    
                        ArticleCardView(article: article)
                    
                }
            }
        }
    }
}

#Preview {
    ArticleListView()
}
