//
//  PickerView.swift
//  WeSplit
//
//  Created by Faza Amal Sophian on 24/06/2024.
//

import SwiftUI

struct PickerView: View {
    @Binding var tax:Int
    
    var body: some View {
        Form {
            Picker("Tax", selection: $tax) {
                ForEach(0..<21) {
                    Text("\($0)%")
                }
            }.pickerStyle(WheelPickerStyle())
                .navigationTitle("Select tax amount")
        }
       
    }
}
