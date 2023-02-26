//
//  ViewController.swift
//  Project 1
//
//  Created by Jro Marcon on 2/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Different section about my character
    let aboutMe = Giyu(description: "Giyu Tomioka is a Demon Slayer of the Demon Slayer Corps and the current Water Hashira. Giyu ran away from home at a young age when her sister died which led him to Demon Slayer Corps where he trained hard and earned his way at the top.", image: UIImage(named: "About Me")!)
    
    let abilities = Giyu(description: "Giyu has 2 abilities which are Demon Slayer Mark and his Bright Red Nichirin Sword. He also possess immense speed & reflexes, stamina & endurance and strength. Giyu overall abilities makes him very powerful and skilled combatant which gives him a spot as a Hashira", image: UIImage(named: "Abilities")!)
    
    let fightingStyle = Giyu(description: "Being a Hashira of the Demon Slayer Corps, Giyu is one of the most powerful and skilled swordsman in the entire organization. A water breathing style is taught to him by the water Hashira before him. There are 10 water breathing technique with the 11th created by Giyu.", image: UIImage(named: "fightingStyle")!)
    
    var giyu: [Giyu] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //array for storing Giyu information
        giyu = [aboutMe, abilities, fightingStyle]
    }

    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue",
           let tappedView = sender as? UIView,
           let detailViewController = segue.destination as? DetailViewController{
            
            if tappedView.tag == 0{
                detailViewController.giyu = giyu[0]
            }
            else if tappedView.tag == 1{
                detailViewController.giyu = giyu[1]
            }
            else if tappedView.tag == 2{
                detailViewController.giyu = giyu[2]
            }
        }
    }
    
}

