//
//  ArticleCardView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 28/11/2024.
//

import SwiftUI

struct ArticleCardView: View {
     var article: Article
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .shadow(radius: 10)
            VStack(alignment: .center,spacing: 10) {
                Text(article.author)
                Text(article.title)
                    .font(.system(size: 20, weight: .semibold))
                
                AsyncImage(url: URL(string: article.urlToImage)) { image in
                    image.image?.resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .accessibilityLabel(article.author)
                }
                   
                
            }
            .padding(10)
        }
        .frame( height: 450)
    }
}

#Preview {
    ArticleCardView(article: MockData.sampleArticle)
}


