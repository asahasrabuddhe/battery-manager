//
//  BatteryManagerApp.swift
//  Shared
//
//  Created by Ajitem Sahasrabuddhe on 25/01/22.
//

import SwiftUI

@main
struct BatteryManagerApp: App {
    let persistenceController = PersistenceController.shared
    
#if os(macOS)
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        Settings {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
#else
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
#endif
}

#if os(macOS)
class AppDelegate: NSObject, NSApplicationDelegate {
    var statusBar: StatusBarController?
    var popover = NSPopover.init()
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let contentView = ContentView()
        popover.contentSize = NSSize(width: 360, height: 360)
        popover.contentViewController = NSHostingController(rootView: contentView)
        statusBar = StatusBarController.init(popover)
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}
#endif
