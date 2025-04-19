//
//  ContentView.swift
//  App Language
//
//  Created by Yusuf Saifudin on 19/04/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading) {
                Text("Aplikasi ini tersedia dalam bahasa indonesia dan inggris, ganti bahasa dengan pengaturan dibawah.")
                    .font(.body)
                    .padding(.top, 16)
                Text("Pengaturan")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top, 16)
                Divider()
                HStack {
                    Text("Indonesia")
                        .font(.body)
                    Spacer()
                    Button(action: {}) {
                        Text("Ganti Bahasa")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 24)
                            .background(
                                RoundedRectangle(cornerRadius: 8).fill(Color.teal)
                            )
                    }
                }
                Spacer()
            }
            .padding(.horizontal, 16)
            .navigationTitle("App Language")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    HomeView()
}
