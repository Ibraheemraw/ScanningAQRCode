//
//  AVPreviewLayer.swift
//  HowToScanAQRCodeDemo
//
//  Created by Ibraheem rawlinson on 4/17/19.
//  Copyright © 2019 Ibraheem rawlinson. All rights reserved.
//

import UIKit

class AVPreviewLayer: UIView {

    lazy var previewLayer: AVCapturePreviewView = {
        let view = AVCapturePreviewView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var qrCodeFrameView: UIView = {
        let view = UIView()
        view.layer.borderColor = UIColor.green.cgColor
        view.layer.borderWidth = 2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        commonInit()
    }
    
    private func commonInit() {
        setupViews()
    }
    
    private func setupViews() {
        setupImageView()
        setupQRFrame()
    }
    private func setupImageView(){
        addSubview(previewLayer)
        NSLayoutConstraint.activate([
            previewLayer.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            previewLayer.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            previewLayer.leadingAnchor.constraint(equalTo: leadingAnchor),
            previewLayer.trailingAnchor.constraint(equalTo: trailingAnchor)
            ]) // active by defualt
    }
    
    private func setupQRFrame(){
        previewLayer.addSubview(qrCodeFrameView)
        NSLayoutConstraint.activate([
            qrCodeFrameView.centerXAnchor.constraint(equalTo: previewLayer.centerXAnchor),
            qrCodeFrameView.centerYAnchor.constraint(equalTo: previewLayer.centerYAnchor),
            qrCodeFrameView.widthAnchor.constraint(equalToConstant: 0),
            qrCodeFrameView.heightAnchor.constraint(equalToConstant: 0)
            ])
    }
//    private func setupQRFrame(){
//        previewLayer.addSubview(qrCodeFrameView)
//        NSLayoutConstraint.activate([
//            qrCodeFrameView.centerXAnchor.constraint(equalTo: previewLayer.centerXAnchor),
//            qrCodeFrameView.centerYAnchor.constraint(equalTo: previewLayer.centerYAnchor),
//            qrCodeFrameView.widthAnchor.constraint(equalTo: previewLayer.widthAnchor, multiplier: 0.9),
//            qrCodeFrameView.heightAnchor.constraint(equalTo: previewLayer.widthAnchor)
//            ])
//    }
}
