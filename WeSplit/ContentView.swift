//
//  ContentView.swift
//  WeSplit
//
//  Created by Alexandre Talatinian on 19/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                } //: SECTION
                
                Section {
                    Text(checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                } //: SECTION
            } //: FORM
            .navigationTitle("WeSplit")
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
