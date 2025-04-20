//
//  ContentView.swift
//  App Language
//
//  Created by Yusuf Saifudin on 19/04/25.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showLanguageDialog = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                if showLanguageDialog {
                    Color.black.opacity(0.5)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            withAnimation {
                                showLanguageDialog = false
                            }
                        }
                        .zIndex(1)
                    VStack {
                        Text(LocalizedStringKey("change_language"))
                            .font(.body)
                            .fontWeight(.semibold)
                            .padding(.bottom, 8)
                        ForEach(Language.allCases) { language in
                            Text(language.rawValue)
                                .font(.body)
                                .padding(.vertical, 2)
                        }
                    }
                    .padding(16)
                    .frame(maxWidth: 300)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 10)
                    .zIndex(2)
                }
                
                VStack (alignment: .leading) {
                    Text(LocalizedStringKey("message"))
                        .font(.body)
                        .padding(.top, 16)
                    Text(LocalizedStringKey("settings"))
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top, 16)
                    Divider()
                    HStack {
                        Text("Indonesia")
                            .font(.body)
                        Spacer()
                        Button(action: {
                            showLanguageDialog.toggle()
                        }) {
                            Text(LocalizedStringKey("change_language"))
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 24)
                                .background(
                                    RoundedRectangle(cornerRadius: 8).fill(Color.teal)
                                )
                        }
                        .zIndex(0)
                    }
                    Spacer()
                }
                .padding(.horizontal, 16)
            }
            .navigationTitle(LocalizedStringKey("app_name"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    HomeView()
}
