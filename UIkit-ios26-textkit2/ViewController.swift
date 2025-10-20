//
//  ViewController.swift
//  UIkit-ios26-textkit2
//
//  Created by Yaohui  Wang  on 2025/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextView()
    }
    
    private func setupTextView() {
        // 1. 创建 UITextView
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textView)
        
        // 2. 设置阿拉伯语文本（较长，确保会换行）
        let arabicText = "هذا نص عربي طويل يوضح طريقة التنضيد الافتراضي للغة العربية باستخدام TextKit 2. النص سيتم تغليفه تلقائيًا عندما يصل إلى حواف العرض، وسيظل محاذاة إلى اليمين بشكل طبيعي، مما يتناسب مع طريقة قراءة اللغة العربية من اليمين إلى اليسار."
        textView.text = arabicText
        
        // 3. 配置文本属性（核心：依赖 TextKit 2 自动处理 RTL 排版）
        textView.font = UIFont.systemFont(ofSize: 18)
        textView.textAlignment = .natural // 自然对齐（TextKit 2 会根据语言方向自动设为右对齐）
        textView.backgroundColor = .systemBackground // 适配浅色/深色模式
        textView.isEditable = false // 仅展示，不可编辑
        textView.isScrollEnabled = false // 禁用滚动，让高度自适应内容
        textView.textContainerInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15) // 内边距
        
        // 4. 自动换行配置（默认开启，明确设置确保效果）
        textView.textContainer.lineBreakMode = .byWordWrapping // 按单词换行
        
        // 5. 约束：让 textView 居中，宽度限制在屏幕内（触发换行）
        NSLayoutConstraint.activate([
            textView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textView.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 20), // 左间距
            textView.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20), // 右间距
            textView.widthAnchor.constraint(lessThanOrEqualToConstant: 300) // 限制最大宽度，确保换行
        ])
        
        // 6. 加边框，方便观察文本范围
        textView.layer.borderColor = UIColor.gray.cgColor
        textView.layer.borderWidth = 1
    }
}
