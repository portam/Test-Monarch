//
//  Specificity.h
//  Monarch
//
//  Created by Amaury Portier on 03/08/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

#define SPECIFICITY_TITLE @"Title of the specificity"
#define SPECIFICITY_DESCRIPTION @"Description of the specificity"
#define SPECIFICITY_RECOMMENDATION @"Recommendation for the specificity"


@interface Specificity : NSObject

@property (strong,nonatomic) NSString *specificityTitle;
@property (strong,nonatomic) NSString *specificityDescription;
@property (strong,nonatomic) NSString *specificityRecommmendation;

@property (strong, nonatomic) UIImage *specificityImage;

-(id) initWithData:(NSDictionary *)data andImage:(UIImage *) image;

@end
