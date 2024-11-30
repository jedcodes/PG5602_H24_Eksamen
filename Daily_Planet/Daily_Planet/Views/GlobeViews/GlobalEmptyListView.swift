//
//  GlobalEmptyListView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 29/11/2024.
//

import SwiftUI

struct GlobalEmptyListView: View {
    var title: String
    var subtitle: String
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "list.bullet.rectangle")
                .font(.title)
            Text(title)
                .font(.system(size: 23, weight: .medium))
            Text(subtitle)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    GlobalEmptyListView(title: "Main Title", subtitle: "Sub Title")
}
