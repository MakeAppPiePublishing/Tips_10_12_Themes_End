//  ContentView.swift
//  Themes
//
//  Created by Steven Lipton on 3/28/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 10 (Q2 2020) video 12
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
// This Week:  Working with Xcode Themes
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI
//:# Xcode 11.4 Goodies
//:## SwiftUI `List` now works in Xcode Playgrounds
//: Prior to Xcode 11.4, `List` did not work in *Swift Playgrounds* for Xcode. It had a very bad retain cycle error which would eventually crash the system. There was a workaround with `ForEach` but not a great one. But it now works great as you can test below. 

//: To check out what happens see [this video clip](https://www.linkedin.com/learning-login/share?forceAccount=false&redirect=https%3A%2F%2Fwww.linkedin.com%2Flearning%2Flearning-swift-playgrounds-application-development-2%3Ftrk%3Dshare_ent_url&account=2125562)  from the LinkedIn Learning course **Learning Swift Playgrounds Application Development**
// Hello 
struct ContentView: View {
    var body: some View {
        List(0...20,id:\.self){ index in
            RowView(index:index)
        }
    }
}

import PlaygroundSupport
let view = ContentView()
let vc = UIHostingController(rootView: view)
PlaygroundPage.current.liveView = vc

