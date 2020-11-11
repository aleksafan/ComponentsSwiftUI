//
//  RegFirebaseView.swift
//  ComponentsSwiftUI
//
//  Created by Aleksandra Afanasieva on 2020-11-10.
//

import SwiftUI

struct SignUpEmailFirebaseView:View{
    @State var email = ""
    @State var pass = ""
    @State private var isAlert:Bool = false
    @State private var errorMessage:String? = nil
    @State private var hidePass:Bool = true
    var body: some View{
        VStack{
            Text("Registration with Firebase and e-mail")
            VStack{
                Form {
                    TextField("e-mail", text: self.$email)
                        .keyboardType(.emailAddress)
                    HStack {
                        if self.hidePass{
                            SecureField("Password", text: self.$pass)
                            
                        }else{
                            TextField("Password", text: self.$pass)
                        }
                        Image(systemName: self.hidePass ? "eye.slash" : "eye").onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                            self.hidePass.toggle()
                        }
                        )
                    }
                }
                Button(action: self.SignUpEmail){
                    Text("Sign Up")
                }
            }
        }
    }
    func SignUpEmail(){
    }
}

struct SignUpEmailFirebaseView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpEmailFirebaseView()
    }
}
