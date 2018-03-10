//
//  ViewController.m
//  MyDemoObjectiveC
//
//  Created by bigfoot on 16/11/17.
//  Copyright © 2017 bigfoot. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize textFieldArea;

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)buttonActionImposta:(id)sender {
    textFieldArea.stringValue = @"Stringa";
    NSLog(@"Ho premuto imposta");
}

- (IBAction)buttonActionCancella:(id)sender {
    textFieldArea.stringValue = @"";
    NSLog(@"Ho premuto cancella");
}

@end
