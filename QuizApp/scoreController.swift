//
//  scoreController.swift
//  QuizApp
//
//  Created by Mobil Trakya on 3/2/18.
//  Copyright © 2018 Trakya University. All rights reserved.
//

import UIKit

class scoreController: UIViewController {
    var totalquestion : String = ""
    var trueQuestion : String = ""
    var falseQuestion : String = ""
    
    @IBOutlet weak var soruSayisi: UILabel!
    @IBOutlet weak var dogruSayisi: UILabel!
    @IBOutlet weak var yanlisSayisi: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        soruSayisi.text = "Toplam soru sayısı :" + totalquestion
        dogruSayisi.text = "Doğru soru sayısı :" + trueQuestion
        yanlisSayisi.text = "Yanlış soru sayısı : " + falseQuestion
        
        
        // Do any additional setup after loading the view.
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
