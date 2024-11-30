//
//  TabbarView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 27/11/2024.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            ArticleScreenView()
                .tabItem {
                    Label("My Articles", systemImage: "list.bullet")
                }
            SearchScreenView(model: NewsArticleService())
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            SettingScreenView()
                .tabItem {
                    Label("Setting", systemImage: "gearshape")
                }
        }
    }
}

#Preview {
    TabbarView()
}
