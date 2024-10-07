//
//  HomeViewModel.swift
//  SpotifyClone
//
//  Created by Neosoft on 04/10/24.
//

import Foundation

protocol HomeViewModelProtocol {
    var titles: [String] { get }
    var songs: [Song] { get }
}

final class HomeViewModel: HomeViewModelProtocol {
    let titles: [String] = [
        "News",
        "Video",
        "Artists",
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
    
    let songs: [Song] = [
        Song(title: "Shape of You", artist: "Ed Sheeran", duration: "3:53"),
        Song(title: "Blinding Lights", artist: "The Weeknd", duration: "3:20"),
        Song(title: "Levitating", artist: "Dua Lipa", duration: "3:23"),
        Song(title: "Uptown Funk", artist: "Mark Ronson ft. Bruno Mars", duration: "4:29"),
        Song(title: "Senorita", artist: "Shawn Mendes & Camila Cabello", duration: "3:11"),
        Song(title: "Bad Guy", artist: "Billie Eilish", duration: "3:14"),
        Song(title: "Someone Like You", artist: "Adele", duration: "4:45"),
        Song(title: "Happier", artist: "Marshmello ft. Bastille", duration: "3:34"),
        Song(title: "Rolling in the Deep", artist: "Adele", duration: "3:48"),
        Song(title: "Old Town Road", artist: "Lil Nas X", duration: "2:37")
    ]

}
