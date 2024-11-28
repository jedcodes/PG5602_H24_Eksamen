//
//  ArticleDetailScreenView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 28/11/2024.
//

import SwiftUI

struct ArticleDetailScreenView: View {
    var article: Article
    var body: some View {
        Text(article.title)
    }
}

#Preview {
    ArticleDetailScreenView(article: MockData.sampleArticle)
}
