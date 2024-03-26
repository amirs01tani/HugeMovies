//
//  MoviesSampleData.swift
//  Movies
//
//  Created by Amir on 3/26/24.
//

import Foundation

protocol movieDataLoader {
    static func getData() -> [Movie]
}

enum MoviesSampleData: movieDataLoader {
    static func getData() -> [Movie] {
        return [
            Movie(id: UUID(), title: "AMAR", year: "2017", genre: "Romantic", description: "Laura and Carlos love each other as if every day was the last, and perhaps that first love intensity is what will tear them apart a year later.", thumbURL: "https://www.imdb.com/title/tt5479616/mediaviewer/rm1594897664/?ref_=tt_ov_i"),
            
            Movie(id: UUID(), title: "Damsel", year: "2024", genre: "Action", description: "A dutiful damsel agrees to marry a handsome prince, only to find the royal family has recruited her as a sacrifice to repay an ancient debt.", thumbURL: "https://www.imdb.com/title/tt13452446/mediaviewer/rm912933377/?ref_=tt_ov_i"),
            
            Movie(id: UUID(), title: "Road House", year: "2024", genre: "Action", description: "Ex-UFC fighter Dalton takes a job as a bouncer at a Florida Keys roadhouse, only to discover that this paradise is not all it seems.", thumbURL: "https://www.imdb.com/title/tt3359350/mediaviewer/rm205540609/?ref_=tt_ov_i"),
            
            Movie(id: UUID(), title: "White Girl", year: "2016", genre: "Crime", description: "Summer, New York City. A college girl falls hard for a guy she just met. After a night of partying goes wrong, she goes to wild extremes to get him back.", thumbURL: "https://www.imdb.com/title/tt4129870/mediaviewer/rm3630960128/?ref_=tt_ov_i"),
            
            Movie(id: UUID(), title: "Conor McGregor", year: "2017", genre: "Documentary", description: "Featuring unprecedented access, never before seen moments and explosive fight footage, this is the ultimate behind-the-scenes look at a sporting icon and his spectacular rise.", thumbURL: "https://www.imdb.com/title/tt7518466/mediaviewer/rm1498634496/?ref_=tt_ov_i"),
            
            Movie(id: UUID(), title: "Death at a Funeral", year: "2010", genre: "Comedy", description: "A funeral ceremony turns into a debacle of exposed family secrets and misplaced bodies.", thumbURL: "https://www.imdb.com/title/tt1321509/mediaviewer/rm3267133952/?ref_=tt_ov_i"),
            
            Movie(id: UUID(), title: "Family Switch", year: "2023", genre: "Comedy", description: "When a chance encounter with an astrological reader causes the Walkers to wake up to a full body switch, can they unite to land a promotion, college interview, record deal, and soccer tryout?", thumbURL: "https://www.imdb.com/title/tt14227048/mediaviewer/rm3505342977/?ref_=tt_ov_i"),
            
            Movie(id: UUID(), title: "Red Notice", year: "2023", genre: "Action", description: "An Interpol agent successfully tracks down the world's most wanted art thief with help from a rival thief. But nothing is as it seems as a series of double-crosses ensues.", thumbURL: "https://www.imdb.com/title/tt7991608/mediaviewer/rm2565534977/?ref_=tt_ov_i"),
            
            Movie(id: UUID(), title: "Lift", year: "2024", genre: "Crime", description: "Follows a master thief and his Interpol Agent ex-girlfriend who team up to steal $500 million in gold bullion being transported on an A380 passenger flight.", thumbURL: "https://www.imdb.com/title/tt14371878/mediaviewer/rm793270017/?ref_=tt_ov_i")
            
        ]
    }
}
