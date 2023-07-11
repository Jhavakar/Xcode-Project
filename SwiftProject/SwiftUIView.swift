//
//  SwiftUIView.swift
//  SwiftProject
//
//  Created by Jhavakar Thillainathan on 10/06/2021.
//

import SwiftUI
//import Firebase
struct SwiftUI: View {
    
    @State var index = 0
    @Namespace var line
    
    var body: some View {
        
        VStack{
            Image("A-class")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 60, height: 60)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            HStack(spacing: 0){
                
                Button(action: {
                    
                    withAnimation(.spring()) {
                    
                        index = 0
                    }
                    
                }) {
                    
                    VStack{
                        
                        Text("Login")
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                            .foregroundColor(index == 0 ? .black: .gray)
                        
                        ZStack{
                            
                            Capsule()
                                .fill(Color("Color"))
                                .frame( height: 5)
                            
                            if index == 0{
                            
                                Capsule()
                                    .fill(Color("Color"))
                                    .frame( height: 5)
                                    .matchedGeometryEffect(id: "Tab", in: line)
                            }
                            
                        }
                        
                    }
                }
                
                Button(action: {
                    
                    withAnimation(.spring()) {
                    
                        index = 1
                    }
                    
                }) {
                    
                    VStack{
                        
                        Text("Sign Up")
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                            .foregroundColor(index == 1 ? .black: .gray)
                        
                        ZStack{
                            
                            Capsule()
                                .fill(Color("Color"))
                                .frame( height: 5)
                            
                            if index == 1{
                            
                                Capsule()
                                    .fill(Color("Color"))
                                    .frame( height: 5)
                                    .matchedGeometryEffect(id: "Tab", in: line)
                            }
                            
                        }
                        
                    }
                }
                
            }
            .padding(.top, 10)
            
            if index == 0{
                
                Login()
            }
            else {
                
                SignUp()
            }
            
        }
    }
}

struct Login : View {
    
    @State var email = ""
    @State var password = ""
    @State var visible = false
    @State var alert = false
    @State var error = ""
    
    var body: some View{
        
            VStack{
                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text("Login")
                            .fontWeight(.bold)
                        
                    }
                    
                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                                }
                .padding(.horizontal,15)
                .padding(.top,10)
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Username")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

                    
                    TextField("Email", text: $email)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -5)
                    
                    Text("Password")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

                    if self.visible{
                        TextField("Password", text: self.$password)
                    } else{
                        SecureField("Password", text: self.$password)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -5)
                        
                    }
                            
                
                    
                    Button(action: {}) {
                        
                        Text("Forgot Password")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.black)
                                            }

                    
                    .padding(.top,10)
                }
                .padding(.horizontal,15)
                .padding(.top,25)
                
                NavigationLink(
                    destination: MainView()){
                Button(action: {}) {
                    
                    Text("Login")
                        .font(.system(size:25))
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(width:UIScreen.main.bounds.width - 50)
                        .foregroundColor(.white)
                }
                .background(Color("Color"))
                .cornerRadius(10)
                .padding(.top,25)
                
                if self.alert{
                    
                    ErrorView(alert: self.$alert, error: self.$error)
                    
                }
                }
            }
    }
    
//    func verify(){
//
//        if self.email != "" && self.password != ""{
//
//            Auth.auth().signIn(withEmail: self.email, password: self.password) { (res, err) in
//
//                if err != nil{
//
//                    self.error = err!.localizedDescription
//                    self.alert.toggle()
//                    return
//                }
//
//                print("success")
//                UserDefaults.standard.set(true, forKey: "status")
//                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
//            }
//        }
//        else{
//
//            self.error = "Please fill all the fields properly"
//            self.alert.toggle()
//        }
//    }
//
//    func reset(){
//
//        if self.email != ""{
//
//            Auth.auth().sendPasswordReset(withEmail: self.email) { (err) in
//
//                if err != nil{
//
//                    self.error = err!.localizedDescription
//                    self.alert.toggle()
//                    return
//                }
//
//                self.error = "RESET"
//                self.alert.toggle()
//            }
//        }
//        else{
//
//            self.error = "The email address is empty"
//            self.alert.toggle()
//        }
//    }
    
}

struct SignUp : View {
    
    @State var email = ""
    @State var password = ""
    @State var visible = false
    @State var alert = false
    @State var error = ""
    
    var body: some View{
        
        VStack{
            
            HStack{
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Sign Up")
                        .fontWeight(.bold)
                    
                }
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                            }
            .padding(.horizontal,15)
            .padding(.top,10)
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("Email")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -5)
                
                Text("Password")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

                TextField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -5)

            }
            .padding(.horizontal,15)
            .padding(.top,35)
            
            Button(action: {}) {
                
                Text("Sign Up")
                    .font(.system(size:25))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.vertical)
                    .frame(width:UIScreen.main.bounds.width - 50)
                    .foregroundColor(.white)
            }
            .background(Color("Color"))
            .cornerRadius(10)
            .padding(.top,25)
            
            if self.alert{
                
                ErrorView(alert: self.$alert, error: self.$error)
            }
        }
    }
    
//    func register(){
//
//        if self.email != ""{
//
//            if self.password == self.password{
//
//                Auth.auth().createUser(withEmail: self.email, password: self.password) { (res, err) in
//
//                    if err != nil{
//
//                        self.error = err!.localizedDescription
//                        self.alert.toggle()
//                        return
//                    }
//
//                    print("success")
//
//                    UserDefaults.standard.set(true, forKey: "status")
//                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
//                }
//            }
//            else{
//
//                self.error = "The password doesn't mismatch"
//                self.alert.toggle()
//            }
//        }
//        else{
//
//            self.error = "Please fill all the fields properly"
//            self.alert.toggle()
//        }
//    }
}

struct ErrorView : View {
    
    @State var color = Color.black.opacity(0.7)
    @Binding var alert : Bool
    @Binding var error : String
    
    var body: some View{
        
        GeometryReader{_ in
            
            VStack{
                
                HStack{
                    
                    Text(self.error == "RESET" ? "Message" : "Error")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(self.color)
                    
                    Spacer()
                }
                .padding(.horizontal, 25)
                
                Text(self.error == "RESET" ? "Password reset link has been sent successfully" : self.error)
                .foregroundColor(self.color)
                .padding(.top)
                .padding(.horizontal, 25)
                
                Button(action: {
                    
                    self.alert.toggle()
                    
                }) {
                    
                    Text(self.error == "RESET" ? "Ok" : "Cancel")
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 120)
                }
                .background(Color("Color"))
                .cornerRadius(10)
                .padding(.top, 25)
                
            }
            .padding(.vertical, 25)
            .frame(width: UIScreen.main.bounds.width - 70)
            .background(Color.white)
            .cornerRadius(15)
        }
        .background(Color.black.opacity(0.35).edgesIgnoringSafeArea(.all))
    }
}

struct SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI()
    }
}
