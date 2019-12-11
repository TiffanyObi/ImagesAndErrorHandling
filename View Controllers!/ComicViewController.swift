//
//  ViewController.swift
//  ImagesAndErrorHandling
//
//  Created by Tiffany Obi on 12/9/19.
//  Copyright © 2019 Tiffany Obi. All rights reserved.
//

import UIKit

class ComicViewController: UIViewController {

    @IBOutlet weak var comicImage: UIImageView!
    
    @IBOutlet weak var stepperControl: UIStepper!
    
    @IBOutlet weak var textFeild: UITextField!
    
    @IBOutlet weak var mostRecentButton: UIButton!
    
    @IBOutlet weak var randomGeneraterButton: UIButton!
    
   
    var comic: Comic? 
    
   // var urlString = "https://xkcd.com/\(number)/info.0.json"
    
 //   var stepperValue: Double = 21
    
    var comicValue = 21
    
    var inputNumberString: String = "" {
        didSet {
            comicValue = Int(inputNumberString) ?? 10
            }
        }
    
    
    
    
    func loadData() {
        ComicApiClent.getComic(number:comicValue) { (result) in
            switch result {
            case .failure(let appError):
                fatalError("couldnt find data \(appError)")
            case .success(let gotcomic):
                
                self.comic = gotcomic
                
            self.updateUI()
            }
    
    }
}
    
    
    func configureStepper() {
        stepperControl.maximumValue = 500
        stepperControl.minimumValue = 1
        stepperControl.value = 21
        stepperControl.stepValue = 10
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      loadData()
        configureStepper()
        
    }

    
    
    func updateUI () {
        
        let imageString = comic?.img ?? "https://xkcd.com/614/info.0.json"
        
        guard let url = URL(string: imageString) else {
            print("bad url \(imageString)")
            return
        }
        
        let request = URLRequest(url: url)
        
        NetworkHelper.shared.performDataTask(with: request) { (result) in
            switch result {
            case .failure(let appError):
                
                print("error: \(appError)")
            case .success(let image):
                
                DispatchQueue.main.async {
    
                self.comicImage.image = UIImage(data: image)
                }
            }
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        comicValue = Int(sender.value)
        loadData()
        
    }
    
}

        


extension ComicViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        inputNumberString = textField.text ?? ""
        
        
        return true
    }
}


