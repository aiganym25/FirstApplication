//
//  Friends.swift
//  FirstApplication
//
//  Created by Айганым Оспан on 27.05.2022.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
        
        VStack{
            
            HStack{
                Spacer()
                Text("Friends")
                Spacer()
            }
            List {
                Text("Alex")
                Text("Martin")
                Text("Bob")
                Text("Alexia")
            }
        }
        
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
