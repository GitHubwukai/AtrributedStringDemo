//
//  ViewController.m
//  AtrributedStringDemo
//
//  Created by wukai on 13-8-21.
//  Copyright (c) 2013年 wukai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
	IBOutlet UILabel *label;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	NSMutableParagraphStyle* paragraph = [[NSMutableParagraphStyle alloc] init];
	paragraph.alignment = NSTextAlignmentJustified;
	
	paragraph.firstLineHeadIndent = 20.0;
	paragraph.paragraphSpacingBefore = 16.0;
	
	NSShadow* myShadow = [[NSShadow alloc] init];
	myShadow.shadowBlurRadius = 2.0;
	myShadow.shadowColor = [UIColor grayColor];
	myShadow.shadowOffset = CGSizeMake(1,1);
	NSDictionary *attributes = @{NSForegroundColorAttributeName: [UIColor colorWithRed:0.2 green:0.239 blue:0.451 alpha:1],
							  NSShadowAttributeName: myShadow,
							  NSParagraphStyleAttributeName: paragraph};
	

	
	
	NSString* txt = @"(UIFont*) Sets the font to render the text. If you want bold or italic text provide the correct name for each given font. These vary depending on the font family.\nFor example for the \"Helvetica Neue\" font you need to provide \"HelveticaNeue-Bold\" name for a bolded font, and \"HelveticaNeue-Italic\" for italic font.\nHowever, if you would like to use \"Courier New\", the font names are: \"CourierNewPS- ItalicMT\" for italic and \"CourierNewPS-BoldMT\" for bold.";
	
	
	NSAttributedString *aString = [[NSAttributedString alloc]
								   initWithString:txt attributes:attributes];
	label.attributedText = aString;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
