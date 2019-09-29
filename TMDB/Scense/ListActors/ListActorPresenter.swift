//
//  ListActorPresenter.swift
//  TMDB
//
//  Created by EsraaGK on 9/29/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation
class ListActorPresenter{
    var view:BaseViewProtocal
    var model:BaseModelProtocal
    init(view:BaseViewProtocal, model:BaseModelProtocal){
        self.view = view
        self.model = model
    }
}
