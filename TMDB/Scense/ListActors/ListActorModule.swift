//
//  ListActorModule.swift
//  TMDB
//
//  Created by EsraaGK on 9/29/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation
class ListActorModule {
    private let actorListView = ListActorsViewController()
   private  let actorListModel = ListActorModel()
   private lazy var presenter = ListActorPresenter(view:actorListView, model:actorListModel)
    
    func initializeViewPresenter(){
        actorListView.setPresenter(presenter: presenter)
    }
    
    class var instance:ListActorModule {
        let instanceObj = ListActorModule()
        instanceObj.initializeViewPresenter()
        return instanceObj
    }

    static var actorViewObj:ListActorsViewController{
        let instanceObj = instance.actorListView
        return instanceObj
    }
    private init(){}
}
