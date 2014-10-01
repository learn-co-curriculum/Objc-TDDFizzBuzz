#import "Specta.h"

#define EXP_SHORTHAND
#import "Expecta.h"
#import "FizzBuzz.h"

SpecBegin(FizzBuzzTests)

__block FizzBuzz *fizzBuzz;
__block FizzBuzz *defaultFizzBuzz;
__block FizzBuzz *designatedFizzBuzz;

describe(@"Fizz Buzz Tests", ^{
    
    beforeAll(^{
        
    });
    
    beforeEach(^{
        fizzBuzz = [[FizzBuzz alloc] init];
        defaultFizzBuzz = [[FizzBuzz alloc] init];
        designatedFizzBuzz = [[FizzBuzz alloc] initWithStartNumber:@0
                                                         endNumber:@15];
    });
    
#pragma mark - Test 1
    it(@"Should return a FizzBuzz Object upon initialization", ^{
        expect(fizzBuzz).to.beKindOf([FizzBuzz class]);
        expect(fizzBuzz).toNot.beNil();
    });
    
#pragma mark - Test 2
    it(@"Should allow it's startNumber property to be set", ^{
        expect(defaultFizzBuzz).to.respondTo(@selector(setStartNumber:));
        defaultFizzBuzz.startNumber = @10;
        expect(defaultFizzBuzz.startNumber).to.equal(@10);
    });
    
#pragma mark - Test 3
    it(@"Should allow it's endNumber property to be set", ^{
        expect(defaultFizzBuzz).to.respondTo(@selector(setEndNumber:));
        defaultFizzBuzz.endNumber = @20;
        expect(defaultFizzBuzz.endNumber).to.equal(@20);
    });
    
#pragma mark - Test 4
    it(@"Should set startNumber and endNumber to @0 when initialized using default initializer", ^{
        expect(defaultFizzBuzz.startNumber).to.equal(@0);
        expect(defaultFizzBuzz.endNumber).to.equal(@0);
    });
    
#pragma mark - Test 5
    it(@"Should return a FizzBuzz Object when initialized with a designated initializer", ^{
        expect(designatedFizzBuzz).to.beKindOf([FizzBuzz class]);
        expect(designatedFizzBuzz).toNot.beNil();
        
        expect(designatedFizzBuzz.startNumber).to.equal(@0);
        expect(designatedFizzBuzz.endNumber).to.equal(@15);
    });
    
#pragma mark - Test 6
    it(@"Should replace appropriate values with Fizz, Buzz, and FizzBuzz", ^{
        
        NSArray *fizzBuzzArray = @[@"0",@"1",@"2",@"Fizz",@"4",@"Buzz",@"Fizz",@"7",@"8",@"Fizz",@"Buzz", @"11", @"Fizz", @"13", @"14", @"FizzBuzz"];

        expect([designatedFizzBuzz getFizzBuzzArray]).to.equal(fizzBuzzArray);
    });
    
    afterEach(^{
        
    });
    
    afterAll(^{
        
    });
});



SpecEnd
