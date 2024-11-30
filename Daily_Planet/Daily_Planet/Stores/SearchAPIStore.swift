//
//  SearchAPIStore.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 29/11/2024.
//

import Foundation

@Observable class SearchAPIStore {
    var articles: [NewsResponse] = []
    var searchTerm: String = ""
    var country: String = ""
    var category: String = ""
    var language: String = ""
}
