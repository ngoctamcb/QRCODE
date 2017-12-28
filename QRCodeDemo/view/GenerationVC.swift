//
//  ViewController.swift
//  QRCodeDemo
//
//  Created by TranNgocTam on 11/21/17.
//  Copyright © 2017 TranNgocTam. All rights reserved.
//

import UIKit
import QRCode


class GenerationVC: BaseVC {

    @IBOutlet weak var imvQRCode: UIImageView!
    @IBOutlet weak var lbDataQRCode: UILabel!
    @IBOutlet weak var btnRandomQRCode: UIButton!
    
    private var dataMakeQRCode: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func customView() {
        btnRandomQRCode.createBorder(withColor: UIColor.blue)
    }
    
    @IBAction func btnRandomBarcodeClicked(_ sender: Any) {
        dataMakeQRCode = dataMakeQRCode.randomString(withLenght: 10)
        let qrCode = QRCode(dataMakeQRCode)
        imvQRCode.image = qrCode?.image
        lbDataQRCode.text = dataMakeQRCode
        
    }
}

