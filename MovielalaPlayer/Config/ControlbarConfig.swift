//
//  ControlbarConfig.swift
//  MovielalaPlayer
//
//  Created by Toygar Dündaralp on 26/05/15.
//  Copyright (c) 2015 MovieLaLa. All rights reserved.
//

import Foundation

public struct ControlbarConfig {
  var playButtonImage = MovielalaPlayerConfig.loadImage(named: "MLPlayButton.png")
  var playButtonTintColor = UIColor.whiteColor()
  var playButtonBackgroundColor = UIColor.clearColor()
  var pauseButtonImage = MovielalaPlayerConfig.loadImage(named: "MLPauseButton.png")
  var pauseButtonTintColor = UIColor.whiteColor()
  var timeTextFont = UIFont.systemFontOfSize(14)
  var timeTextColor = UIColor.whiteColor()
  var timeBackgroundColor = UIColor.clearColor()
  var timeSliderRailTintColor = UIColor.lightGrayColor()
  var timeSliderBufferTintColor = UIColor.grayColor()
  var timeSliderProgressTintColor = UIColor.blueColor()
  var timeSliderThumbTintColor = UIColor.whiteColor()
  var timeSliderBackgroundColor = UIColor.clearColor()
  var backgroundColor = UIColor.clearColor()
  
  public init() {}
  
  public init(dictionary: [String: AnyObject]) {
    // Coltrolbar background
    if let backgroundColor = dictionary["backgroundColor"] as? String {
      self.backgroundColor = UIColor(hexString: backgroundColor)
    }
    // Play Button
    if let playButtonConfig = dictionary["playButton"] as? [String:AnyObject] {
      if let playButtonImage = playButtonConfig["image"] as? String {
        self.playButtonImage = MovielalaPlayerConfig.loadImage(named: playButtonImage)
      }
      if let playButtonTintColor = playButtonConfig["tintColor"] as? String {
        self.playButtonTintColor = UIColor(hexString: playButtonTintColor)
      }
      if let playButtonBackgroundColor = playButtonConfig["backgroundColor"] as? String {
        self.playButtonBackgroundColor = UIColor(hexString: playButtonBackgroundColor)
      }
    }
    // Pause Button
    if let pauseButtonConfig = dictionary["pauseButton"] as? [String:AnyObject] {
      if let pauseButtonImage = pauseButtonConfig["image"] as? String {
        self.pauseButtonImage = MovielalaPlayerConfig.loadImage(named: pauseButtonImage)
      }
      if let pauseButtonTintColor = pauseButtonConfig["tintColor"] as? String {
        self.pauseButtonTintColor = UIColor(hexString: pauseButtonTintColor)
      }
    }
    // Time
    if let timeConfig = dictionary["time"] as? [String:AnyObject] {
      if let timeTextFont = timeConfig["textFont"] as? String {
        if let timeTextSize = timeConfig["textFontSize"] as? CGFloat {
          self.timeTextFont = UIFont(name: timeTextFont, size: timeTextSize)!
        }
      }
      if let timeTextColor = timeConfig["textColor"] as? String {
        self.timeTextColor = UIColor(hexString: timeTextColor)
      }
      if let timeBackgroundColor = timeConfig["backgroundColor"] as? String {
        self.timeBackgroundColor = UIColor(hexString: timeBackgroundColor)
      }
    }
    // Time Slider
    if let timeSliderConfig = dictionary["timeSlider"] as? [String:AnyObject] {
      if let timeSliderRailTintColor = timeSliderConfig["railTintColor"] as? String {
        self.timeSliderRailTintColor = UIColor(hexString: timeSliderRailTintColor)
      }
      if let timeSliderBufferTintColor = timeSliderConfig["bufferTintColor"] as? String {
        self.timeSliderBufferTintColor = UIColor(hexString: timeSliderBufferTintColor)
      }
      if let timeSliderProgressTintColor = timeSliderConfig["progressTintColor"] as? String {
        self.timeSliderProgressTintColor = UIColor(hexString: timeSliderProgressTintColor)
      }
      if let timeSliderThumbTintColor = timeSliderConfig["thumbTintColor"] as? String {
        self.timeSliderThumbTintColor = UIColor(hexString: timeSliderThumbTintColor)
      }
      if let timeSliderBackgroundColor = timeSliderConfig["backgroundColor"] as? String {
        self.timeSliderBackgroundColor = UIColor(hexString: timeSliderBackgroundColor)
      }
    }
  }
}