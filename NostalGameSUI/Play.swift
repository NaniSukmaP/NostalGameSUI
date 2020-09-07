//
//  Play.swift
//  NostalGameSUI
//
//  Created by Nani Sukma Putri Pratama on 03/09/20.
//  Copyright © 2020 Nani Sukma Putri Pratama. All rights reserved.
//

import SwiftUI

class MyModel: ObservableObject {
    @Published var isValid: Bool = false

    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            self.isValid = true
        }
    }
}

struct Play: View {
//    @Environment(\.presentationMode)
//    var presentationMode
    @Environment(\.presentationMode)
    var presentation
    @State var number = 1
    @State var back = false
    @ObservedObject var model: MyModel = MyModel()
    var val = random()
    var body: some View {
        ZStack{
            Color(Colors.background)
            .edgesIgnoringSafeArea(.all)
            VStack(){
                HStack {
                    VStack(){
                        Text("Device")
                            .font(.title)
                            .multilineTextAlignment(.center)
                        Image("finger\(val)")
                        .resizable()
                        .frame(width: 100, height: 225, alignment: .center)
                    }
                    Spacer()
                }
                Text("VS")
                    .font(.largeTitle)
                HStack {
                    Spacer()
                    VStack(){
                        Image("finger\(number)")
                        .resizable()
                        .frame(width: 100, height: 225, alignment: .center)
                        Text("You")
                            .font(.title)
                            .multilineTextAlignment(.center)
                        
                    }
                    
                }
            }.padding(.horizontal , 50.0)
                .padding(.bottom, 70.0)
            
            .alert(isPresented: $model.isValid, content: {
                Alert(title: Text("You \(win(device: val, you: number))"),
                      dismissButton: .default(Text("Oke, Got it")) )
            })
            
        }
    }
}
func playAgain(){
    
}
func random()-> Int{
    let value = Int.random(in: 4...6)
    return value
}
func win(device : Int , you : Int) -> String {
    var result = "Hasil"
    if device == you+3{
        result = "Draw"
    }else if you == 1 && device == 5 {
        result = "Win 🎉"
    }else if you == 2 && device == 6 {
        result = "Win 🎉"
    }else if you == 3 && device == 4 {
        result = "Win 🎉"
    }else{
        result = "Lose 😭"
    }
    return result
}

struct Play_Previews: PreviewProvider {
    static var previews: some View {
        Play()
    }
}
