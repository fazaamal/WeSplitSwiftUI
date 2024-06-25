//
//  ContentView.swift
//  WeSplit
//
//  Created by Faza Amal Sophian on 11/04/2024.
//


import SwiftUI

struct ContentView: View {
    @State private var total = 0.0
    @State private var noOfPeople = 2
    @State private var tax = 6
    @State private var serviceCharge = 10
    @State private var tip = 10
    @FocusState private var isFocused:Bool
    
    private var tips = [0,10, 20, 30]
    private var serviceCharges = [0,5, 10, 15]

    var costPerPerson: Double {
        
        
        return (total*(1+Double(tax)/100)*(1+Double(serviceCharge)/100)*(1+Double(tip)/100))/Double(noOfPeople+2)
    }
    
    var totalBill: Double {
        return (total*(1+Double(tax)/100)*(1+Double(serviceCharge)/100)*(1+Double(tip)/100))
    }
    
    var body: some View {
        NavigationStack {
            Form {
                
                Section {
                    TextField ("Amount", value: $total, format: .currency(code: Locale.current.currency?.identifier ?? "USD")).keyboardType(UIKeyboardType.decimalPad).focused($isFocused)
                    
                    
                    Picker("Number of people", selection: $noOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }.pickerStyle(WheelPickerStyle())
                    
                }
                
                Section("How much would you like to tip?") {
                    Picker("Tip percentage", selection: $tip) {
                        ForEach(tips, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("How much is the service charge?") {
                    Picker("Service charge", selection: $serviceCharge) {
                        ForEach(serviceCharges, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                
                Section {
//                    This a test commmit
                    NavigationLink(destination: PickerView(tax: $tax)) {
                        HStack {
                            Text("Tax percentage")
                            Spacer()
                            Text("\(tax)%")
                                .foregroundColor(.gray)
                        }
                    }
                } header: {
                    Text("How much is the tax?")
                }
                
                
                Section ("Total bill") {
                    Text(totalBill,  format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                Section("Each person pays:") {
                    Text(costPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                
            }
            .navigationTitle("WeSplit App")
            .toolbar{
                if isFocused {
                    Button("Done"){
                        isFocused = false
                    }
                }
            }
        }
    }
}
   
    
    

#Preview {
    ContentView()
}
