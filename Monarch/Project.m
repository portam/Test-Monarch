//
//  Project.m
//  Monarch
//
//  Created by Amaury Portier on 31/07/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import "Project.h"


@implementation Project

-(id) init{
    self = [self initWithData:nil];
    return self;
}

-(id) initWithData:(NSDictionary *)data{
    self = [super init];
    
    self.projectName = data[INFO_PROJECT_NAME];
    self.projectCategory1 = data[INFO_CATEGORY1];
    self.projectSubCategory11 = data[INFO_SUB_CATEGORY1_1];
    self.projectCategory2 = data[INFO_CATEGORY2];
    self.projectSubCategory21 = data[INFO_SUB_CATEGORY2_1];
    self.projectCategory3 = data[INFO_CATEGORY3];
    self.projectSubCategory31 = data[INFO_SUB_CATEGORY3_1];
    self.projectSubCategory32 = data[INFO_SUB_CATEGORY3_2];
    self.projectSubCategory33 = data[INFO_SUB_CATEGORY3_3];
    self.projectCategory4 = data[INFO_CATEGORY4];
    self.projectSubCategory41 = data[INFO_SUB_CATEGORY4_1];
    self.projectSubCategory42 = data[INFO_SUB_CATEGORY4_2];
    self.projectSubCategory43 = data[INFO_SUB_CATEGORY4_3];
    self.projectCategory5 = data[INFO_CATEGORY5];
    self.projectSubCategory51 = data[INFO_SUB_CATEGORY5_1];
    self.projectSubCategory52 = data[INFO_SUB_CATEGORY5_2];
    self.projectSubCategory53 = data[INFO_SUB_CATEGORY5_3];
    self.projectSubCategory54 = data[INFO_SUB_CATEGORY5_4];
    self.projectSubCategory55 = data[INFO_SUB_CATEGORY5_5];
    self.projectSubCategory56 = data[INFO_SUB_CATEGORY5_6];
    self.projectSubCategory57 = data[INFO_SUB_CATEGORY5_7];
    self.projectSubCategory58 = data[INFO_SUB_CATEGORY5_8];
    self.projectSubCategory59 = data[INFO_SUB_CATEGORY5_9];
    self.projectCategory6 = data[INFO_CATEGORY6];
    self.projectSubCategory61 = data[INFO_SUB_CATEGORY6_1];
    self.projectSubCategory62 = data[INFO_SUB_CATEGORY6_2];
    self.projectCategory7 = data[INFO_CATEGORY7];
    self.projectSubCategory71 = data[INFO_SUB_CATEGORY7_1];
    self.projectSubCategory72 = data[INFO_SUB_CATEGORY7_2];
    self.projectCategory8 = data[INFO_CATEGORY8];
    self.projectSubCategory81 = data[INFO_SUB_CATEGORY8_1];
    
    return self;
    
}

@end
