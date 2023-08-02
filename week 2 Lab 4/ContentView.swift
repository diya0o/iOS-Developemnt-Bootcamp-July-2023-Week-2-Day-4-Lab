//
//  ContentView.swift
//  week 2 Lab 4
//
//  Created by Diya Alowdah on 02/08/2023.
//

import SwiftUI



//struct Sea: Hashable, Identifiable {
//        let name: String
//        let id = UUID()
//    }
//
//
//    struct OceanRegion: Identifiable {
//        let name: String
//        let seas: [Sea]
//        let id = UUID()
//    }
//
//
//





struct ContentView: View {
    
    
    
    @State  var email : String = ""
    @State  var password : String = ""
    
    @State var isOn : Bool = false
    
    @State var showAlert : Bool = false
    @State var islogin : Bool = false
    
    var body: some View {
        
        
        
        
        
        NavigationStack {
            Form{
                
                TextField("email", text: $email)
                TextField("password", text: $password)
                
                
                Button(action: {
                    if isValidEmail(email) && password.count > 5 {
                        islogin = true
                        
                        
                    }else{
                        showAlert = true
                    }
                    
                    
                    
                }
                       , label: {Text("Login")})
                Section {
                    List{
                        
                        HStack{
                            
                            Image(systemName: "airplane")
                            
                            Text("airplane")
                            
                            Toggle("", isOn: $isOn)
                            
                            
                        }
                        
                        HStack{
                            Image(systemName: "wifi.square.fill")
                            
                            NavigationLink(destination: {
                                
                                
                                
                            }, label: {  Text("wi-Fi")
                                
                            })
                            
                        }
                        
                        
                        
                        HStack{
                            Image(systemName: "dot.radiowaves.left.and.right")
                            
                            NavigationLink(destination: {
                                
                                
                                
                            }, label: {  Text("Bluetooth")
                                
                            })
                            
                        }
                        
                        
                        
                        
                        HStack{
                            Image(systemName: "antenna.radiowaves.left.and.right.circle.fill")
                            
                            NavigationLink(destination: {
                                
                                
                                
                            }, label: {  Text("Cellular")
                                
                            })
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                }
                
                
                List{
                    
                    HStack{
                        
                        HStack{
                            Image(systemName: "bell.badge.fill")
                            
                            NavigationLink(destination: {
                                
                                
                                
                            }, label: {  Text("Notificaions")
                                
                            })
                            
                        }
                        
                        
                    }
                    
                    HStack{
                        Image(systemName: "hearingdevice.ear")
                        
                        NavigationLink(destination: {
                            
                            
                            
                        }, label: {  Text("Sounds & Hapics")
                            
                        })
                        
                    }
                    
                    
                    
                    HStack{
                        Image(systemName: "globe.asia.australia.fill")
                        
                        NavigationLink(destination: {
                            
                            
                            
                        }, label: {  Text("Focus")
                            
                        })
                        
                    }
                    
                    
                    
                    
                    HStack{
                        Image(systemName: "hourglass")
                        
                        NavigationLink(destination: {
                            
                            
                            
                        }, label: {  Text("Screen Time")
                            
                        })
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Error"),
                        message: Text("Please Check the email or password."),
                        dismissButton: .default(Text("OK"))
                    )
                }
                
                
                
                
            }
            
            
            
            
            
            
        }
        
        
        .alert(isPresented: $islogin) {
            Alert(
                title: Text("Signed in"),
                message: Text(""),
                dismissButton: .default(Text("OK"))
            )
        }
        
    }
    
    
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    
    
    func isValidPassword(password:String){
        
        if password.count < 5 {
            
            showAlert = true
            
        }else {
            showAlert = false
            
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
