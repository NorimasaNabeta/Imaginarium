//
//  ImaginariumViewController.m
//  Imaginarium
//
//  Created by 式正 鍋田 on 12/07/19.
//  Copyright (c) 2012年 Norimasa Nabeta. All rights reserved.
//

#import "ImaginariumViewController.h"

@interface ImaginariumViewController ()

@end

@implementation ImaginariumViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
