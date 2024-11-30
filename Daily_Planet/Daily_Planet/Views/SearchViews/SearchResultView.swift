//
//  SearchResultView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 29/11/2024.
//

import SwiftUI

struct SearchResultView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(ColorTheme.tertiary))
            HStack {
                Image("placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                VStack(spacing: 10) {
                    Text("Search Result")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundStyle(.primary)
                    
                    Text("Author")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal, 10)
            }
        }
        .frame(width: 320, height: 150)
    }
}


#Preview {
    SearchResultView()
}
