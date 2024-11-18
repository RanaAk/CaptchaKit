//
//  CaptchaView.swift
//  Captcha
//
//  Created by RANA  on 18/11/24.
//

import SwiftUI

public struct CaptchaView: View {
    @State private var captchaCode: String = ""
    @State private var userInput: String = ""
    @State private var captchaImage: UIImage = UIImage()
    

    public var onValidation: (Bool) -> Void
    @State private var validationMessage: String = ""

    // validation closure
    public init(onValidation: @escaping (Bool) -> Void) {
        self.onValidation = onValidation
    }

    public var body: some View {
        VStack(spacing: 20) {
            Image(uiImage: captchaImage)
                .resizable()
                .frame(width: 200, height: 50)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)
            
            TextField("Enter Captcha", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            Button("Validate") {
                let isValid = validateCaptcha(userInput: userInput, captcha: captchaCode)
                if isValid {
                    validationMessage = "Captcha validated successfully!"
                } else {
                    validationMessage = "Invalid captcha. Please try again."
                }
           
                onValidation(isValid)
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Text(validationMessage)
                .foregroundColor(validationMessage.contains("successfully") ? .green : .red)
            
            Button("Refresh Captcha") {
                refreshCaptcha()
            }
        }
        .onAppear(perform: refreshCaptcha)
        .padding()
    }

    private func refreshCaptcha() {
        captchaCode = CaptchaLogic.RandomString()
        captchaImage = CaptchaLogic.CreateImage(from: captchaCode)
    }

    private func validateCaptcha(userInput: String, captcha: String) -> Bool {
        return userInput.lowercased() == captcha.lowercased()
    }
}
