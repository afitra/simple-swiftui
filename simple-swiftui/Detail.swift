//
//  Detail.swift
//  simple-swiftui
//
//  Created by afitra mamor on 16/04/23.
//

import SwiftUI

struct Detail: View {
    var fillValue: Double = 0.5
    @State private var isHome: Bool = false
    var body: some View {
        return Group{
            if isHome{
                Home()
            }else{
                VStack(spacing: 0.0){
                    Image("tes")
                        .resizable()
                        .padding(0.0)
                        .frame(width: .infinity, height: 250)
                    HStack(spacing: 0.0){
                        VStack(alignment: .leading){
                            Text("Gyoza Sapi")
                                .fontWeight(.semibold)
                            
                            Text("meal")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("dark_gray"))
                            
                            
                            
                        }
                        HStack{
                            Spacer()
                            Text("3.8")
                            
                            GeometryReader { geometry in
                                ZStack(alignment: .leading) {
                                    Rectangle()
                                    Rectangle()
                                        .fill(Color.orange)
                                        .frame(width: geometry.size.width * fillValue)
                                }
                            }
                            .frame(width: 20.0, height: 20.0)
                            .mask(
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                            )
                            
                            //                            .aspectRatio(1,contentMode: .fit)
                            
                        }
                        .frame(width: nil)
                    }
                    .padding(.horizontal, 5.0)
                    .padding(/*@START_MENU_TOKEN@*/.vertical, 10.0/*@END_MENU_TOKEN@*/)
                    Text("Makanan asal Bandung dengan tekstur yang lembut sehingga ketika dimakan rasanya tidak sakit tenggorokan.Makanan asal Bandung dengan tekstur yang lembut sehingga ketika dimakan rasanya tidak sakit tenggorokan.Makanan asal Bandung dengan tekstur yang lembut sehingga ketika dimakan rasanya tidak sakit tenggorokan.")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil)
                        .padding(.horizontal, 5.0)
                        .padding(/*@START_MENU_TOKEN@*/.vertical, 10.0/*@END_MENU_TOKEN@*/)
                    HStack(spacing: 0.0){
                        Text("Bundle")
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding(.horizontal, 5.0)
                    .padding(/*@START_MENU_TOKEN@*/.vertical, 10.0/*@END_MENU_TOKEN@*/)
                    
                    ScrollView(.horizontal, showsIndicators: true, content: {
                        HStack{
                            Button(action: {
                                print("button pressed")
                                
                            }) {
                                Image("rekom1")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            }
                            Button(action: {
                                print("button pressed")
                                
                            }) {
                                Image("rekom2")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            }
                            Button(action: {
                                print("button pressed")
                                
                            }) {
                                Image("rekom3")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            }
                            Button(action: {
                                print("button pressed")
                                
                            }) {
                                Image("rekom1")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            }
                            Button(action: {
                                print("button pressed")
                                
                            }) {
                                Image("rekom2")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            }
                            Button(action: {
                                print("button pressed")
                                
                            }) {
                                Image("rekom3")
                                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            }
                        }
                        
                    })
                    .padding(.leading, 5.0)
                    Spacer()
                     HStack(spacing: 0.0){
                         VStack(alignment: .leading){
                            Text("85K")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                
                            Text("/posi")
                                .fontWeight(.semibold)
                                .foregroundColor(Color("dark_gray"))
                                .multilineTextAlignment(.leading)
                        }
                        Spacer()
                        Button(
                            action: {
                                print("Order Now")
                                self.isHome = true
                            },
                            label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 50)
                                        .frame(width:250, height: 50)
                                        .foregroundColor(Color("yellow"))
                                    Text("Order Now")
                                    
                                        .foregroundColor(Color("white"))
                                        .font(.system(size: 16, weight:.heavy))
                                }
                        })
                        
                    }
                     .padding(.horizontal, 5.0)
                     .padding(/*@START_MENU_TOKEN@*/.bottom, 15.0/*@END_MENU_TOKEN@*/)
                    
                }
                .padding(.horizontal, 0.0)
            }
        }
      
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail()
    }
}
