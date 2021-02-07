//
//  CurrencyTxtField.swift
//  fenster_buying
//
//  Created by abc on 2021-01-31.
//

import UIKit
@IBDesignable
class CurrencyTxtField: UITextField {
    //Begin of the 6th part
    //Never use func draw alone, it's a hell
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8588636518, green: 0.8537586331, blue: 0.8627881408, alpha: 1)
        //center the text of label
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2100378275, green: 0.2100797594, blue: 0.2100323141, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    //End of the 6th part
    //was already
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        //adding from 6th part
        clipsToBounds = true
        //end of adding frmo 6th part
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}













