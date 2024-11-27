//
//  EmptyListView.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 27/11/2024.
//

import SwiftUI

struct EmptyListView: View {
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "list.bullet.rectangle")
                .font(.title)
            Text("You haven't added any acticles yet.")
                .font(.system(size: 23, weight: .medium))
            Text("Please go to seach for acticles")
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    EmptyListView()
}
