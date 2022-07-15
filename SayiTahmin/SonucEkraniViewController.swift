//
//  SonucEkraniViewController.swift
//  SayiTahmin
//
//  Created by Ogulcan Kara on 15.07.2022.
//

import UIKit

class SonucEkraniViewController: UIViewController {

    
    @IBOutlet weak var sonucLabel: UILabel!
    @IBOutlet weak var sonucImageView: UIImageView!
    
    var sonuc:Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Sonuç Ekranı"
        print(sonuc!)
        
        if sonuc! {
            
            sonucLabel.text = "Kazandınız"
            sonucImageView.image  = UIImage(named: "mutlu_resim")
        }else {
            sonucLabel.text = "Kaybettiniz"
            sonucImageView.image  = UIImage(named: "uzgun_resim")
        }
        
    }
    
    @IBAction func tekrarOynaButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
}
