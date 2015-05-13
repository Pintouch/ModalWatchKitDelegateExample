//
//  ModalInterfaceController.swift
//  ModalWatchKitExample
//
//  Created by Adrien Pinto on 13/05/2015.
//  Copyright (c) 2015 Comeet. All rights reserved.
//

import WatchKit
import Foundation


protocol ModalItemChooserDelegate {
    func didSelectItem(itemSelected:String)
}

class ModalInterfaceController: WKInterfaceController {
    
    let rowId = "CustomTableRowController"
    
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    var delegate: InterfaceController?
    
    @IBOutlet weak var customTable: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.delegate = context as? InterfaceController
        // Configure interface objects here.
        println(delegate)
        loadTableData()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    private func loadTableData(){
        customTable.setNumberOfRows(items.count, withRowType: rowId)
        for(i, itemName) in enumerate(items){
            let row = customTable.rowControllerAtIndex(i) as! TableRowController
            row.fillRow(itemName)
            
        }
        
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        let selectedItem = items[rowIndex]
        println("Item Selected = \(selectedItem)")
        self.delegate?.didSelectItem(selectedItem)
        self.dismissController()
    }
    
    
}