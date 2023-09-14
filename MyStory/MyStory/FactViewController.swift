//
//  FactViewController.swift
//  MyStory
//
//  Created by Jose Baez on 8/27/23.
//

import UIKit

class FactViewController: UIViewController {
    
    var profile: Profile?
    
    @IBOutlet weak var factImage: UIImageView!
    @IBOutlet weak var factInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let profile = profile {
            navigationItem.title = profile.fact
            factImage.image = profile.image
            factInfo.text = profile.info
        }
    }
}
