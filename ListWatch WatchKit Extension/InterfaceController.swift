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
    @IBOutlet var myLabel: WKInterfaceLabel!
    @IBOutlet weak var mainImage: WKInterfaceImage!
    
    
    let userDefaults = UserDefaults()
    
    
    
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        myLabel.setText("1")
        myLabel.setText(userDefaults.value(forKey: "item") as? String)
        
        let array = ["Apples", "Oranges", "Mangos", "Bananas", "Grapes"]
        
        
        myTable.setNumberOfRows(5, withRowType: "cell")
        //var x = 0
//        for fruit in array {
//            let row = myTable.rowController(at: x) as! RowController
//            row.myLabel.setText(fruit)
//
//            x += 1
//        }
        
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
    
    @IBAction func buttonTapped() {
        // self.pushController(withName: "first", context: nil)
        self.presentTextInputController(withSuggestions: nil, allowedInputMode: .allowEmoji) { results  in
            guard let results = results else {
                return
            }
            //
            OperationQueue.main.addOperation { [self] in
                self.dismissTextInputController()
                self.myLabel.setText(results[0] as? String)
                userDefaults.setValue(results[0] as? String, forKey: "item")
            }
        }
    }
    

    

    
}
