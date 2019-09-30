//
//  ListActorsViewController.swift
//  Sample MVP
//
//  Created by Bassem Abbas on 9/18/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import UIKit

class ListActorsViewController: BaseViewController<ListActorPresenter>, UITableViewDelegate,ListActorsViewProtocal{
    @IBOutlet weak var ListActorsTableView: UITableView!
    lazy var listActorAdapter = ListActorAdapter(tableView: ListActorsTableView)
    
    override func viewDidLoad() {
        let nib = UINib(nibName: "ActorListCell", bundle: Bundle.main)
        ListActorsTableView.register(nib, forCellReuseIdentifier: "ActorListCell")
       
        ListActorsTableView.delegate = self
        ListActorsTableView.dataSource = listActorAdapter
        
        //here i assigned a func referance to another func reference
        listActorAdapter.reloadData = ListActorsTableView.reloadData
        
        presenter.loadActors()
    }
    
    override func loadDataSuccess(date: Any) {
        //  listActorAdapter.list = date as? [Person]
        let persons =  date as? [Person] ?? [Person]()
        listActorAdapter.add(items:persons)
        print("loadDataSuccess")
    }
    
    override func loadDataFailed(with error: Error?) {
        
    }
    
//    func loadDataSuccess(date: Any) {

//    }

}

