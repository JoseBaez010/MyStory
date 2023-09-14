//
//  ViewController.swift
//  MyStory
//
//  Created by Jose Baez on 8/27/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let fact1 = Profile(fact: "My cool backstory", image: UIImage(named: "superman_flying")!, info: "I am Superman, my real name is Kal-El and I am from the planet Krypton. I was sent to Earth as a baby and raised earthlings. Even though I am an alien I have a heart of a human. With my extraordinary powers, I dedicate my life to protecting humanity and upholding truth, justice, and the American way.")
    let fact2 = Profile(fact: "My only weakness", image: UIImage(named: "superman_weakness")!, info: "My weaknesses consist of kryptonite, which poses a significant threat to me. I also regard magic as a vulnerability, and my x-ray vision is blocked by lead.")
    let fact3 = Profile(fact: "How much I can lift", image: UIImage(named: "superman_lift")!, info: "I have the ability to lift extremely heavy objects, and my strength is virtually limitless under a yellow sun like Earth's. I've lifted entire buildings, airplanes, and even celestial bodies when the situation calls for it. It's safe to say that I can handle most any physical challenge that comes my way.")

    var facts: [Profile] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        facts = [fact1, fact2, fact3]
    }
    
    
    @IBAction func didTapFact(_ sender: UITapGestureRecognizer){
        if let tappedView = sender.view {
            performSegue(withIdentifier: "factSegue", sender: tappedView)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "factSegue",
            let tappedView = sender as? UIView,
            let factViewController = segue.destination as? FactViewController {

            if tappedView.tag == 0 {
                factViewController.profile = facts[0]
            } else if tappedView.tag == 1 {
                factViewController.profile = facts[1]
            } else if tappedView.tag == 2 {
                factViewController.profile = facts[2]
            }
        }
    }
    
}
