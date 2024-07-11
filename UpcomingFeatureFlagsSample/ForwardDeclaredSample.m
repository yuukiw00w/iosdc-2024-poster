//
//  ForwardDeclaredSample.m
//  UpcomingFeatureFlagsSample
//
//  Created by 野瀬田 裕樹 on 2024/07/12.
//

#import "ForwardDeclaredSample.h"
#import "ForwardDeclaredSample2.h"

@implementation ForwardDeclaredSampleClass1

- (ForwardDeclaredSampleClass2 *)createSample {
    return [ForwardDeclaredSampleClass2 init];
}

@end
