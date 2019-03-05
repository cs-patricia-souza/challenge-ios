//
//  BannerEntity.swift
//  ALodjinha
//
//  Created by Patricia Cintia de Souza on 05/03/19.
//  Copyright © 2019 Patricia Souza. All rights reserved.
//

import ObjectMapper

class BannerEntity: NSObject, Mappable {
    
    var id: Int?
    var linkUrl: String?
    var urlImagem: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        self.id <- map["id"]
        self.linkUrl <- map["linkUrl"]
        self.urlImagem <- map["urlImagem"]
    }
}
