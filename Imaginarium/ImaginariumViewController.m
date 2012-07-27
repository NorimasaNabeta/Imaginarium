//
//  ImaginariumViewController.m
//  Imaginarium
//
//  Created by 式正 鍋田 on 12/07/19.
//  Copyright (c) 2012年 Norimasa Nabeta. All rights reserved.
//

#import "ImaginariumViewController.h"

// Lecture 8 Demo Imaginarium(45:20-)
// *Implement scrolling function(53:45-)
//   (1) Edit>Embed>ScrollView for ImageView
//   (2) IBOutlet imageView, scrollView
//   (3) set contentSize
// *Implement zooming function(58:52-)
//   (1) <UIScrollViewDelegate>
//   (2) viewForZommingInScrollView
//   (3) delegate connect between View Controller and ScrollView
//   (4) set ScrollView property 'Zoom' factors min:0.2 max:5
//
@interface ImaginariumViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ImaginariumViewController
@synthesize scrollView;
@synthesize imageView;

-(void) viewDidLoad
{
    [super viewDidLoad];
    self.scrollView.delegate=self;
    self.scrollView.contentSize=self.imageView.image.size;
    self.imageView.frame=CGRectMake(0, 0, self.imageView.image.size.width, self.imageView.image.size.height);
    
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)viewDidUnload {
    [self setImageView:nil];
    [self setScrollView:nil];
    [super viewDidUnload];
}

#pragma mark - UIScrollViewDelegate
- (UIView*) viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

@end
