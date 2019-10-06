//
//  ViewController.swift
//  BuckTest
//
//  Created by Ishwar Dhanuka on 29/3/19.
//  Copyright © 2019 Ishwar Dhanuka. All rights reserved.
//

import UIKit
import Alamofire
//import Firebase
//import FirebaseAuth
//import FirebaseDatabase
//import FirebaseMessaging
//import FirebaseInstanceID
import IGListKit
import SwinjectStoryboard
import RxSwift
import RxCocoa
//import ZDCChat
//import Fabric
//import Crashlytics
//import Mixpanel
//import SwiftyRSA
//import SwiftKeychainWrapper
//import SkyFloatingLabelTextField
//import CountryPicker
//import Validator
//import SVProgressHUD
//import Intercom
//import Hero
//import Lottie
//import IQKeyboardManagerSwift
//import Armchair
//import Protobuf
//import ZendeskSDK
//import ZendeskCoreSDK
//import ZendeskProviderSDK
class ViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView!
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        adapter.collectionView = collectionView
        adapter.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request("https://www.google.com")
    }


}
extension String {
    var htmlToAttributedString: NSAttributedString? {
        guard let data = data(using: .utf8) else { return NSAttributedString() }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            return NSAttributedString()
        }
    }
    var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }
}

extension ViewController: ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return ["a", "b"] as [ListDiffable]
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return LabelSectionController()
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
    
    
}
