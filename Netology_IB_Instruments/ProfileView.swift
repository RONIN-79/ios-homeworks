//
//  CustomView.swift
//  Netology_IB_Instruments
//
//  Created by MacBook on 05.02.2022.
//

import UIKit


class CustomView: UIView {
    override init (frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    required init? (coder: NSCoder) {
        super.init(coder:coder)
        self.setupView()
    }
    private func setupView() {
        let view = self.loadViewFromXib()
        view.frame = self.bounds
        view.autoresizingMask =  [.flexibleWidth, .flexibleHeight]
        self.addSubview(view)
    }
    private func loadViewFromXib() -> UIView {
        guard let view = Bundle.main.loadNibNamed("CustomView", owner: nil, options: nil)?.first as? UIView
        else { return UIView() }
        return view
    }
}
