//
//  ViewController.m
//  wordBubble
//
//  Created by Mohammad Haque on 8/3/15.
//  Copyright (c) 2015 Mohammad Haque. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)PlayAudioButton:(id)sender {
    
    AudioServicesPlaySystemSound(PlaySoundID);
    
}


- (void)viewDidLoad {
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"bubblepop" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &PlaySoundID);
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
