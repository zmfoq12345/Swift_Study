//
//  ContentView.swift
//  Opener
//
//  Created by 양현승 on 2021/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("").onAppear(perform: openApp)
    }
    
    func openApp(){
        let discordHooks = "discord://app"
        let discorURL = URL(string: discordHooks)!
        if(UIApplication.shared.canOpenURL(discorURL))
        {
            UIApplication.shared.open(discorURL)
        }
        else
        {
            //redirect to safari because the user doesn't have Instagram
            UIApplication.shared.open(URL(string: "https://discord.com/channels/@me")!)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
