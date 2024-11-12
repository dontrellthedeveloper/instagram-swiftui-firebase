//
//  NotificationsViewModel.swift
//  InstagramTutorial
//
//  Created by Dontrell Washington on 11/12/24.
//

import Foundation


class NotificationsViewModel: ObservableObject {
    @Published var notifications = [Notification]()
    
    init() {
        fetchNotifications()
    }
    
    func fetchNotifications() {
        self.notifications = Notification.MOCK_NOTIFICATION
    }
}
