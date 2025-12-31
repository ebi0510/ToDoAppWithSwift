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
    @State private var tasks = [
        (title: "タスク1", data: "2025/11/22", checked: false),
        (title: "タスク2", data: "2025/3/22", checked: false),
        (title: "タスク3", data: "2025/5/22", checked: false)
    ]
    
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
            
            List(0..<tasks.count, id: \.self) {index in
                Button(action: {
                    // タップでtrue/falseを反転察せる
                    tasks[index].checked.toggle()
                }) {
                    HStack {
                        if tasks[index].checked {
                            Image(systemName: "checkmark.circle.fill")
                        } else {
                            Image(systemName: "circle")
                        }
                        Text(tasks[index].title)
                        Spacer()
                        Text(tasks[index].data)
                    }
                }
                .foregroundColor(.blue)
            }
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
