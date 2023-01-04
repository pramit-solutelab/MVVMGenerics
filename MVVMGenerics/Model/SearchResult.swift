//  SearchResult.swift
//  Created by pramit D on 02/01/23.


import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
    var averageUserRating: Float?
    let screenshotUrls: [String]
    let artworkUrl100: String // app icon
    let description: String
    let releaseNotes: String
}
