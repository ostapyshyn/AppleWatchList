//
//  InterfaceController.swift
//  ListWatch WatchKit Extension
//
//  Created by Volodymyr Ostapyshyn on 16.09.2020.
//  Copyright © 2020 Volodymyr Ostapyshyn. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var myTable: WKInterfaceTable!
    
    
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let array = ["Apples", "Oranges", "Mangos", "Bananas", "Grapes"]
        
        
        myTable.setNumberOfRows(5, withRowType: "cell")
        var x = 0
        for fruit in array {
            let row = myTable.rowController(at: x) as! RowController
            row.myLabel.setText(fruit)
            
            x += 1
        }
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    

    
}
