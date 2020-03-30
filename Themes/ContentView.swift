//
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

struct ContentView: View {
    var body: some View {
        List(0...20,id:\.self){ index in
            RowView(index: index)
        }
        .font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
