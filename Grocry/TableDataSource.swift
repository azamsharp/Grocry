//
//  TableDataSource.swift
//  Grocry
//
//  Created by Mohammad Azam on 6/1/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation

class TableDataSource<CellType :UITableViewCell, Model> : NSObject, UITableViewDataSource {
    
    private var cellIdentifier :String
    private var items :[Model]
    private var configureCell :(CellType,Model) -> ()
    
    init(cellIdentifier :String, items :[Model], configureCell: @escaping (CellType,Model) -> ()) {
        self.cellIdentifier = cellIdentifier
        self.items = items
        self.configureCell = configureCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell :CellType!
        
        cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingListTableViewCell") as? CellType
        
        if cell == nil {
            cell = ShoppingListTableViewCell(style: .default, reuseIdentifier: "ShoppingListTableViewCell") as? CellType
        }
        
        let item = self.items[indexPath.row]
        configureCell(cell, item)
    
        return cell
    }
    
}
