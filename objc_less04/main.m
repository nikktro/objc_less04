//
//  main.m
//  objc_less04
//
//  Created by Nikolay Trofimov on 22.10.2020.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Student *studentJohn = [Student initWithName: @"John" andSurname: @"Smith" andAge:22];
        Student *studentLiza = [Student initWithName: @"Liza" andSurname: @"Brown" andAge:27];
        
        NSLog(@"%lu", studentJohn.age);
        NSLog(@"%@", studentLiza.fullname);
        
        [studentLiza description];
        NSLog(@"%@", studentLiza.description);
        
    }
    return 0;
}
