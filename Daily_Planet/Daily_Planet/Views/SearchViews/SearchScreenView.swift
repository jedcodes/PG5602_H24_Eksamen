//
//  SearchScreenView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 27/11/2024.
//

import SwiftUI

struct SearchScreenView: View {
    @State var searchText: String = ""
    var body: some View {
        ZStack {
            Color(ColorTheme.primary)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        
                    TextField("Search for articles", text: $searchText)
                        .padding(10)
                        .background(Color(ColorTheme.tertiary))
                        .foregroundColor(ColorTheme.secondary)
                        .font(.headline)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 10)
                
                Spacer()
            }
        }
    }
}

#Preview {
    SearchScreenView()
}
