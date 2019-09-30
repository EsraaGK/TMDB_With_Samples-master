//
//  ListActorAdapter.swift
//  TMDB
//
//  Created by EsraaGK on 9/30/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation
import UIKit

class ListActorAdapter: NSObject, BaseListAdapterProtocal, UITableViewDataSource {
    var actorListTable:UITableView
    typealias DataType = Person
    internal var list: [Person]?
    
    
     init(tableView: UITableView) {
        actorListTable = tableView
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let actorList = list{
            return actorList.count
        }
        else{
            list = [Person]()
            return 0
        }
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = actorListTable.dequeueReusableCell(withIdentifier: "ActorListCell", for: indexPath) as? ActorListCell{
            //configure cell
            cell.configure(personOBJ: list![indexPath.row])
            
            return cell
        }else{
            print("can't find cell")
            return UITableViewCell()
        }
    }
    
    
    
    //______________________________________________BaseListAdapterProtocal
    
    
    var reloadData: (() -> Void)?
    
    var showEmptyState: ((Bool) -> Void)?
    
    func add(item: Person) {
        
    }
    
    func add(items: [Person]) {
        if list != nil{
            list! += items
        }
        else{
            list = items
        }
        //i've to reload table view
        reloadData?()
    }
    
    func update(item: Person) {
        
    }
    
    func count() -> Int {
        if let actorList = list{
            return actorList.count
        }
        else{
            return 0
        }
    }
    
    func isLastIndex(index: IndexPath) -> Bool {
        if list != nil{
             return (index.row == list!.count)
        }
        else{
             return false
        }
       
    }
    
    func clear(reload: Bool) {
        
    }
    
   
    
  
}
