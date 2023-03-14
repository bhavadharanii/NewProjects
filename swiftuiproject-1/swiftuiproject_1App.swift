//
//  swiftuiproject_1App.swift
//  swiftuiproject-1
//
//  Created by Fiuser on 09/03/23.
//

import SwiftUI

@main
struct swiftuiproject_1App: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                VStack{
                    // nextPage()
                    ContentView()
                    //nextPage()
                    Spacer()
                    HStack{
                        CardView(
                            iconName: "character.book.closed.fill",
                            title: "Books",
                            description: "read, dream,live "
                        )
                        Spacer()
                        CardView(
                            iconName: "music.quarternote.3",
                            title: "Music",
                            description: "listen, sing, dance"
                        )
                    }
                    Spacer()
                    ZStack{
                        CardView(
                            iconName: "laptopcomputer.and.iphone",
                            title: "Programming",
                            description: "imagine, create, share, enjoy"
                        )
                        BadgeView(title: "Layout using Stacks", padding: 10, radius: 20, rotation: 0, xOffset: 0, yOffset: 110)
                    }
                    Spacer()
                }
            nextButton()
                    .padding()
            }
        }
    }
}
