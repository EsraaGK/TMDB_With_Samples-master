//
//  ListActorModel.swift
//  TMDB
//
//  Created by EsraaGK on 9/29/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation
class ListActorModel:ListActorsModelProtocal {
    func getActors(forPage page: Int, compelation: @escaping (Result<Any, Error>) -> Void) {
        networkManager.getActors(pageNumber: page){(result:Result<APIResponse<Person>, NetworkError>,statusCode: StatusCode?)in
            switch result{
            case .success(let apiResponse):compelation(.success(apiResponse.results))
            case .failure(_):print("help from ListActorModel")
                
            }
            
        }
    }
    
    let networkManager = NetworkManager()
    
//    func getActors(pageNumber:Int, completion: @escaping (_ list:[Person]?)->Void){
//
//       
//
//     }
}
