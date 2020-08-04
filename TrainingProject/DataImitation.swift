//
//  DataImitation.swift
//  TrainingProject
//
//  Created by Антон on 28.07.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import Foundation

class DataImitation {
    
    static let shared = DataImitation()
    
    var arrayForFirstCell = ["Купон дня", "Работаем!", "СПАСИБО", "КингАвто", "Режим работы", "5 способов", "200 руб.", "Без очереди!"]
    var arrayForSecondCell = ["ИХТИАНДР", "ДУША КОМПАНИИ", "КОЛЛЕКЦИОНЕР", "КОРОЛЬ НА ДИВАНЕ", "ВОИН ДОРОГИ", "РАБОТЯГА", "ЗА ПОКУПКУ 5-И КОФЕ", "ЗА ПОКУПКУ 5-И ВОППЕРОВ"]
    var arrayForPodcast: [PodcastsData] = [PodcastsData(name: "Азаза азазов", time: "Сегодня"), PodcastsData(name: "Нян каваи", time: "Сегодня"), PodcastsData(name: "Аниме", time: "Вчера"), PodcastsData(name: "Star Wars", time: "Суббота"), PodcastsData(name: "Ану белорэ дела'на", time: "Четверг"), PodcastsData(name: "Колбаса", time: "Четверг"), PodcastsData(name: "Куколды", time: "Среда"), PodcastsData(name: "Test", time: "Среда"), PodcastsData(name: "Test", time: "Среда"), PodcastsData(name: "Test", time: "Среда")]
}

struct PodcastsData {
    var name: String
    var time: String
}
