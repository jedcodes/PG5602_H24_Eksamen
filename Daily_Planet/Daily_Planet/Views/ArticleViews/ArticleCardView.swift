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
        VStack {
            GroupBox {
                VStack {
                    AsyncImage(url: URL(string: article.urlToImage)) {
                        Image in Image.image?.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 200)
                    }
                    HStack {
                        NavigationLink {
                            ArticleDetailScreenView(article: article)
                        } label: {
                            Text("Learn more")
                                .foregroundStyle(.myPrimary)
                                .font(.system(size: 18, weight: .medium))
                                .frame(width: 300, height: 50)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                    }
                }
            } label: {
                Label(article.title, systemImage: "arrow.2.circlepath.circle")
            }
        }
    }
}

#Preview {
    ArticleCardView(article: MockData.sampleArticle)
}
