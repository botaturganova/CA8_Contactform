//
//  ContentView.swift
//  CA8_Contactform
//
//  Created by bota on 14.01.2025.
//

import SwiftUI
struct ContentView: View {
  @State private var emailAddress = ""
  @State private var message = "Write your message here..."
  @State private var includeLogs = false
  
  var body: some View {
    Form {
      Section(header: Text("How can we reach you?")) {
        TextField("Email Address", text: $emailAddress)
      }
      Section(header: Text("Briefly explain what's going on.")) {
        TextEditor(text: $message)
      }
      Section(footer: Text("This information will be sent anonymously.")) {
        Toggle("Include Logs", isOn: $includeLogs)
      }
      Button("Submit", action: {
        print("Submit button tapped")
      })
    }
  }
}


#Preview {
    ContentView()
}
