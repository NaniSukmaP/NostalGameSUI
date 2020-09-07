//
//  HowTo.swift
//  NostalGameSUI
//
//  Created by Nani Sukma Putri Pratama on 03/09/20.
//  Copyright © 2020 Nani Sukma Putri Pratama. All rights reserved.
//

import SwiftUI

struct HowTo: View {
    @Environment(\.presentationMode)
    var presentationMode
    var body: some View {
        NavigationView {
            
            VStack(spacing : 0.0){
                
                Text("Two players will face each other and hold out their fist. On the count of three both player choose a finger and see the outcome. If both player choose the same finger, it's a draw and you can try again!")
                .navigationBarTitle("How To Play")
                    .navigationBarItems(trailing: Button(action: {self.presentationMode.wrappedValue.dismiss()}, label: {
                        Text("Dismiss ")
                            .font(.body)
                            .foregroundColor(Color.blue)
        
                    }))
                    .font(.title)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                
                Text("🐘 wins over 🙋🏻‍♂️")
                    .font(.title)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                
                Text("🙋🏻‍♂️ wins over 🐜")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                
                Text("🐜 wins over 🐘")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                
            }.padding()
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct HowTo_Previews: PreviewProvider {
    static var previews: some View {
        HowTo()
    }
}
