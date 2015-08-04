//
//  Project.h
//  Monarch
//
//  Created by Amaury Portier on 31/07/2015.
//  Copyright (c) 2015 Amaury Portier. All rights reserved.
//

#import <Foundation/Foundation.h>

#define INFO_PROJECT_NAME @"Name of the project"
#define INFO_CATEGORY1 @"Category 1"
#define INFO_SUB_CATEGORY1_1 @"Sub category 1 of category 1"
#define INFO_CATEGORY2 @"Category 2"
#define INFO_SUB_CATEGORY2_1 @"Sub category 1 of category 2"
#define INFO_CATEGORY3 @"Category 3"
#define INFO_SUB_CATEGORY3_1 @"Sub category 1 of category 3"
#define INFO_SUB_CATEGORY3_2 @"Sub category 2 of category 3"
#define INFO_SUB_CATEGORY3_3 @"Sub category 3 of category 3"
#define INFO_CATEGORY4 @"Category 4"
#define INFO_SUB_CATEGORY4_1 @"Sub category 1 of category 4"
#define INFO_SUB_CATEGORY4_2 @"Sub category 2 of category 4"
#define INFO_SUB_CATEGORY4_3 @"Sub category 3 of category 4"
#define INFO_CATEGORY5 @"Category 5"
#define INFO_SUB_CATEGORY5_1 @"Sub category 1 of category 5"
#define INFO_SUB_CATEGORY5_2 @"Sub category 2 of category 5"
#define INFO_SUB_CATEGORY5_3 @"Sub category 3 of category 5"
#define INFO_SUB_CATEGORY5_4 @"Sub category 4 of category 5"
#define INFO_SUB_CATEGORY5_5 @"Sub category 5 of category 5"
#define INFO_SUB_CATEGORY5_6 @"Sub category 6 of category 5"
#define INFO_SUB_CATEGORY5_7 @"Sub category 7 of category 5"
#define INFO_SUB_CATEGORY5_8 @"Sub category 8 of category 5"
#define INFO_SUB_CATEGORY5_9 @"Sub category 9 of category 5"
#define INFO_CATEGORY6 @"Category 6"
#define INFO_SUB_CATEGORY6_1 @"Sub category 1 of category 6"
#define INFO_SUB_CATEGORY6_2 @"Sub category 2 of category 6"
#define INFO_CATEGORY7 @"Category 7"
#define INFO_SUB_CATEGORY7_1 @"Sub category 1 of category 7"
#define INFO_SUB_CATEGORY7_2 @"Sub category 2 of category 7"
#define INFO_CATEGORY8 @"Category 8"
#define INFO_SUB_CATEGORY8_1 @"Sub category 1 of category 8"



@interface Project : NSObject

@property (strong,nonatomic) NSString *projectName;
@property (strong,nonatomic) NSString *projectCategory1;
@property (strong,nonatomic) NSString *projectSubCategory11;
@property (strong,nonatomic) NSString *projectCategory2;
@property (strong,nonatomic) NSString *projectSubCategory21;
@property (strong,nonatomic) NSString *projectCategory3;
@property (strong,nonatomic) NSString *projectSubCategory31;
@property (strong,nonatomic) NSString *projectSubCategory32;
@property (strong,nonatomic) NSString *projectSubCategory33;
@property (strong,nonatomic) NSString *projectCategory4;
@property (strong,nonatomic) NSString *projectSubCategory41;
@property (strong,nonatomic) NSString *projectSubCategory42;
@property (strong,nonatomic) NSString *projectSubCategory43;
@property (strong,nonatomic) NSString *projectCategory5;
@property (strong,nonatomic) NSString *projectSubCategory51;
@property (strong,nonatomic) NSString *projectSubCategory52;
@property (strong,nonatomic) NSString *projectSubCategory53;
@property (strong,nonatomic) NSString *projectSubCategory54;
@property (strong,nonatomic) NSString *projectSubCategory55;
@property (strong,nonatomic) NSString *projectSubCategory56;
@property (strong,nonatomic) NSString *projectSubCategory57;
@property (strong,nonatomic) NSString *projectSubCategory58;
@property (strong,nonatomic) NSString *projectSubCategory59;
@property (strong,nonatomic) NSString *projectCategory6;
@property (strong,nonatomic) NSString *projectSubCategory61;
@property (strong,nonatomic) NSString *projectSubCategory62;
@property (strong,nonatomic) NSString *projectCategory7;
@property (strong,nonatomic) NSString *projectSubCategory71;
@property (strong,nonatomic) NSString *projectSubCategory72;
@property (strong,nonatomic) NSString *projectCategory8;
@property (strong,nonatomic) NSString *projectSubCategory81;


-(id) initWithData:(NSDictionary *)data;

@end
