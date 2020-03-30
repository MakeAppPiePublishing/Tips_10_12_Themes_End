//
//  RowView.swift
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
//This Week:  Working with Xcode themes
//  For more code, go to http://bit.ly/AppPieGithub

import SwiftUI

/// RowView
public struct RowView:View{
    var index:Int
    @State var isHidden:Bool = false
    /// Row View
    /// - Parameter index: An `Int` to display on the row
    public init(index:Int){
        self.index = index
        //self._isHidden = isHidden
    }
    //MARK: SwiftUI Body
    public var body: some View{
        HStack{
            Image(systemName: (self.index >= 0 && self.index <= 50 ? "\(self.index).circle":"nosign"))
                .font(.largeTitle)
            //MARK: Geometery Reader
            GeometryReader{ geometry in
                HStack{
                    
                    Text(String(format:"Pizza # %i", self.index))
                        .frame(width: CGFloat(self.isHidden ? CGFloat(0.0) : CGFloat(CGFloat(geometry.size.width) * CGFloat(0.75)) ))
                        .animation(.default)
                    Button(action: {self.isHidden.toggle()}) {
                        Image(systemName: (self.isHidden ? "arrow.right.circle": "arrow.left.circle") )
                        
                        Spacer()
                    }
                    .background(self.isHidden ? Color.green : Color.clear)
                }//Hstack
                    .padding()
                
            }//Hstack
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(index:10)
    }
}
