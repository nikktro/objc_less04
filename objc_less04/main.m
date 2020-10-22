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
        
        NSMutableArray *allStudents = [[NSMutableArray alloc] init];
        [allStudents addObject:(studentJohn)];
        [allStudents addObject:(studentLiza)];
        
        printf("List student names\n");
        for (int i = 0; i < 2; i++) {
            Student *student = allStudents[i];
            NSLog(@"%@", student->name);
        }
        printf("\n");
        
        printf("Print student description\n");
        for (int i = 0; i < 2; i++) {
            NSLog(@"%@", allStudents[i]);
        }
        printf("\n");
        
        printf("Get properties\n");
        NSLog(@"John age: %lu", studentJohn.age); // John age
        NSLog(@"Full name: %@", studentLiza.fullname); //Lisa full name
        printf("\n");

        
        // increment age
        printf("Increment age\n");
        NSLog(@"Lisa age before: %lu", studentLiza.age);
        [studentLiza incrementAge]; // increment age
        NSLog(@"Lisa age after: %lu", studentLiza.age);
        
    }
    return 0;
}
