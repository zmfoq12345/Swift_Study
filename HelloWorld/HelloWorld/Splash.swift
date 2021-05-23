//
//  Splash.swift
//  HelloWorld
//
//  Created by 양현승 on 2021/05/23.
//

import SwiftUI

struct SplashView : View {
    
    var body: some View {
        VStack{
            Button(action: move) {
                Text("Hello World")
            }
        }
    }
    
    func move(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            ContentView();
        }
    }
}

