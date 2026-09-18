//  🏔️ MTECH Code Challenge SF02: "Reading Code"
//  Objective: I can identify the parts of code by their position and color

//  Introduction:
    //  Today's code challenge will be completed on printed paper. You should receive a copy during class.

    //  Your code challenge instructions will always be written as comments. Notice the double slashes (//) at the beginning of each line at the top here.
    //  Double slashes tell Xcode/your app to ignore whatever's written after there. It's for human eyes only. Everything else the computer will interpret as instructions.

//  Instructions:
    //  1. Read through the code below. It's okay if you don't understand a lot of what you're seeing.
    //  2. Even before you write your first line of code, you can learn a lot just by paying close attention to the patterns present. Discuss with a partner: What do you notice at first glance? What stands out to you?
    //  3. Using colored pencils and/or highlighters, go through and annotate the code. In this context, annotation means circling, underlining, or highlighting, as well as writing notes in the margins.
        //  To decide what to annotate, try to solve the answers to these questions as you best you can:
        //  What does each color in the code base represent? What determines where Xcode uses each color?
        //  What do you notice about the capitalization of certain words?
        //  Where do certain symbols such as { } appear, and what do they seem to represent?
        //  Where is indentation used and why?

import Foundation

class MusicPlayer {
    var isPlaying: Bool = false
    var currentIndex: Int = 0
    var songlist: SongList

    var currentlyPlayingSong: Song {
        songlist.songs[currentIndex]
    }
    
    init(isPlaying: Bool, currentIndex: Int, songlist: SongList) {
        self.isPlaying = isPlaying
        self.currentIndex = currentIndex
        self.songlist = songlist
    }
    
    func play() {
        isPlaying = true
    }
    
    func pause() {
        isPlaying = false
    }
    
    func nextSong() {
        // If at end of playlist, go back to start
        if currentIndex > songlist.songs.count - 1 {
            currentIndex = 0
        } else {
            currentIndex = currentIndex + 1
        }
    }
    
    func previousSong() {
        // If at beginning of playlist, do nothing
        if currentIndex <= 0 {
            return
        } else {
            currentIndex = currentIndex - 1
        }
    }
}

struct Song {
    var title: String
    var artist: Artist
    var data: Data
}

protocol SongList {
    var songs: [Song] { get set }
}

struct Playlist: SongList {
    var songs: [Song]
    var title: String
    var createdBy: String
}

struct Album: SongList {
    var songs: [Song]
    var title: String
    var artist: Artist
}

struct Artist {
    var displayName: String
}

// Example artists
let kojiKondo = Artist(displayName: "Koji Kondo")
let johnWilliams = Artist(displayName: "John Williams")

// An example playlist of Nintendo soundtrack music
let nintendoFavorites = Playlist(
    songs: [
        Song(title: "Super Mario Bros. Theme", artist: kojiKondo, data: Data()),
        Song(title: "The Legend of Zelda Main Theme", artist: kojiKondo, data: Data()),
        Song(title: "Gerudo Valley", artist: kojiKondo, data: Data()),
        Song(title: "Delfino Plaza", artist: kojiKondo, data: Data())
    ],
    title: "Nintendo Favorites",
    createdBy: "MTECH"
)

// An example album of songs from the Star Wars Ep. IV soundtrack
let starWarsEpisodeIV = Album(
    songs: [
        Song(title: "Main Title", artist: johnWilliams, data: Data()),
        Song(title: "The Little People Work", artist: johnWilliams, data: Data()),
        Song(title: "Cantina Band", artist: johnWilliams, data: Data()),
        Song(title: "The Throne Room and End Title", artist: johnWilliams, data: Data())
    ],
    title: "Star Wars: A New Hope (Original Motion Picture Soundtrack)",
    artist: johnWilliams
)

let musicPlayer = MusicPlayer(isPlaying: false, currentIndex: 0, songlist: starWarsEpisodeIV)

print(musicPlayer.currentlyPlayingSong)
