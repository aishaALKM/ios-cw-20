//
//  ContentView.swift
//  day7-MovieApp
//
//  Created by Shaimaa on 23/03/2022.
//

import SwiftUI

struct MoviesList: View {
    let movies = ["Encanto", "HomeAlone", "Ratatouille"]
    var body: some View {
        NavigationView{
        List(movies, id: \.self){movie in
            NavigationLink(destination: detailsView()){
            movieRow(movie: movie)
            }
            }.navigationBarTitle("Movies🎬")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesList()
    }
}

struct movieRow: View {
    var movie : String
    var body: some View {
        HStack{
            Image(movie)
                .resizable()
                .frame(width: 45, height: 56)
                .scaledToFill()
                .clipShape(Circle())
            Text(movie)
                .font(.callout)
        }
    }
}
