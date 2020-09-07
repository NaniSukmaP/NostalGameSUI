//
//  choose.swift
//  NostalGameSUI
//
//  Created by Nani Sukma Putri Pratama on 03/09/20.
//  Copyright © 2020 Nani Sukma Putri Pratama. All rights reserved.
//

import SwiftUI

struct Choose: View {
    @Environment(\.presentationMode)
    var presentationMode
    @State var choose = false
    var body: some View {
        VStack(){
            Spacer()
            Text("What will you choose?")
                .font(.largeTitle)
                .padding(20)
            NavigationLink(destination: Play(number: 3)){
                 Text("🐘")
                    .padding(.horizontal, 30.0)
                    .padding(.vertical , 15.0)
                    .font(.largeTitle)
                    
                    .background(Color(Colors.color_purple))
                    .cornerRadius(10.0)
                
            }.padding(10.0)
            
//            Button(action: {
//                self.choose = true
//            }, label: {
//                Text("🐘")
//                    .padding(.horizontal, 30.0)
//                    .padding(.vertical , 15.0)
//                    .font(.largeTitle)
//
//                    .background(Color(Colors.color_purple))
//                    .cornerRadius(10.0)
//            }).padding(10.0)
            
            NavigationLink(destination: Play(number: 1)){
                 Text("🙋🏻‍♂️")
                    .padding(.horizontal, 30.0)
                    .padding(.vertical , 15.0)
                    .font(.largeTitle)
                    
                    .background(Color(Colors.color_purple))
                    .cornerRadius(10.0)
                
            }.padding(10.0)
//            Button(action: {
//                print("Human")
//            }, label: {
//                Text("🙋🏻‍♂️")
//                    .padding(.horizontal, 30.0)
//                    .padding(.vertical , 15.0)
//                    .font(.largeTitle)
//
//                    .background(Color(Colors.color_purple))
//                    .cornerRadius(10.0)
//            }).padding(10.0)
//                .sheet(isPresented: $choose, content: {Play(number: 1)})
           NavigationLink(destination: Play(number: 2)){
                Text("🐜")
                   .padding(.horizontal, 30.0)
                   .padding(.vertical , 15.0)
                   .font(.largeTitle)
                   
                   .background(Color(Colors.color_purple))
                   .cornerRadius(10.0)
               
           }.padding(10.0)
//            Button(action: {
//                print("Ant")
//            }, label: {
//                Text("🐜")
//                    .padding(.horizontal, 30.0)
//                    .padding(.vertical , 15.0)
//                    .font(.largeTitle)
//                    .background(Color(Colors.color_purple))
//                    .cornerRadius(10.0)
//
//            }).padding(10.0)
            Spacer()

        }
    }
}
struct Choosing {
    let choose : Int
    
    func ChooseImage(choose: Int) -> Int {
        
        if choose == 1 {
            return 1
        }else if choose == 2 {
            return 2
        }else{
            return 3
        }
    }
}
struct choose_Previews: PreviewProvider {
    static var previews: some View {
        Choose()
    }
}
