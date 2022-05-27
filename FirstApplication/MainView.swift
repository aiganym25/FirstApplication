//
//  MainView.swift
//  xtraining
//
//  Created by Айганым Оспан on 26.05.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        NavigationView{
            
            TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                DashboardView().tabItem {
                    Label (title: {Text("Dashboard")},
                           icon: {Image(systemName: "house")})
                }
                
                FriendsView().tabItem {
                    Label(title: {Text("Friends")}, icon: {Image(systemName: "bookmark")})
                }
                MoreView().tabItem {
                    Label(title: {Text("More")}, icon: {Image(systemName: "plus")})
                }
                
                IncomingView().tabItem {
                    Label(title: {Text("Incoming")}, icon: {Image(systemName: "message")})
                }
                
                ProfileView().tabItem {
                    Label(title: {Text("Profile")}, icon: {Image(systemName: "person")})
                }
                
                
            }
        }.navigationBarHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
