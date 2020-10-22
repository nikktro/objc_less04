//
//  Student.m
//  objc_less04
//
//  Created by Nikolay Trofimov on 22.10.2020.
//

#import "Student.h"

@implementation Student

@synthesize fullname = username;

+ (instancetype)initWithName:(NSString *)name andSurname:(NSString *)surname andAge:(NSInteger)age {
    Student *student = [Student new];
    student->name = name;
    student->surname = surname;
    student->_age = age;
    student->username = [NSString stringWithFormat: @"%@ %@", name, surname];
    return student;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ %@, name: %@, surname: %@, age: %lu", self.className, self.fullname, name, surname, _age];
}

- (void)incrementAge {
    _age++;
}

@end
