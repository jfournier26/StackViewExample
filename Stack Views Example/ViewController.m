//
//  ViewController.m
//  Stack Views Example
//
//  Created by Jacques Fournier on 1/23/18.
//  Copyright © 2018 JacquesFournier. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_imperialOutlet.titleLabel setTextAlignment: NSTextAlignmentCenter];
    [_jurassicOutlet.titleLabel setTextAlignment: NSTextAlignmentCenter];
    [_borkMeUpOutlet.titleLabel setTextAlignment: NSTextAlignmentCenter];
    
    _java.adjustsFontSizeToFitWidth = YES;
    _windows10.adjustsFontSizeToFitWidth = YES;
    _shortStack.adjustsFontSizeToFitWidth = YES;
    _atomic.adjustsFontSizeToFitWidth = YES;
    
    NSURL *imperialSoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Imperial Borks [Star Wars]" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)imperialSoundURL, &imperialSoundID);
    
    NSURL *jurassicSoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Jurassic Bork" ofType:@"mp4"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)jurassicSoundURL, &jurassicSoundID);
    
    NSURL *borkMeUpSoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Bork Me Up (Before You Dog-Go)" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)borkMeUpSoundURL, &borkMeUpSoundID);
    
    _imperialOutlet.layer.cornerRadius = 20;
    _imperialOutlet.layer.borderWidth = 2.0f;
    
    _jurassicOutlet.layer.cornerRadius = 20;
    _jurassicOutlet.layer.borderWidth = 2.0f;
    
    _borkMeUpOutlet.layer.cornerRadius = 20;
    _borkMeUpOutlet.layer.borderWidth = 2.0f;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)imperial:(id)sender {
    AudioServicesPlaySystemSound(imperialSoundID);
}

- (IBAction)jurassic:(id)sender {
    AudioServicesPlaySystemSound(jurassicSoundID);
}

- (IBAction)borkMeUp:(id)sender {
    AudioServicesPlaySystemSound(borkMeUpSoundID);
}
@end
