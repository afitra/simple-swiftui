//
//  simple_swiftuiApp.swift
//  simple-swiftui
//
//  Created by afitra mamor on 15/04/23.
//

import SwiftUI

@main
struct simple_swiftuiApp: App {
    @State private var isLogin: Bool = false

    var body: some Scene {
        WindowGroup {
 
//            StartedView()
//            Splash()
            
            if isLogin{
                StartedView()
            }else{
                Splash()
            }
 
        }
    }
}
