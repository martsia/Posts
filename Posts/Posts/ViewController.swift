//
//  ViewController.swift
//  Posts
//
//  Created by Marta Kalichynska on 06.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
            PostsViewModel.sharedInstance.fetchPosts()
        // Do any additional setup after loading the view.
    }
}


