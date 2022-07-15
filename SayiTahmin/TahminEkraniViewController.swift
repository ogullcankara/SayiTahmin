//
//  TahminEkraniViewController.swift
//  SayiTahmin
//
//  Created by Ogulcan Kara on 15.07.2022.
//

import UIKit

class TahminEkraniViewController: UIViewController {

    var randomSayi:Int?
    var kalanHak = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        randomSayi = Int(arc4random_uniform(100))
        print(randomSayi!)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let gelenVeri = sender as? Bool {
            
            let gidilecekVC = segue.destination as! SonucEkraniViewController
            gidilecekVC.sonuc = gelenVeri
            
        }
        
    }
    
    @IBOutlet weak var kalanHakLabel: UILabel!
    @IBOutlet weak var yardimLabel: UILabel!
    @IBOutlet weak var sayiTahminTextField: UITextField!
    
    @IBAction func tahminetButton(_ sender: Any) {
        yardimLabel.isHidden = false
        kalanHak -= 1
        
        if let veri = sayiTahminTextField.text {
            
            if let tahmin = Int(veri) {
                 
                
                if kalanHak != 0 {
                    if tahmin == randomSayi!{
                        //doğru sayfa gecisi
                        let sonuc = true
                        performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
                        
                    }
                    if tahmin > randomSayi!{
                        //azalt
                        yardimLabel.text = "Azalt"
                        kalanHakLabel.text = "Kalan Hak : \(kalanHak)"
                    }
                    
                    if tahmin < randomSayi!{
                        //arttır
                        yardimLabel.text = "Arttır"
                        kalanHakLabel.text = "Kalan Hak : \(kalanHak)"
                    }
                        
                }else{
                    //sayfa gecisi
                    let sonuc = false
                    performSegue(withIdentifier: "tahminTosonuc", sender: sonuc)
                    
                }
                
                sayiTahminTextField.text = ""
            }
            
        }
        
        
        
    }
}
