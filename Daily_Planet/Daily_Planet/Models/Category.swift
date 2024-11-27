//
//  Category.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 27/11/2024.
//

import Foundation
import SwiftData

@Model
class Category {
    var categoryTitle: String
    @Relationship(deleteRule: .cascade) var articles = [Article]()
    
    init(categoryTitle: String) {
        self.categoryTitle = categoryTitle
    }
    
}
