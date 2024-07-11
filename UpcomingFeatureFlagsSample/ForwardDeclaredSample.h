//
//  ForwardDeclaredSample.h
//  UpcomingFeatureFlagsSample
//
//  Created by 野瀬田 裕樹 on 2024/07/12.
//

#import <Foundation/Foundation.h>

// クラスの前方宣言
@class ForwardDeclaredSampleClass2;

@interface ForwardDeclaredSampleClass1 : NSObject

- (ForwardDeclaredSampleClass2 *)createSample;

@end
