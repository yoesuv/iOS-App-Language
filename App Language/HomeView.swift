//
//  ContentView.swift
//  App Language
//
//  Created by Yusuf Saifudin on 19/04/25.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var appLanguageState: AppLanguageState
    @State private var showLanguageDialog = false
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "AppTeal")
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
    }
    
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
                    LanguageDialog(
                        onSelect: { language in
                            withAnimation {
                                showLanguageDialog = false
                            }
                            appLanguageState.language = language
                        }
                    )
                    .zIndex(2)
                }
                
                VStack (alignment: .leading) {
                    Text("message".localized)
                        .font(.body)
                        .padding(.top, 16)
                    Text("settings".localized)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top, 16)
                    Divider()
                        .padding(.bottom, 8)
                    HStack {
                        Text(appLanguageState.language.displayName)
                            .font(.body)
                        Spacer()
                        Button(action: {
                            showLanguageDialog.toggle()
                        }) {
                            Text("change_language".localized)
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 24)
                                .background(
                                    RoundedRectangle(cornerRadius: 8).fill(Color("AppTeal"))
                                )
                        }
                        .zIndex(0)
                    }
                    Spacer()
                }
                .padding(.horizontal, 16)
            }
            .navigationTitle("app_name".localized)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

private struct LanguageDialog: View {
    let onSelect: (Language) -> Void

    var body: some View {
        VStack {
            Text("change_language".localized)
                .font(.body)
                .fontWeight(.semibold)
                .padding(.bottom, 8)

            ForEach(Language.allCases) { language in
                Button(action: {
                    onSelect(language)
                }) {
                    Text(language.displayName)
                        .font(.body)
                        .foregroundStyle(.primary)
                        .padding(.vertical, 2)
                }
            }
        }
        .padding(16)
        .frame(maxWidth: 300)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 10)
    }
}

#Preview {
    HomeView()
        .environmentObject(AppLanguageState())
}
