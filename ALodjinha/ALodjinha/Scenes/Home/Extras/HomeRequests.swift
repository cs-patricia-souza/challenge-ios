//
//  HomeRequests
//  ALodjinha
//
//  Created by Patricia Cintia de Souza on 05/03/19.
//  Copyright © 2019 Patricia Souza. All rights reserved.
//
import Alamofire
import ObjectMapper

typealias BannerObjectsSuccess = (_ banners: [BannerEntity]) -> Void

typealias Failure = (HTTPURLResponse?, Any?) -> Void

class HomeRequests: NSObject {
    
    // MARK: Prorpeties
    
    
    // MARK: Public Methods
    
    func fetchBanners(success: @escaping BannerObjectsSuccess, failure: @escaping Failure) {
        
        let url = APIRoutes.Home.banner
        
        Alamofire.request(url).responseJSON { response in
            
            if let json = response.result.value as? [String: Any] {
                
                guard let banner = Mapper<BannerEntity>().mapArray(JSONObject: json["data"]) else {
                    return
                }
                
                success(banner)
            }
        }
    }
}
