//
//  AppDelegate.swift
//  HotReloadingAppKitExample
//
//  Created by Dario Roa on 25/4/22.
//

import Cocoa
import Inject

class AppDelegate: NSObject, NSApplicationDelegate {
    
    private var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        let windowRect = NSRect(x: 0, y: 0, width: 480, height: 270)
        window = NSWindow(
            contentRect: windowRect,
            styleMask: [.miniaturizable, .closable, .resizable, .titled],
            backing: .buffered, defer: false)
        window.center()
        window.title = "AppKit Hot Reload"
        
        
        let controller = Inject.ViewControllerHost(ViewController())
        window.contentViewController = controller
        window.contentView = controller.view
        window.setContentSize(windowRect.size)
        window.makeKeyAndOrderFront(nil)
        
        
        Bundle(path: "/Applications/InjectionIII.app/Contents/Resources/macOSInjection.bundle")!.load()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

