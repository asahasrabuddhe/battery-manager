//
//  ContentView.swift
//  Shared
//
//  Created by Ajitem Sahasrabuddhe on 25/01/22.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        Text("Hello World")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
