////
////  fix code.swift
////  ImagesAndErrorHandling
////
////  Created by Tiffany Obi on 12/10/19.
////  Copyright © 2019 Tiffany Obi. All rights reserved.
////
//
//import Foundation
////
////  ViewController.swift
////  ImagesAndErrorHandling
////
////  Created by Tiffany Obi on 12/9/19.
////  Copyright © 2019 Tiffany Obi. All rights reserved.
////
//
//import UIKit
//
//class ComicViewController: UIViewController {
//
//    @IBOutlet weak var comicImage: UIImageView!
//    
//    @IBOutlet weak var stepperControl: UIStepper!
//    
//    @IBOutlet weak var textFeild: UITextField!
//    
//    @IBOutlet weak var mostRecentButton: UIButton!
//    
//    @IBOutlet weak var randomGeneraterButton: UIButton!
//    
//    var comic: Comic? {
//        didSet {
////            updateUI()
//        }
//    }
//    
//  //  var urlString = "https://xkcd.com/\(number)/info.0.json"
//    
//    var stepperValue: Double = 21
//    
////    var inputNumber: String = "" {
////        didSet {
////            ComicApiClent.getComic(number: Double(inputNumber)!) { (result) in
////                switch result {
////                case .failure(let appError):
////                    print("invalid number search: \(appError)")
////                case .success(let data):
////                    self.comic = data
////                }
////            }
////        }
////    }
//    
//    
//    
//    func loadData(number:Double) {
//ComicApiClent.getComic(number: number) { (result) in
//            switch result {
//            case .failure(let appError):
//                fatalError("couldnt find data \(appError)")
//            case .success(let gotcomic):
////                self.comic = gotcomic
//                self.updateUI(imageString: gotcomic.img)
//            }
//    
//    }
//}
//    
//    
//    func configureStepper() {
//        stepperControl.maximumValue = 500
//        stepperControl.minimumValue = 1
//        stepperControl.value = 614
//        stepperControl.stepValue = 10
//    }
//    
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configureStepper()
//        loadData(number: 614)
//        
//        
//    }
//
//    
//    
//    func updateUI(imageString:String) {
//        
////        let imageString = comic?.img ?? ""
//        
//        guard let url = URL(string: imageString) else {
//            print("bad url \(imageString)")
//            return
//        }
//        
//        let request = URLRequest(url: url)
//        
//        NetworkHelper.shared.performDataTask(with: request) { (result) in
//            switch result {
//            case .failure(let appError):
//                
//                print("error: \(appError)")
//            case .success(let image):
//                
//                DispatchQueue.main.async {
//    
//                self.comicImage.image = UIImage(data: image)
//                }
//            }
//        }
//    }
//    
//    @IBAction func stepperValueChanged(_ sender: UIStepper) {
//         loadData(number: stepperControl.value)
////        ComicApiClent.getComic(number: sender.value) { (result) in
////    switch result {
////    case .failure(let appError):
////        fatalError("couldnt find data \(appError)")
////    case .success(let gotcomic):
////
////        self.comic = gotcomic
////
////    }
////            NetworkHelper.shared.performDataTask(with: URL(comic?.img)) { (res) in
////                <#code#>
////            }
//    }
//            
//}
//
//extension ComicViewController: UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
////         loadData(number: stepperControl.value)
////        inputNumber = textField.text ?? ""
//        
//        
//        return true
//    }
//}
