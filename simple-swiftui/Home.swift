//
//  Home.swift
//  simple-swiftui
//
//  Created by afitra mamor on 15/04/23.
//

import SwiftUI

struct Home: View {
    @State private var searchFood=""
    @State private var isDetail:Bool=false

    var fillValue: Double = 0.5
    var body: some View {
        return Group{
            if isDetail{
                Detail()
            }else{
                VStack(spacing: 0.0){
                    HStack{
                        Image("user_photo")
                        Spacer()
                        VStack{
                            Text("admin")
                                .foregroundColor(Color.gray)
                            Text("Budi")
                            
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                                .padding(.trailing, 0.0)
                            
                        }
                        .padding(.trailing, 0.0)
                    }
                    .padding(.bottom,50)
                    HStack{
                        Spacer()
                        Text("What do you want\nfor lunch?")
                            .font(.system(size: 30))
                        //                    .frame(alignment: .center)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    .padding(.bottom,10)
                    
                    HStack{
                        TextField("search food", text:$searchFood)
                            .foregroundColor(Color.red)
                            .padding(.leading,24)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50)
                    .background(Color("white"))
                    .cornerRadius(50)
                    .padding(.horizontal,20)
                    
                    HStack(){
                        Text("Categories")
                            .fontWeight(.heavy)
                        Spacer()
                        
                    }.padding(.top,20)
                    ScrollView(.horizontal, showsIndicators: true, content: {
                        HStack(){
                            HStack{
                                Image("bread")
                                    .padding(.vertical,5)
                                    .padding(.leading,5)
                                Text("Bread")
                                    .padding(.trailing,18)
                                    .foregroundColor(Color("navy"))
                                
                            }
                            .frame(minWidth: 123, maxWidth: 123, minHeight: 50, maxHeight: 50)
                            .background(Color("white"))
                            .cornerRadius(50)
                            HStack{
                                Image("carrot")
                                    .padding(.vertical,5)
                                    .padding(.leading,5)
                                Text("Carrot")
                                    .padding(.trailing,18)
                                    .foregroundColor(Color("navy"))
                                
                            }
                            .frame(minWidth: 123, maxWidth: 123, minHeight: 50, maxHeight: 50)
                            .background(Color("white"))
                            .cornerRadius(50)
                            HStack{
                                Image("donut")
                                    .padding(.vertical,5)
                                    .padding(.leading,5)
                                Text("Donut")
                                    .padding(.trailing,18)
                                    .foregroundColor(Color("navy"))
                                
                            }
                            .frame(minWidth: 123, maxWidth: 123, minHeight: 50, maxHeight: 50)
                            .background(Color("white"))
                            .cornerRadius(50)
                            HStack{
                                Image("bread")
                                    .padding(.vertical,5)
                                    .padding(.leading,5)
                                Text("Bread")
                                    .padding(.trailing,18)
                                    .foregroundColor(Color("navy"))
                                
                            }
                            .frame(minWidth: 123, maxWidth: 123, minHeight: 50, maxHeight: 50)
                            .background(Color("white"))
                            .cornerRadius(50)
                            HStack{
                                Image("carrot")
                                    .padding(.vertical,5)
                                    .padding(.leading,5)
                                Text("Carrot")
                                    .padding(.trailing,18)
                                    .foregroundColor(Color("navy"))
                                
                            }
                            .frame(minWidth: 123, maxWidth: 123, minHeight: 50, maxHeight: 50)
                            .background(Color("white"))
                            .cornerRadius(50)
                            HStack{
                                Image("donut")
                                    .padding(.vertical,5)
                                    .padding(.leading,5)
                                Text("Donut")
                                    .padding(.trailing,18)
                                    .foregroundColor(Color("navy"))
                                
                            }
                            .frame(minWidth: 123, maxWidth: 123, minHeight: 50, maxHeight: 50)
                            .background(Color("white"))
                            .cornerRadius(50)
                        }
                    })
                    HStack(){
                        Text("Most Ordered")
                            .fontWeight(.heavy)
                        Spacer()
                        
                    }.padding(.top,20)
                        .padding(.bottom,5)
                    ScrollView(.vertical,showsIndicators: true,content: {
                        HStack{
                            
                            Image("food_avocado")
                            VStack{
                                
                                HStack{
                                    Text("Orange Asem")
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                                .padding(.bottom,2)
                                HStack{
                                    Text("Healthy")
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(Color.gray)
                                    
                                    Spacer()
                                }
                                
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
                        .onTapGesture {
                            print("tap detail")
                            self.isDetail = true
                        }
                        .padding(.vertical,5)
                        //            ===================
                        HStack{
                            
                            Image("food_avocado")
                            VStack{
                                
                                HStack{
                                    Text("Orange Asem")
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                                .padding(.bottom,2)
                                HStack{
                                    Text("Healthy")
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(Color.gray)
                                    
                                    Spacer()
                                }
                                
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
                        .onTapGesture {
                            print("tap detail")
                            self.isDetail = true
                        }
                        .padding(.vertical,5)
                        //            ===================
                        HStack{
                            
                            Image("food_avocado")
                            VStack{
                                
                                HStack{
                                    Text("Orange Asem")
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                                .padding(.bottom,2)
                                HStack{
                                    Text("Healthy")
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(Color.gray)
                                    
                                    Spacer()
                                }
                                
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
                        .onTapGesture {
                            print("tap detail")
                            self.isDetail = true
                        }
                        .padding(.vertical,5)
                        //            ===================
                        HStack{
                            
                            Image("food_avocado")
                            VStack{
                                
                                HStack{
                                    Text("Orange Asem")
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                                .padding(.bottom,2)
                                HStack{
                                    Text("Healthy")
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(Color.gray)
                                    
                                    Spacer()
                                }
                                
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
                        .onTapGesture {
                            print("tap detail")
                            self.isDetail = true
                        }
                        .padding(.vertical,5)
                        //            ===================
                        HStack{
                            
                            Image("food_avocado")
                            VStack{
                                
                                HStack{
                                    Text("Orange Asem")
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                                .padding(.bottom,2)
                                HStack{
                                    Text("Healthy")
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(Color.gray)
                                    
                                    Spacer()
                                }
                                
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
                        .onTapGesture {
                            print("tap detail")
                            self.isDetail = true
                        }
                        .padding(.vertical,5)
                        //            ===================
                        
                    })
                    
                    
                    
                    
                }
                .padding(.horizontal, 10)
                
            }
        }
      
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
