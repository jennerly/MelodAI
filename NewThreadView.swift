//
//  NewToDoView.swift
//  To-Do List
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct NewToDoView: View {
    @Environment(\.managedObjectContext) var context
    @State var title: String
    @State var isImportant: Bool
    @Binding var showNewTask: Bool
    var body: some View {
        VStack {
            Text("Comment:")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("MediumBlue"))
            TextField("Enter your description...", text: $title)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: $isImportant) {
                Text("Did you like it?")
                    .padding()
            } //toggle
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false
            }) {
                Text("Comment")
                    .foregroundColor(Color("MediumBlue"))
                    .padding(.bottom, 20)
            } .padding()
        } //vstack
    } //some view
    private func addTask(title: String, isImportant: Bool = false) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.isImportant = isImportant
        
        do {
            try context.save()
        } catch {
            print(error)
        }
    }
} //struct

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, showNewTask: .constant(true))
    }
}
