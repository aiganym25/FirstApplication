//
//  LoginView.swift
//  xtraining
//
//  Created by Айганым Оспан on 26.05.2022.
//

import SwiftUI

struct LoginView: View {
    
    @State var email : String = "";
    @State var password : String = "";
    @State var goToMain: Bool = false;
    
    var body: some View {
        NavigationView{
            VStack{
                
                NavigationLink(destination: MainView(), isActive: $goToMain, label: {EmptyView()})
                
                HStack{
                    Spacer()
                    Text("Login Form")
                    Spacer()
                }
                VStack{
                    Form {
                        
                        Section {
                            TextField("email", text: $email)
                            SecureField("password", text: $password)
                        }
                        Section {
                            Button(action : {
                                self.goToMain = true
                            }){
                                HStack{
                                    Spacer()
                                    Text("login")
                                    Spacer()
                                }
                            }
                        }
                    }
                    .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .background(Color.pink)
                }
                NavigationLink(
                    destination: RegisterView(),
                    label : {
                        Text ("Register")
                    
                })
            }
        }.navigationBarHidden(true)
    }
}

       



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
