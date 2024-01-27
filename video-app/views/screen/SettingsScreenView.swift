//
//  SettingsScreenView.swift
//  video-app
//
//  Created by Jorge on 26/01/24.
//

import SwiftUI

struct SettingsScreenView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Image("man")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200, alignment: .center)
                        .cornerRadius(500)
                }
                .padding(.vertical, 30)
                
                VStack {
                    Text("Jorge Ortiz")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title)
                        .padding(.bottom, 10)
                    
                    Text(verbatim: "ortiz.mata.jorge@gmail.com")
                        .foregroundColor(.white)
                        .bold()
                        .font(.body)
                    Text(verbatim: "Software Engineer")
                        .foregroundColor(.white)
                        .bold()
                        .font(.body)
                        .padding(.bottom, 10)
                    
                    Text(verbatim: "444 576 3034")
                        .foregroundColor(.white)
                        .bold()
                        .font(.body)
                }
                .padding(.bottom, 30)
                
                VStack {
                    HStack {
                        Text("Editar Perfil")
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "arrowtriangle.right.fill")
                            .foregroundColor(.white)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    
                    HStack {
                        Text("Informacion de mi cuenta")
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "arrowtriangle.right.fill")
                            .foregroundColor(.white)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    
                    HStack {
                        Text("Cerrar sesion")
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "arrowtriangle.right.fill")
                            .foregroundColor(.white)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    
                        
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
                .padding()
                
                VStack {
                    Text("Movie App")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .bold()
                    Text("2024 - Derechos Reservados")
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .accentColor(Color.black)
            .background(
                LinearGradient(gradient: Gradient(colors: [primaryColor, secondaryColor]), startPoint: .top, endPoint: .bottom)
            )
        }
        
    }
}

#Preview {
    SettingsScreenView()
}
