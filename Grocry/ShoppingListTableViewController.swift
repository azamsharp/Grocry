//
//  ShoppingListTableViewController.swift
//  Grocry
//
//  Created by Mohammad Azam on 5/31/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation

class ShoppingListTableViewController : UITableViewController {
    
    private var dataSource :TableDataSource<ShoppingListTableViewCell,ShoppingList>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateTableView()
    }
    
    private func updateTableView() {
        
        self.tableView.rowHeight = 60
        
        Webservice().load(ShoppingList.all) { shoppingLists in
            
            if let shoppingLists = shoppingLists {
                
                self.dataSource = TableDataSource(cellIdentifier: "ShoppingListTableViewCell", items: shoppingLists) { cell, shoppingList in
                    
                    cell.textLabel?.text = shoppingList.title
                    cell.countView.label.text = "35"

                }
                
                self.tableView.dataSource = self.dataSource
                self.tableView.reloadData()
            }
        }
        
    }
    
}
