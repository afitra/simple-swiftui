//
//  Splash.swift
//  simple-swiftui
//
//  Created by afitra mamor on 16/04/23.
//

import SwiftUI

struct Splash: View {
    @State private var isLogin: Bool = false
    var body: some View {
        return Group{
            if isLogin{
                StartedView()
            }else{
                VStack{
                    Text("Order Your\nFavorite Foods")
                        .font(.system(size: 30))
        //                    .frame(alignment: .center)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                    Text("Sign up to get your foods faster\nand better than before")
                        .foregroundColor(Color("dark_gray"))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    Spacer()
                    Image("splash")
                  Spacer()
                    Button(
                        action: {print("Create new Account")},
                        label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width:327, height: 50)
                                    .foregroundColor(Color("yellow"))
                                Text("Create New Account\n(disable)")
                                  
                                    .foregroundColor(Color("white"))
                                    .font(.system(size: 16, weight:.heavy))
                            }
                    })
                    .disabled(true)
                    
                    Button(
                        action: {
                            print("Sign in")
                            self.isLogin = true
                        },
                        label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width:327, height: 50)
                                    .foregroundColor(Color("white"))
                                Text("Sign In")
                                
                                    .foregroundColor(Color("navy"))
                                    .font(.system(size: 16, weight:.heavy))
                            }
                    })
                    Text("Terms & Conditions")
                        .foregroundColor(Color("dark_gray"))
                        .underline()
                }
            }
        }
           
    
       
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
