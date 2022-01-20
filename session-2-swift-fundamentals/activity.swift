struct Anime {
    var name: String
    var numberOfEpisodes: Int
    var mangaName: String?

    func introduce() {
        print("The name of this anime is \(name) with \(numberOfEpisodes) episodes.")
    }

    func getMangaName() -> String {
        if let unwrappedName = mangaName {
            return unwrappedName
        } else {
            return "N/A"
        }
    }
}

var tokyoRevengers: Anime = Anime(name: "Tokyo Revengers", numberOfEpisodes: 24, mangaName: "Tokyo卍Revengers")
tokyoRevengers.introduce()
print(tokyoRevengers.getMangaName())

var sao: Anime = Anime(name: "Sword Art Online", numberOfEpisodes: 24, mangaName: nil)
sao.introduce()
print(sao.getMangaName())
