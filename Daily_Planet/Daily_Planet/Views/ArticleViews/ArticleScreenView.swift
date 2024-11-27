//
//  ArticleScreenView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 27/11/2024.
//

import SwiftUI
import SwiftData

struct ArticleScreenView: View {
    @Query var articles: [Article]
    @Environment(\.modelContext) var context
    var body: some View {
        NavigationStack {
            VStack {
                if articles.isEmpty {
                    EmptyListView()
                } else {
                    ArticleListView()
                }
            }
            .toolbar {
                Button {
                    addSample()
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
    
    func addSample() {
        let articleOne = Article(author: "Sigurd Bjørnestad", title: "Økonomien går som en kule. Men noen steder er forholdene som i et U-land, sier professor", newsDescription: "USAs økonomi går som en kule. Men i deler av gigantlandet er forholdene som i et u-land, sier norsk professor.", url: "https://www.aftenposten.no/verden/i/wgxkbn/verdens-rikeste-bor-i-usa-men-mange-er-fattige", urlToImage: "https://premium.vgc.no/v2/images/de6d0d42-198b-4ea4-8518-123e3a576885?fit=crop&format=auto&h=1365&w=2048&s=66942eeb1c81a838f3ae4e4186769ce437c9868e", publishedAt: "2024-10-31T20:37:28Z", content: "USAs økonomi går som en kule. Men i deler av gigantlandet er forholdene som i et u-land, sier norsk professor.\r\nElon Musk er glansbildet av det nyskapende USA. Han driver valgkamp for Donald Trump")
        
        let articleTwo = Article(author: "Kjetil Hanssen, Trond J. Strøm, Ninni Bjørlo Lærum", title: "Trump gikk på en smell da norskættede John Thune ble valgt til ny leder av Senatet", newsDescription: "WASHINGTON D. C: Kandidaten som er mest lojal til Donald Trump falt ut etter første valgrunde under republikanernes valg av Senatets leder. Det er norskættede John Thune som gikk seirende ut av valget.", url: "https://www.aftenposten.no/verden/i/AvxaQz/john-thune-blir-den-nye-lederen-i-usas-senat", urlToImage: "https://premium.vgc.no/v2/images/4ff33e5d-2bd7-4552-82ab-47aa752560ca?fit=crop&format=auto&h=1366&w=2048&s=a05f2d0d45774adf92962d3df8e2fb4fcba6fd13", publishedAt: "2024-11-13T16:56:09Z", content: "WASHINGTON D. C: Kandidaten som er mest lojal til Donald Trump falt ut etter første valgrunde under republikanernes valg av Senatets leder")
        
        context.insert(articleOne)
        context.insert(articleTwo)
    }
}

#Preview {
    ArticleScreenView()
}
