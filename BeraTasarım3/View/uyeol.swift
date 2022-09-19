//
//  uyeol.swift
//  BeraTasarım3
//
//  Created by utku enes alagöz on 19.09.2022.
//

import SwiftUI


struct uyeol: View {
    
    @State var email = ""
    @State var parola = ""
    @State var tekrarParola = ""
    
    var body: some View {
        VStack {
            Text("Kayıt ol")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("dark"))
                .kerning(1.9)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text("Kullanıcı adı")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                TextField("emailgiriniz@icloud.com",text: $email)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("dark"))
                    .padding(.top,5)
                
                
                Divider()
                
                
            })
            .padding(.top,25)
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text("Parola")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                SecureField("123456",text: $parola)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("dark"))
                    .padding(.top,5)
                
                
                Divider()
                
                
            })
            .padding(.top,20)
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text("Yeniden Parola")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                SecureField("123456",text: $tekrarParola)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("dark"))
                    .padding(.top,5)
                
                
                Divider()
                
                
            })
            .padding(.top,20)
            
            
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.top,10)
            
            Button(action: {}, label: {
                Image(systemName: "arrow.right")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("dark"))
                    .clipShape(Circle())
                    .shadow(color: Color("lightBlue").opacity(0.6), radius: 5, x: 0, y: 0)
                
                
            })
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.top,10)
            
            
        }
        .padding()
    }
}

struct uyeol_Previews: PreviewProvider {
    static var previews: some View {
        uyeol()
    }
}
