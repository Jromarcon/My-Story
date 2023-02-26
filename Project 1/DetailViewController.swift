//
//  DetailViewController.swift
//  Project 1
//
//  Created by Jro Marcon on 2/24/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var giyu: Giyu?

    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let giyu = giyu{
            giyuImageView.image = giyu.image
            descriptionLabel.text = String(giyu.description)
        }
    }
    
    @IBOutlet weak var giyuImageView: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
