//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Apple on 15.08.2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        // section kullanaccaz liste haricinde 2 tane ıc ıce foraech vey for loop
        NavigationView { // navi view içine alıyoruz !
        List{
            ForEach(myFavo) { favorite in
                Section(header: Text(favorite.title)) {
                    ForEach(favorite.elements) {element in
                        // navigasyon foreach de yapcagız
                        NavigationLink(destination: DetailsView(choosenFavElement: element)) {//link
                            Text(element.name)
                        }
                    }
                }
            }
        }.navigationBarTitle(Text("Favorite Book")) // bar title
       }
    }
}
    
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
