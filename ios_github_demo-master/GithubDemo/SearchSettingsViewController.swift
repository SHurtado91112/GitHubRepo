//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Steven Hurtado on 3/1/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}

class SearchSettingsViewController: UIViewController
{
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var starLabel: UILabel!
    
    weak var delegate: SettingsPresentingViewControllerDelegate?
   
    var starNum = 0
    
    var settings = GithubRepoSearchSettings()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        starNum = settings.minStars
        
        print("STARS: \(starNum)")
        
        slider.setValue(Float(starNum), animated: true)
        
        let timer = Timer.scheduledTimer(timeInterval: 0.04, target: self, selector: #selector(slided), userInfo: nil, repeats: true)
        
        timer.fire()

        // Do any additional setup after loading the view.
    }
    
    func slided()
    {
        starNum = Int(slider.value)
        starLabel.text = "\(starNum)"
    }
    
    @IBAction func saveButtonTapped(sender: UIBarButtonItem) {
        settings.searchString = ""
        settings.minStars = starNum
        
        self.delegate?.didSaveSettings(settings: settings)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonTapped(sender: UIBarButtonItem)
    {
        self.delegate?.didCancelSettings()
        self.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
