//
//  ListActorPresenter.swift
//  TMDB
//
//  Created by EsraaGK on 9/29/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation
class ListActorPresenter: ListActorsPresenterProtocal{
    var currentPage: Int
    var view:ListActorsViewProtocal
    var model:ListActorsModelProtocal
    
    init(view:ListActorsViewProtocal, model:ListActorsModelProtocal){
        self.view = view
        self.model = model
        currentPage = 1
    }
    
    func activateSearch() {
        
    }
    
    func cancelSearch() {
        
    }
    
    func loadActors() {
        model.getActors(forPage: currentPage) { result/*:(Result<Any, Error>) */in
            
            switch result{
            case .success(let list):do {
                self.view.loadDataSuccess(date: list)
                var x:[Person] = list as! [Person]
                print(x[0])
                }
            case .failure(_):print("help from ListActorModel")
                
            }
        }
    }
    
    func refreshActores() {
        
    }
    
    func loadMoreActores() {
        
    }
}
