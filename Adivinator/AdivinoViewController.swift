//
//  AdivinoViewController.swift
//  Adivinator
//
//  Created by Research Mobile on 17/04/18.
//  Copyright © 2018 Research Mobile. All rights reserved.
//

import UIKit
import SwiftyButton

class AdivinoViewController: UIViewController {

    @IBOutlet weak var texto: UITextView!
    @IBOutlet weak var view_content: UIView!
    @IBOutlet weak var carta: UIImageView!
    @IBOutlet weak var btn_no: PressableButton!
    @IBOutlet weak var btn_si: PressableButton!
    @IBOutlet weak var btn_reset: PressableButton!
    var paso = NSInteger()
    var bit0 = NSInteger()
    var bit1 = NSInteger()
    var bit2 = NSInteger()
    var bit3 = NSInteger()
    var bit4 = NSInteger()
    var bit5 = NSInteger()
    var respuesta = NSInteger()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn_reset.isHidden = true
        paso = 1
        
        carta.layer.cornerRadius = 10
        carta.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        carta.layer.shadowColor = UIColor.black.cgColor
        carta.layer.shadowRadius = 3.0
        carta.layer.shadowOpacity = 1.0
        carta.layer.shadowOffset = CGSize(width: 4, height: 4)
        carta.layer.masksToBounds = false
        carta.alpha = 0.85;
        
        view_content.layer.cornerRadius = 10
        view_content.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        view_content.layer.shadowColor = UIColor.black.cgColor
        view_content.layer.shadowRadius = 3.0
        view_content.layer.shadowOpacity = 1.0
        view_content.layer.shadowOffset = CGSize(width: 4, height: 4)
        view_content.layer.masksToBounds = false
        view_content.alpha = 0.85;
        
        btn_si.layer.cornerRadius = 10
        btn_si.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        btn_si.layer.shadowColor = UIColor.black.cgColor
        btn_si.layer.shadowRadius = 3.0
        btn_si.layer.shadowOpacity = 1.0
        btn_si.layer.shadowOffset = CGSize(width: 4, height: 4)
        btn_si.layer.masksToBounds = false
        btn_si.alpha = 0.85;
        let button : PressableButton = btn_si
        button.colors = .init(button: UIColor(red:0.62, green:0.37, blue:0.78, alpha:1.0), shadow: UIColor(red:0.48, green:0.23, blue:0.63, alpha:1.0))
        button.shadowHeight = 5
        button.cornerRadius = 5
        
        btn_no.layer.cornerRadius = 10
        btn_no.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        btn_no.layer.shadowColor = UIColor.black.cgColor
        btn_no.layer.shadowRadius = 3.0
        btn_no.layer.shadowOpacity = 1.0
        btn_no.layer.shadowOffset = CGSize(width: 4, height: 4)
        btn_no.layer.masksToBounds = false
        btn_no.alpha = 0.85;
        let button1 : PressableButton = btn_no
        button1.colors = .init(button: UIColor(red:0.62, green:0.37, blue:0.78, alpha:1.0), shadow: UIColor(red:0.48, green:0.23, blue:0.63, alpha:1.0))
        button1.shadowHeight = 5
        button1.cornerRadius = 5
        
        btn_reset.layer.cornerRadius = 10
        btn_reset.tintColor = UIColor(red:0.18, green:0.47, blue:0.59, alpha:1.0)
        btn_reset.layer.shadowColor = UIColor.black.cgColor
        btn_reset.layer.shadowRadius = 3.0
        btn_reset.layer.shadowOpacity = 1.0
        btn_reset.layer.shadowOffset = CGSize(width: 4, height: 4)
        btn_reset.layer.masksToBounds = false
        btn_reset.alpha = 0.85;
        let button3 : PressableButton = btn_reset
        button3.colors = .init(button: UIColor(red:0.62, green:0.37, blue:0.78, alpha:1.0), shadow: UIColor(red:0.48, green:0.23, blue:0.63, alpha:1.0))
        button3.shadowHeight = 5
        button3.cornerRadius = 5
        // Do any additional setup after loading the view.
    }

    @IBAction func reset(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func noo(_ sender: Any) {
        if paso == 1 {
            texto.text = "QUE SAD ENTONCES VETE, ARRIBA HAY UN BOTON DE BACK ADIOS >:v"
        }else if paso == 2 {
            carta.image = UIImage(named: "carta2")
            bit0 = 0
            paso = paso + 1
        }else if paso == 3 {
            carta.image = UIImage(named: "carta3")
            bit1 = 0
            paso = paso + 1
        }else if paso == 4 {
            carta.image = UIImage(named: "carta4")
            bit2 = 0
            paso = paso + 1
        }else if paso == 5 {
            carta.image = UIImage(named: "carta5")
            bit3 = 0
            paso = paso + 1
        }else if paso == 6 {
            carta.image = UIImage(named: "carta6")
            bit4 = 0
            paso = paso + 1
        }else if paso == 7{
            bit5 = 0
            carta.isHidden = true
            respuesta = bit0+bit1+bit2+bit3+bit4+bit5
            texto.text = "Tu estas pensando en el número \(respuesta), ¿estoy en lo correcto?"
            paso = paso + 1
        }else if paso == 8 {
            texto.text = "Nunca me equivoco seguramente hiciste algo mal jajaja"
            btn_no.isHidden = true
            btn_si.isHidden = true
            btn_reset.isHidden = false
        }
    }
    @IBAction func sii(_ sender: Any) {
        if paso == 1 {
            texto.text = ""
            carta.image = UIImage(named: "carta1")
            paso = paso + 1
        }else if paso == 2 {
            carta.image = UIImage(named: "carta2")
            bit0 = 1
            paso = paso + 1
        }else if paso == 3 {
            carta.image = UIImage(named: "carta3")
            bit1 = 2
            paso = paso + 1
        }else if paso == 4 {
            carta.image = UIImage(named: "carta4")
            bit2 = 4
            paso = paso + 1
        }else if paso == 5 {
            carta.image = UIImage(named: "carta5")
            bit3 = 8
            paso = paso + 1
        }else if paso == 6 {
            carta.image = UIImage(named: "carta6")
            bit4 = 16
            paso = paso + 1
        }else if paso == 7{
            bit5 = 32
            carta.isHidden = true
            respuesta = bit0+bit1+bit2+bit3+bit4+bit5
            texto.text = "Tú estás pensando en el número \(respuesta), ¿estoy en lo correcto?"
            paso = paso + 1
        }else if paso == 8 {
            texto.text = "Soy el mejor en esto jajaja"
            btn_no.isHidden = true
            btn_si.isHidden = true
            btn_reset.isHidden = false
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
