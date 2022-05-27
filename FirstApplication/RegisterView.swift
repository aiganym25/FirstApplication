//
//  RegisterView.swift
//  xtraining
//
//  Created by Айганым Оспан on 26.05.2022.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email : String = "";
    @State var password : String = "";
    @State var firstName : String = "";
    @State var secondName : String = "";
    @State var confirmPassword: String = "";
    @State var goToLoginPage : Bool = false;
    
    var body: some View {
        VStack{
            
            NavigationLink(destination: LoginView(), isActive: $goToLoginPage, label: {EmptyView()})
            
            HStack{
                Spacer()
                Text("Register Form")
                Spacer()
            }
            
            Form {
                Section {
                    TextField("First name", text: $firstName)
                    TextField("Second name", text: $secondName)
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                    SecureField("Confirm password", text: $confirmPassword)
                    
                }
                Section {
                    Button(action : {
                        self.goToLoginPage = true
                    }){
                        HStack{
                            Spacer()
                            Text("Register")
                            Spacer()
                        }
                    }
                }
            }
            .foregroundColor(Color.blue)
            .background(Color.yellow)
            
            
        }.navigationBarHidden(true)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
