//
//  HomeViewModel.swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import Foundation

protocol HomeViewModelProtocol {
    var titles: [String] { get }
}

final class HomeViewModel: HomeViewModelProtocol {
    let titles: [String] = [
        "News",
        "Audio",
        "Artist",
        "Podcast",
        "Videos",
        "Playlists",
        "Events",
        "Interviews",
        "Albums",
        "Trending",
        "Genres",
        "Live Shows",
        "Reviews",
        "Documentaries",
        "Music Charts"
    ]
}
