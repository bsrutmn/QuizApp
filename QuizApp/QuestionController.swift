//
//  QuestionController.swift
//  QuizApp
//
//  Created by Mobil Trakya on 3/1/18.
//  Copyright © 2018 Trakya University. All rights reserved.
//

import UIKit

class QuestionController: UIViewController {

    @IBOutlet weak var questionTextView: UITextView!
    
    var sorular : Array = ["Apple'ın kurucusu Steve Jobs'tur","Microsoft'un kurucusu Bill Gates'dir","Soru 3","Soru 4" , "Soru 5"]
    var sorularCevaplar : Array = ["D","D","D","Y","Y"]
    var sayac :Int = 0
    var cevaplar : Array<Any> = []
    var dogru : Int = 0
    var yanlis :  Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionTextView.text=self.sorular[0]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func trueButton(_ sender: Any) {
        if (sorular.count-1 == sayac){
            cevaplar.append("D")
            print(cevaplar)
            for index in 0 ... sorular.count-1{
                if(sorularCevaplar[index] == String (describing : cevaplar[index]) ){
                    dogru = dogru + 1
                }
                
            }
            self.performSegue(withIdentifier: "sonuc", sender: self)
        }
        else{
        sayac = sayac + 1
        questionTextView.text = self.sorular[sayac]
        cevaplar.append("D")
        print(cevaplar)
        }
    }

    @IBAction func falseButton(_ sender: Any) {
                   if (sorular.count-1 == sayac){
                cevaplar.append("Y")
                print(cevaplar)
                for index in 0 ... sorular.count-1{
                    if(sorularCevaplar[index] == String (describing : cevaplar[index]) ){
                        dogru = dogru + 1
                    }
                    
                }
                self.performSegue(withIdentifier: "sonuc", sender: self)
            }
            else{
                sayac = sayac + 1
                questionTextView.text = self.sorular[sayac]
                cevaplar.append("Y")
                print(cevaplar)
            }
    }
    
   
    @IBAction func previouslyQuestion(_ sender: Any) {
        if (sayac > 0){
        sayac = sayac - 1
            questionTextView.text = self.sorular[sayac]
            

        }
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "sonuc"){
        let scoreControl = segue.destination as! scoreController
            scoreControl.totalquestion = String(sorular.count)
            scoreControl.trueQuestion = String(dogru)
            scoreControl.falseQuestion = String (yanlis)
            
        }
        
    }
    
    
}
        
