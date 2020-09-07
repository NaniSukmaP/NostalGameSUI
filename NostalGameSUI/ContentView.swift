//
//  ContentView.swift
//  NostalGameSUI
//
//  Created by Nani Sukma Putri Pratama on 02/09/20.
//  Copyright © 2020 Nani Sukma Putri Pratama. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var howToPlay = false
    var body: some View {
        NavigationView {
            ZStack {
                Color(Colors.background)
                    .edgesIgnoringSafeArea(.all)
                
                Rectangle()
                    .fill(Color(Colors.color_gray).opacity(0.9))
                    .cornerRadius(30.0)
                    .padding()
                    
                VStack(){
                    
                    ZStack{
                        Rectangle()
                            
                            .fill(Color(Colors.color_gray))
                            .cornerRadius(30.0)
                            .frame(height: 350, alignment: .center)
                            .padding(.horizontal)
                            .offset(y: -50)
                        HStack() {
                            Spacer()
                            Image("finger1")
                                .resizable()
                                .frame(width: 70, height: 150, alignment: .center)
                            Spacer()
                            Image("finger2")
                                .resizable()
                                .frame(width: 70, height: 150, alignment: .center)
                            Spacer()
                            Image("finger3")
                                .resizable()
                                .frame(width: 70, height: 150, alignment: .center)
                            Spacer()
                            
                        }.offset(y: -50)
                        
                    
                    }
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("EHA")
                                .font(.title)
                                .foregroundColor(Color.white)
                                
                                
                            Text("🙋🏻‍♂️ 🐘 🐜")
                                .font(.largeTitle)
                                
                        }.padding(.horizontal , 30.0)
                        Spacer()
                        NavigationLink(destination: Choose()){
                             Image("button_play")
                                .offset(x: 30, y: -50)
                                
                        }.buttonStyle(PlainButtonStyle())
                        Spacer()
                    }.offset(y: -50)
                    Text("This game is an Indonesian version of 'Rock-Paper-Scissors'. Thumb represents an Elephant, the index finger represents a human and the little finger represents an ants.")
                        .font(.system(size: 24))
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                        .offset(y : -60)
                        .multilineTextAlignment(.leading)
                        .padding(35.0)
                    
                    Button(action: {
                        self.howToPlay = true
                    }, label: {
                        Text("How To Play")
                            .padding()
                            .background(Color(Colors.color_purple))
                            .foregroundColor(Color.white)
                            .overlay(RoundedRectangle(cornerRadius: 10.0)
                                .stroke()
                        )
                        })
                    .sheet(isPresented: $howToPlay, content: {HowTo()})
                    
                        
                    }
                    
            }.padding(.bottom, 30.0)
        }.edgesIgnoringSafeArea(.all)
            
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Choose: View {
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//    var body: some View {
//        VStack(){
//            Spacer()
//            Text("What will you choose?")
//            Spacer()
//            Button(action: {
//                print("Elephant")
//            }, label: {
//                Text("🐘")
//                    .font(.largeTitle)
//                    .padding()
//                    .background(Color(Colors.color_purple))
//                    .overlay(RoundedRectangle(cornerRadius: 10.0)
//                        .stroke()
//                )
//            })
//            Spacer()
//            Button(action: {
//                print("Elephant")
//            }, label: {
//                Text("🐘")
//                    .font(.largeTitle)
//                    .padding()
//                    .background(Color(Colors.color_purple))
//                    .overlay(RoundedRectangle(cornerRadius: 10.0)
//                        .stroke()
//                )
//            })
//            Spacer()
//            Button(action: {
//                print("Elephant")
//            }, label: {
//                Text("🐘")
//                    .font(.largeTitle)
//                    .padding()
//                    .background(Color(Colors.color_purple))
//                    .overlay(RoundedRectangle(cornerRadius: 20.0)
//                        .stroke()
//                )
//            })
//            Spacer()
//
//        }
//    }
//}
