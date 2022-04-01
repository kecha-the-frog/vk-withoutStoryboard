//
//  AllGroupsService.swift
//  vk-withoutStoryboard
//
//  Created by Ke4a on 01.04.2022.
//

import Foundation

class AllGroupsService{
    func fetchApiAllGroups(searchText:String? = nil, _ completion: @escaping (_ result: [GroupModel])-> Void){
        if let searchText = searchText {
            ApiVK.standart.reguest(GroupModel.self, method: .GET, path: .searchGroup, params: ["q":searchText]) { result in
                switch result {
                case .success(let success):
                    completion(success.items)
                case .failure(let error):
                    debugPrint(error)
                }
            }
        }else{
            ApiVK.standart.reguest(GroupModel.self, method: .GET, path: .getAllGroups, params: nil) { result in
                switch result {
                case .success(let success):
                    completion(success.items)
                case .failure(let error):
                    debugPrint(error)
                }
            }
        }
    }
}
