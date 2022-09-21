//
//  ContentView.swift
//  CW7B
//
//  Created by Hessa AlMusafer on 21/09/2022.
//

import SwiftUI

struct ContentView: View
{
    @State var tap = false
    @State var pic = "plus.circle"
    @State var major = ""
    var body: some View
    {
 
        VStack
        {
            HStack
            {
                Image(systemName: tap ? "minus.circle" : "plus.circle")
                    .font(.largeTitle)
                    .foregroundColor(tap ? Color(UIColor.systemRed) : Color(UIColor.systemGreen))
                
                Text("Choose your major")
                    .bold()
                    .font(.largeTitle)
            }
            
            if tap
            {
                
                VStack
                {
                    
                    Button(action:{
                            major = "Computer Engineering"
                        })
                        {
                            ZStack
                            {
                                Image(systemName: "square.fill")
                                    .resizable()
                                    .frame(width: 350, height: 60)
                                    .cornerRadius(90)
                                    .foregroundColor(.cyan)
                                
                                Text("Computer Engineering")
                                    .font(.largeTitle)
                            }
                        }.accentColor(.black)
                
                    Button(action:{
                            major = "Computer Science"
                        })
                        {
                            ZStack
                            {
                                Image(systemName: "square.fill")
                                    .resizable()
                                    .frame(width: 350, height: 60)
                                    .cornerRadius(90)
                                    .foregroundColor(.cyan)
                                
                                Text("Computer Science")
                                    .font(.largeTitle)
                            }
                        }.accentColor(.black)
                    
                    Button(action:{
                            major = "Other"
                        })
                        {
                            ZStack
                            {
                                Image(systemName: "square.fill")
                                    .resizable()
                                    .frame(width: 350, height: 60)
                                    .cornerRadius(90)
                                    .foregroundColor(.cyan)
                                
                                Text("Other")
                                    .font(.largeTitle)
                            }
                        }.accentColor(.black)
                    
                    
              
                    
                    HStack
                    {
                        Text("Your Major: \(major)")
                            .bold()
                            .font(.largeTitle)
                        
                    }
                }
            }
            
        }
                .onTapGesture
                {
                    withAnimation()
                    {
                    tap.toggle()
                    }
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
