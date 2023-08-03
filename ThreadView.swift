//
//  ContentView.swift
//  To-Do List
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct ThreadView: View {
    @Environment(\.managedObjectContext) var context
    @State private var showNewTask = false
    @FetchRequest(entity: ToDo.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \ToDo.id, ascending: false)])
    var toDoItems: FetchedResults<ToDo>
    var body: some View {
        NavigationStack{
            ZStack{
                Image("orangeToBlueREAL")
                    .resizable(resizingMode: .stretch)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Text("MelodAI")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Spacer()
                        Text("👤 User")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    } .padding()
                    VStack {
                        HStack{
                            Text("Thread")
                                .font(.system(size: 40))
                                .fontWeight(.black)
                            Spacer()
                            Button(action: {
                                self.showNewTask = true
                            }) {
                                Text("+")
                            }
                        } //hstack
                        .padding()
                        List {
                            ForEach (toDoItems) { toDoItem in
                                if toDoItem.isImportant == true {
                                    Text("👍 " + (toDoItem.title ?? "No title"))
                                } else {
                                    Text("👎" + (toDoItem.title ?? "No title"))
                                }
                            } .onDelete(perform: deleteTask)
                        } //list
                        .listStyle(.plain)
                        Spacer()
                    } //vstack
                    if showNewTask {
                        NewToDoView(title: "", isImportant: false, showNewTask: $showNewTask)
                    } //if
                }
            } //zstack
    } //navstack
    } //some view
    private func deleteTask(offsets: IndexSet) {
        withAnimation {
            offsets.map { toDoItems[$0] }.forEach(context.delete)
            do {
                try context.save()
            } catch {
                print(error)
            }
        }
    }
} //struct

struct ThreadView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
