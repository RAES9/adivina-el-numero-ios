//
//  AdivinaViewController.swift
//  Adivinator
//
//  Created by Research Mobile on 17/04/18.
//  Copyright © 2018 Research Mobile. All rights reserved.
//

import UIKit
import SwiftyButton
import AVFoundation

class AdivinaViewController: UIViewController {
    @IBOutlet weak var cora1: UIImageView!
    @IBOutlet weak var cora2: UIImageView!
    @IBOutlet weak var cora3: UIImageView!
    @IBOutlet weak var dialogo: UIImageView!
    @IBOutlet weak var dialogo_texto: UITextView!
    @IBOutlet weak var genio: UIImageView!
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var salir: PressableButton!
    var n = NSInteger()
    var ns = NSInteger()
    var audioPlayer = AVAudioPlayer()
    var yagano = NSInteger()
    var vidas = NSInteger()
    
    @IBOutlet weak var ecri: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "brah", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            
            let audioSession = AVAudioSession.sharedInstance()
            do{
                try audioSession.setCategory(AVAudioSessionCategoryPlayback)
            }
        }
        catch{
            print(error)
        }
        n = Int(arc4random_uniform(10))
        let toolBar = UIToolbar()
        vidas = 3
        salir.isHidden = true
        yagano = 0
        toolBar.sizeToFit()

        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        
        salir.layer.cornerRadius = 10
        salir.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        salir.layer.shadowColor = UIColor.black.cgColor
        salir.layer.shadowRadius = 3.0
        salir.layer.shadowOpacity = 1.0
        salir.layer.shadowOffset = CGSize(width: 4, height: 4)
        salir.layer.masksToBounds = false
        salir.alpha = 0.85;
        let button : PressableButton = salir
        button.colors = .init(button: UIColor(red:0.62, green:0.37, blue:0.78, alpha:1.0), shadow: UIColor(red:0.48, green:0.23, blue:0.63, alpha:1.0))
        button.shadowHeight = 5
        button.cornerRadius = 5
        
        number.inputAccessoryView = toolBar
        cora1.layer.cornerRadius = 10
        cora1.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        cora1.layer.shadowColor = UIColor.black.cgColor
        cora1.layer.shadowRadius = 3.0
        cora1.layer.shadowOpacity = 1.0
        cora1.layer.shadowOffset = CGSize(width: 4, height: 4)
        cora1.layer.masksToBounds = false
        
        cora2.layer.cornerRadius = 10
        cora2.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        cora2.layer.shadowColor = UIColor.black.cgColor
        cora2.layer.shadowRadius = 3.0
        cora2.layer.shadowOpacity = 1.0
        cora2.layer.shadowOffset = CGSize(width: 4, height: 4)
        cora2.layer.masksToBounds = false
        
        ecri.layer.cornerRadius = 10
        ecri.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        ecri.layer.shadowColor = UIColor.black.cgColor
        ecri.layer.shadowRadius = 3.0
        ecri.layer.shadowOpacity = 1.0
        ecri.layer.shadowOffset = CGSize(width: 4, height: 4)
        ecri.layer.masksToBounds = false
        
        number.layer.cornerRadius = 10
        number.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        number.layer.shadowColor = UIColor.black.cgColor
        number.layer.shadowRadius = 3.0
        number.layer.shadowOpacity = 1.0
        number.layer.shadowOffset = CGSize(width: 4, height: 4)
        number.layer.masksToBounds = false
        
        cora3.layer.cornerRadius = 10
        cora3.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        cora3.layer.shadowColor = UIColor.black.cgColor
        cora3.layer.shadowRadius = 3.0
        cora3.layer.shadowOpacity = 1.0
        cora3.layer.shadowOffset = CGSize(width: 4, height: 4)
        cora3.layer.masksToBounds = false
        
        genio.layer.cornerRadius = 10
        genio.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        genio.layer.shadowColor = UIColor.black.cgColor
        genio.layer.shadowRadius = 3.0
        genio.layer.shadowOpacity = 1.0
        genio.layer.shadowOffset = CGSize(width: 4, height: 4)
        genio.layer.masksToBounds = false
        
        dialogo.layer.cornerRadius = 10
        dialogo.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        dialogo.layer.shadowColor = UIColor.black.cgColor
        dialogo.layer.shadowRadius = 3.0
        dialogo.layer.shadowOpacity = 1.0
        dialogo.layer.shadowOffset = CGSize(width: 4, height: 4)
        dialogo.layer.masksToBounds = false
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func reiniciar(_ sender: Any) {
        vidas = 3
        n = Int(arc4random_uniform(15))
        dialogo_texto.text = "Adivina el número del 0 al 15 tienes tres vidas"
        cora1.image = UIImage(named: "cora1")
        cora2.image = UIImage(named: "cora1")
        cora3.image = UIImage(named: "cora1")
        dialogo.image = UIImage(named: "globo1")
        yagano = 0
        salir.isHidden = true
    }
    @objc func doneClicked(){
        view.endEditing(true)
        if vidas > 0 && yagano == 0{
            if number.text == "" {
                dialogo_texto.text = "Debes ingresar un número en el campo :v"
                dialogo.image = UIImage(named: "globo2")
                audioPlayer.play()
            }else{
                ns = Int(number.text!)!
                if ns < n {
                    dialogo_texto.text = "El número que ingresaste es menor"
                    vidas = vidas-1
                    dialogo.image = UIImage(named: "globo2")
                    audioPlayer.play()
                }else if ns > n {
                    dialogo_texto.text = "El número que ingresaste es mayor"
                    vidas = vidas-1
                    dialogo.image = UIImage(named: "globo2")
                    audioPlayer.play()
                }else if ns == n {
                    dialogo_texto.text = "¡Excelente papu! acertaste antes de perder tus vidas"
                    salir.isHidden = false
                    dialogo.image = UIImage(named: "globo1")
                    yagano = 1
                }
            }
        }else{
            dialogo_texto.text = "Tienes que reiniciar el juego si quieres jugar"
            audioPlayer.play()
            dialogo.image = UIImage(named: "globo2")
        }
        
        if vidas == 3 {
            cora1.image = UIImage(named: "cora1")
            cora2.image = UIImage(named: "cora1")
            cora3.image = UIImage(named: "cora1")
        }else if vidas == 2 {
            cora1.image = UIImage(named: "cora1")
            cora2.image = UIImage(named: "cora1")
            cora3.image = UIImage(named: "cora2")
        }
        else if vidas == 1 {
            cora1.image = UIImage(named: "cora1")
            cora2.image = UIImage(named: "cora2")
            cora3.image = UIImage(named: "cora2")
        }
        else if vidas == 0 {
            cora1.image = UIImage(named: "cora2")
            cora2.image = UIImage(named: "cora2")
            cora3.image = UIImage(named: "cora2")
            dialogo_texto.text = "Que lastima perdiste papu :'v Reinicia el juego"
            audioPlayer.play()
            dialogo.image = UIImage(named: "globo2")
            salir.isHidden = false
        }
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
