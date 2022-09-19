//
//  home.swift
//  BeraTasarım3
//
//  Created by utku enes alagöz on 19.09.2022.
//

import SwiftUI

struct home: View {
    
    
    @State var maxHalkaYukseklıgı: CGFloat = 0
    
    @State var showUyeOl = false

    

    
    
    var body: some View {
        
        VStack {
            GeometryReader{proxy -> AnyView in
                           let yukseklik = proxy.frame(in: .global).height
                
                DispatchQueue.main.async {
                    if maxHalkaYukseklıgı == 0{
                        maxHalkaYukseklıgı = yukseklik
                    }
                }
                           return AnyView(
                            ZStack {
                                Circle()
                                    .fill(Color("dark"))
                                    .offset(x: getRect().width / 2, y: -yukseklik / 1.3)
                                Circle()
                                    .fill(Color("dark"))
                                    .offset(x: -getRect().width / 2, y: -yukseklik / 1.5)
                                Circle()
                                    .fill(Color("lightBlue"))
                                    .offset(y: -yukseklik / 1.3)
                                    .rotationEffect(.init(degrees: -5))
                                
                            }
                        )
        }
            .frame(maxHeight: getRect().width)
                            
            ZStack{
                
                if showUyeOl {
                    uyeol()
                        .transition(.move(edge: .trailing))
                    
                }else{
                    giris()
                        .transition(.move(edge: .trailing))

                }
                
            }
        
        
        
        
        
        
        .padding(.top,-maxHalkaYukseklıgı / 1.6)
        .frame(maxHeight: .infinity, alignment: .top)
    }
        .overlay(
        
            HStack{
                Text(showUyeOl ? "Yeni üye" : "Üye misin?")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                Button(action: {
                    withAnimation {
                        showUyeOl.toggle()
                    }
                    
                }, label: {
                  
                    Text(showUyeOl ? "Oturum aç" : "Kayıt ol")
                        .fontWeight(.bold)
                        .foregroundColor(Color("lightBlue"))
                    
                    
                })
                
            }
            ,alignment: .bottom
        
        )
        .background(
            HStack{
                
                Circle()
                    .fill(Color("lightBlue"))
                    .frame(width: 70, height: 70)
                    .offset(x: -30, y: 0)
                Spacer(minLength: 0)
                
                Circle()
                    .fill(Color("dark"))
                    .frame(width: 110, height: 110)
                    .offset(x: 40, y: 20)
                
            }
                .offset(y: getSafeArea().bottom + 30)
            
            ,alignment: .bottom
        )
}
}
struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
    
    func getSafeArea()->UIEdgeInsets{
    
        return UIApplication.shared.windows.first?.safeAreaInsets ?? UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
    }
}
                                
                            
