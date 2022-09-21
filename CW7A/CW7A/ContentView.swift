//
//  ContentView.swift
//  CW7A
//
//  Created by Hessa AlMusafer on 21/09/2022.
//

import SwiftUI

struct movie: Identifiable
{
    let id = UUID()
    var name: String
    var cast: [String]
   
}

struct moviedetails: View {
    let name: String
    let cast: [String]

    var body: some View {
        ZStack
        {
            Image(name)
                .resizable()
                .blur(radius: 20)
                
            
            VStack
            {
                Image(name)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                
                Text(name)
                    .foregroundColor(.white)
                    .bold()
                    .font(.largeTitle)
                
                ScrollView(.horizontal)
                {
                    HStack
                    {
                    ForEach(cast, id: \.self)
                        {
                        member in
                            VStack
                            {
                            Image(member)
                                .resizable()
                                .frame(width: 100, height: 120)
                                .scaledToFit()
                                
                                Text(member)
                                    .foregroundColor(.white)
                                    .bold()
                            }
                                
                            
                        }
                       
                    
                    }
                }
            }
            
        }.ignoresSafeArea()
    }
}

struct ContentView: View {
    
    var movies = [movie(name: "Inception", cast: ["Leonardo DiCaprio" , "Joseph Gordon-Levitt" , "Cillian Murphy" , "Tom Hardy"]) , movie(name: "Shutter Island", cast: ["Leonardo DiCaprio" , "Mark Ruffalo" , "Ben Kingsley" , "Michelle Williams"]) , movie(name: "Interstellar", cast: ["Matthew McConaughey" , "Jessica Chastain" , "Anne Hathaway" , "Timothee Chalamet"])]

    var body: some View {
        NavigationView
        {
            List
            {
                    ForEach(movies)
                    {
                        movie in
                        NavigationLink(destination: moviedetails(name: movie.name, cast: movie.cast))
                        {
                            HStack
                            {
                                Image(movie.name)
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                    
                                
                                Text(movie.name)
                            }
                        }
                    }
                
            }.navigationTitle("movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
