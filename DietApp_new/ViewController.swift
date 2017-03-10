//
//  ViewController.swift
//  DietApp_new
//
//  Created by jinikuadmin on 2017/03/06.
//  Copyright © 2017年 jinikuadmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var dateSelecter: UITextField!
 //   var filepath:URL=URL(string: "")!
    let filename="diet_record"
    let initialText = ""
    let inputDatePicker = UIDatePicker()
    
/*    @IBAction func ok_button(_ sender: UIButton) {
        do {
            let fileHandle = try FileHandle(forWritingTo: filepath)
            
            // 改行を入れる
            let stringToWrite = "\n" + "string"
            
            // ファイルの最後に追記
            fileHandle.seekToEndOfFile()
            fileHandle.write(stringToWrite.data(using: String.Encoding.utf8)!)
            
        } catch let error as NSError {
            print("failed to append: \(error)")
        }
    }*/
    
    //データ変更時の呼び出しメソッド
    @IBAction func changeDate(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年 MM月 dd日"
        
        //textviewに表示
        dateSelecter.text = formatter.string(from: sender.date)
        

        // DatePickerの設定(日付用)
        inputDatePicker.datePickerMode = UIDatePickerMode.date
        dateSelecter.inputView = inputDatePicker
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       /* if let documentDirectoryFileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last {
            filepath = documentDirectoryFileURL.appendingPathComponent(filename)
            //let f = String(contentsOf: filepath)
            //print(f)
            do {
                try initialText.write(to: filepath, atomically: true, encoding: String.Encoding.utf8)
            } catch let error as NSError {
                print("failed to write: \(error)")
            }
        }*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
