//
//  ImaginariumViewController.m
//  Imaginarium
//
//  Created by 式正 鍋田 on 12/07/19.
//  Copyright (c) 2012年 Norimasa Nabeta. All rights reserved.
//

#import "ImaginariumViewController.h"

// Lecture 8 53:45- Implement scrolling function
//           58:52- Implement zooming function
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

#pragma mark - UIScrollViewDelegate
- (UIView*) viewForZoomingInScrollView:(UIScrollView *)scrollView  
{
    return self.imageView;
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
@end
