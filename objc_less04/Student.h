//
//  Student.h
//  objc_less04
//
//  Created by Nikolay Trofimov on 22.10.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject {

@public
    NSString *name;
    NSString *surname;
}

@property (nonatomic, strong) NSString *fullname;
@property (readonly) NSInteger age;

+ (instancetype)initWithName:(NSString *)name andSurname:(NSString *)surname andAge:(NSInteger)age;

- (NSString *)description;

- (void)incrementAge;

@end

NS_ASSUME_NONNULL_END
