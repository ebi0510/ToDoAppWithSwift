//
//  ContentView.swift
//  ToDoApp
//
//  Created by 岡野春菜 on 2025/12/30.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    @State private var text = ""

    var body: some View {
        VStack {
            Button {
                isPresented = true
            } label: {
                Image(systemName: "plus")
                Text("New Task")
                    .padding(15)
            }
            .buttonStyle()
            .alert("タスク内容", isPresented: $isPresented){
                TextField("タスク内容", text: $text)
            }
            
            VStack{
                Text("タスク1")
                Text("2025/11/20")
            }
            .buttonStyle()
            Spacer()
        }
        .padding()
    }
}

extension View {
    func buttonStyle() -> some View {
        self
            .lineLimit(1)
            .font(.system(size: 20, weight: .regular, design: .default))
            .foregroundColor(Color.blue)
            .frame(maxWidth: .infinity)
            .background( Color.white)
            .foregroundColor(Color.white)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.blue, lineWidth: 1))
            .cornerRadius(5)
            .padding(.bottom,5)
    }
}

#Preview {
    ContentView()
}
