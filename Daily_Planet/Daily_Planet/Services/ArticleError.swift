//
//  ArticleError.swift
//  Daily_Planet
//
//  Created by Jack Delamou on 29/11/2024.
//

import Foundation

enum ArticleError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToCompleteRequest
}
