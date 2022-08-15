//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Apple on 15.08.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var choosenFavElement : FavoriteElements
    
    var body: some View {
        VStack{
            Image(choosenFavElement.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(choosenFavElement.name)
                .font(.largeTitle)
                .padding()
            Text(choosenFavElement.desc)
            
        }
        
    }
}





struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosenFavElement: metallica)
    }
}
