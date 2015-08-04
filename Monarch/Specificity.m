//
//  Specificity.m
//  Monarch
//
//  Created by Amaury Portier on 03/08/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import "Specificity.h"

@implementation Specificity

-(id) init{
    self = [self initWithData:nil andImage:nil];
    return self;
}

-(id) initWithData:(NSDictionary *)data andImage:(UIImage *)image{
    self = [super init];
    
    self.specificityTitle = data[SPECIFICITY_TITLE];
    self.specificityDescription = data[SPECIFICITY_DESCRIPTION];
    self.specificityRecommmendation = data[SPECIFICITY_RECOMMENDATION];
    
    self.specificityImage = image;
    
    return self;
    
}

@end
