//
//  ViewController.swift
//  PhotoFilter
//
//  Created by Amee Thakkar on 6/14/18.
//  Copyright © 2018 Amee Thakkar. All rights reserved.
//

import UIKit
import Sharaku

class ViewController: UIViewController, SHViewControllerDelegate {

    @IBOutlet weak var photoView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openFilterBtn(_ sender: Any) {
        let imageToFilter = photoView.image
        if let imageToFilter = imageToFilter{
            let vc = SHViewController(image : imageToFilter)
            vc.delegate = self
            self.present(vc, animated: true)
        }
    }
    func shViewControllerImageDidFilter(image: UIImage){
        photoView.image = image
    }
    func shViewControllerDidCancel(){
        photoView.image = UIImage(named: "Mansion")
    }
    
}

