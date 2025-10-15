//
//  watch_counter_score.swift
//  watch-counter-score
//
//  Created by Yaohui  Wang  on 2025/10/13.
//

import AppIntents

struct watch_counter_score: AppIntent {
    static var title: LocalizedStringResource { "watch-counter-score" }
    
    func perform() async throws -> some IntentResult {
        return .result()
    }
}
