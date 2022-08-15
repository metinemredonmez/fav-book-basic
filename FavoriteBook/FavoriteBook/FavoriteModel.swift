//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Apple on 15.08.2022.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    
    // mdeol ıcınde ıden yazmak
    var id = UUID()
    var title : String
    var elements : [FavoriteElements] // element ıcın ayır model yazdık model ıcınde nodel class lardakı gıbı kalıtım turetme gıbı
    
}

struct FavoriteElements: Identifiable {
    var id = UUID()
    var name :String
    var imagename: String
    var desc:String
    
}


//bands
let metallica = FavoriteElements( name: "metallica", imagename: "metal", desc: "metal music")
let mega = FavoriteElements( name: "mega", imagename: "mega", desc: "mega music")
let iron = FavoriteElements( name: "iron", imagename: "iron", desc: "iron music")




let favoriteBands = FavoriteModel(title: "fav bands", elements: [metallica,mega,iron])


let pulp = FavoriteElements( name: "metallica", imagename: "metal", desc: "metal music")
let iron2 = FavoriteElements( name: "mega", imagename: "mega", desc: "mega music")
let mega2 = FavoriteElements( name: "iron", imagename: "iron", desc: "iron music")


//movies

let favoriteMovies = FavoriteModel(title: "fav bands", elements: [pulp,iron2,mega2])

// en son dızı olsuturp

let myFavo = [favoriteBands,favoriteMovies]

