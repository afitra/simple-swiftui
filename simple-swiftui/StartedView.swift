//
//  StartedView.swift
//  simple-swiftui
//
//  Created by afitra mamor on 15/04/23.
//

import SwiftUI

struct StartedView: View {
    var body: some View {
        VStack(spacing: 0.0){
            Image("splash_image")
                .padding(.bottom,50)
            HStack{
                VStack(alignment: .leading){
                    Text("harga promo")
                        .font(.custom("Poppins-Bold",size: 11))
                        .foregroundColor(Color("dark_gray"))
                    
                    Text("Order lah\nFavorite Foods")
                        .font(.custom("Poppins-Bold", size: 36))
                        .foregroundColor(Color("navy"))
                        .padding(.bottom,30)
                    Button(
                        action: {print("okoko")},
                        label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width:327, height: 50)
                                    .foregroundColor(Color("orange"))
                                Text("Get Started")
                                
                                    .foregroundColor(Color("white"))
                                    .font(.system(size: 16, weight:.heavy))
                            }
                    })
                    .padding(.top,30)
                }
              
            }
        }

    }
}

struct StartedView_Previews: PreviewProvider {
    static var previews: some View {
        StartedView()
    }
}
