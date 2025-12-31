//
//  TaskCreateView.swift
//  ToDoApp
//
//  Created by 岡野春菜 on 2025/12/30.
//

import SwiftUI

struct TaskCreateView: View {
    @State private var text = ""
    @State private var date = Date()
    
    var body: some View {
        VStack(spacing: 20){
            Text("タスク内容")
                .font(.title.bold())
            TextField("詳細", text: $text)
                .frame(height: 40)
                .border(.gray)
                .cornerRadius(5)
            DatePicker(
                "期限",
                selection: $date,
                displayedComponents: .date
            ).environment(\.locale, Locale(identifier: "ja_JP"))
        }
        .padding(30)
        .frame(width: 300)
        .border(.blue)
        .cornerRadius(10)
        Button("作成") {
            
        }
        .frame(width: 100, height: 30)
        .background(.blue)
        .foregroundColor(.white)
        .cornerRadius(50)
        .padding(10)
    }
}

#Preview {
    TaskCreateView()
}
