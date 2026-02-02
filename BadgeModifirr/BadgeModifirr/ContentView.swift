//
//  ContentView.swift
//  BadgeModifirr
//
//  Created by Prem Kumar on 02/02/26.
//

import SwiftUI

struct ContentView: View {
    @State var isSelected = 0;
    @State var hasMessage: String? = "new"
    @State var hasTasks: String? = "3"
    var body: some View {
        TabView(selection: $isSelected){
            Tab("Today", systemImage: "calendar",value: 0){
                Text("Overview")
                    .font(.largeTitle)
            }
            Tab("Task", systemImage: "checklist", value: 1){
                Task()
            }
            .badge(hasTasks.map{Text($0)})
            
            Tab("Message", systemImage: "message.fill", value: 2){
                Text("Messages")
                    .font(.largeTitle)
            }

            .badge(hasMessage.map{Text($0)})
            
            Tab("Profile", systemImage: "person.crop.circle.fill", value: 3){
                Profile()
                    
            }
        }
        .onChange(of: isSelected) { oldValue, newValue in
            if newValue == 2{
                hasMessage = nil
            }
            if newValue == 1{
                hasTasks = nil
            }
            
        }

    }
}
struct Task: View {
    var tasks: [String] = ["Clean", "SwiftUi", "SSC"]
    var body: some View {
        NavigationStack{
            List(tasks, id: \.self){task in
                NavigationLink(task){
                    Text(task)
                }
            }
            .navigationTitle("Task")
        }
    }
}
struct Profile: View {
    
    var body: some View {
        NavigationStack{
            List{
                HStack{
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.blue)
                    VStack(alignment: .leading){
                        Text("Prem Kumar")
                        Text("IOS Dev")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                    }
                    
                }
                NavigationLink("Account Setting"){
                    Text("Account")
                }
                NavigationLink("Notification"){
                    Text("Notification")
                }
                NavigationLink("Help & Support"){
                    Text("Help")
                }
                NavigationLink("Sign Out"){
                    Text("Sign Out")
                }
            }
            .navigationTitle("Profile")
        }
        
    }
}

#Preview {
    ContentView()
}
