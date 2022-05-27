//
//  xtrainingApp.swift
//  xtraining
//
//  Created by Айганым Оспан on 26.05.2022.
//

import SwiftUI

@main
struct FirstApplication: App {
    
    var isUserLoggedIn: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isUserLoggedIn {
                    MainView()
            }
            else {
                LoginView()
            }
        }
            
    }
}
