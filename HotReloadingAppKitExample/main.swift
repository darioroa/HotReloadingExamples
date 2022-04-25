//
//  main.swift
//  HotReloadingAppKitExample
//
//  Created by Dario Roa on 25/4/22.
//
import AppKit

let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate

_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
