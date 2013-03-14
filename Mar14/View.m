//
//  View.m
//  Mar14
//
//  Created by Salvatore Lentini on 3/11/13.
//  Copyright (c) 2013 Salvatore Lentini. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor yellowColor];
		button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
		//Center the button in the view.
		CGSize s = CGSizeMake(200, 40);	//size of button
		CGRect b = self.bounds;
        
		button.frame = CGRectMake(
                                  b.origin.x + (b.size.width - s.width) / 2,
                                  b.origin.y + (b.size.height - s.height) / 2,
                                  s.width,
                                  s.height
                                  );
        
		[button setTitleColor: [UIColor redColor]
                     forState: UIControlStateNormal];
        
		[button setTitle: @"Whatever Happened to Baby Jane : Blanche's Lunch"
                forState: UIControlStateNormal];
        
		[button addTarget: [UIApplication sharedApplication].delegate
                   action: @selector(touchUpInside:)
         forControlEvents: UIControlEventTouchUpInside
         ];
		
		[self addSubview: button];
	}
	return self;
}
/*

 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void) drawRect: (CGRect) rect
 {
     //Center the button in the view.
     CGSize s = CGSizeMake(200, 40);	//size of button
     CGRect b = self.bounds;
     button.frame = CGRectMake(
                               b.origin.x + (b.size.width - s.width) / 2,
                               b.origin.y + (b.size.height - s.height) / 2,
                               s.width,
                               s.height
                               );
     
     NSArray *a = [NSArray arrayWithObjects:
                   @"Unknown",
                   @"Portrait",
                   @"PortraitUpsideDown",
                   @"LandscapeRight",	//home button on right
                   @"LandscapeLeft",	//home button on left
                   @"FaceUp",
                   @"FaceDown",
                   nil
                   ];
     
     NSUInteger i = [UIDevice currentDevice].orientation;
     NSString *string = [a objectAtIndex: i];
     UIFont *font = [UIFont systemFontOfSize: 32];
     [string drawAtPoint: CGPointZero withFont: font];
    
 }
*/

@end
