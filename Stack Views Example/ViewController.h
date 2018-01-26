//
//  ViewController.h
//  Stack Views Example
//
//  Created by Jacques Fournier on 1/23/18.
//  Copyright © 2018 JacquesFournier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    SystemSoundID imperialSoundID;
    SystemSoundID jurassicSoundID;
    SystemSoundID borkMeUpSoundID;
}

- (IBAction)imperial:(id)sender;
- (IBAction)jurassic:(id)sender;
- (IBAction)borkMeUp:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *imperialOutlet;
@property (weak, nonatomic) IBOutlet UIButton *jurassicOutlet;
@property (weak, nonatomic) IBOutlet UIButton *borkMeUpOutlet;

@property (weak, nonatomic) IBOutlet UILabel *java;
@property (weak, nonatomic) IBOutlet UILabel *windows10;
@property (weak, nonatomic) IBOutlet UILabel *shortStack;
@property (weak, nonatomic) IBOutlet UILabel *atomic;
@property (weak, nonatomic) IBOutlet UITextView *daveDescription;


@end

