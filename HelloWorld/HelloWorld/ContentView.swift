//
//  ContentView.swift
//  HelloWorld
//
//  Created by 양현승 on 2021/05/23.
//

import SwiftUI

struct Friend : Identifiable{
    var id : Int
    var age : Int
    var name : String
}

struct SplashView: View {
    @State var endSplash = false;
    
    var body: some View{
        ZStack{
            
            ContentView()
            
            ZStack{
                Color.black
                
                Text("Hola!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .ignoresSafeArea(.all, edges: .all)
            .onAppear(perform: anmateSplash )
            .opacity(endSplash ? 0 : 1)
        }
    }
    
    func anmateSplash(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation(Animation.easeOut(duration: 1)){
                endSplash.toggle()
            }
        }
    }
}

struct ContentView: View {
    let friends:[Friend] = [
        Friend(id:1, age:20, name: "YHS"),
        Friend(id:2, age:21, name: "tese"),
        Friend(id:3, age:22, name: "ghjw"),
        Friend(id:4, age:23, name: "Yqwe"),
    ]
    var body: some View {
        NavigationView{
            List(friends){ f in
                NavigationLink(destination: DetailView(f: f)){
                    Text(f.name)
                }
            }.navigationBarTitle(Text("My Friends"))
        }
    }
}

struct DetailView : View {
    let f : Friend
    var body : some View{
        Text("Name : \(f.name)")
        Text("Age : \(f.age)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
