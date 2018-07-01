//
//  ViewController.swift
//  Transition Animation
//
//  Created by apple on 30/04/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit
import Hero

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var names = ["Las Vegas","India","Times Square","Dubai","Sydney"]
    var wondersDesc = [
                       
    "Las Vegas, in Nevada’s Mojave Desert, is a resort city famed for its vibrant nightlife, centered around 24-hour casinos and other entertainment options. Its main street and focal point is the Strip, just over 4 miles long. This boulevard is home to themed hotels with elaborate displays such as fountains synchronized to music as well as replicas of an Egyptian pyramid, the Venetian Grand Canal, and the Eiffel Tower.",
    
    
     "India is a vast South Asian country with diverse terrain – from Himalayan peaks to Indian Ocean coastline – and history reaching back 5 millennia. In the north, Mughal Empire landmarks include Delhi’s Red Fort complex and massive Jama Masjid mosque, plus Agra’s iconic Taj Mahal mausoleum. Pilgrims bathe in the Ganges in Varanasi, and Rishikesh is a yoga centre and base for Himalayan trekking.",
    
    "The Theater District is the teeming heart of Midtown West. In the pedestrian plazas of Times Square, costumed characters beckon to energetic crowds under the pulsing lights of towering digital billboards. Locals and tourists gather on the giant red staircase above the TKTS booth, which sells tickets to Broadway shows running at the area’s historic theaters. On busy 42nd Street, chain stores and restaurants abound.",
    
   
    
    
    "Dubai is a city and emirate in the United Arab Emirates known for luxury shopping, ultramodern architecture and a lively nightlife scene. Burj Khalifa, an 830m-tall tower, dominates the skyscraper-filled skyline. At its foot lies Dubai Fountain, with jets and lights choreographed to music. On artificial islands just offshore is Atlantis, The Palm, a resort with water and marine-animal parks.",
    
    "Sydney, capital of New South Wales and one of Australia's largest cities, is best known for its harbourfront Sydney Opera House, with a distinctive sail-like design. Massive Darling Harbour and the smaller Circular Quay port are hubs of waterside life, with the arched Harbour Bridge and esteemed Royal Botanic Garden nearby. Sydney Tower’s outdoor platform, the Skywalk, offers 360-degree views of the city and suburbs."
        
        
                       ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WonderCell") as! WonderCell
        
      
            cell.wonderImage.image = UIImage(named:names[indexPath.row])
            cell.name.text  = names[indexPath.row]
            cell.wonderDesc.text =  wondersDesc[indexPath.row]
        
            cell.wonderImage.hero.id = "img \(indexPath.row)"
            cell.name.hero.id = "name \(indexPath.row)"
            cell.wonderDesc.hero.id = "des \(indexPath.row)"
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        
        DispatchQueue.main.async {
        
        
        let wonderScreen = self.storyboard?.instantiateViewController(withIdentifier: "WonderViewController") as! WonderViewController
        
            wonderScreen.wonderDescString =  self.wondersDesc[indexPath.row]
            wonderScreen.wonderName = self.names[indexPath.row]
            wonderScreen.wonderHeroId =  "\(indexPath.row)"
            self.present(wonderScreen, animated: true, completion: nil)
        
        }
    }


}

