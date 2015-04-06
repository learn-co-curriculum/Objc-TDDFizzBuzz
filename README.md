---
  tags: tutorial, lab ,TDD, beginner
  languages: objc
---

# Objc-TDDFizzBuzz

# Goals 

* Use Test Driven development to solve the popular CS FizzBuzz problem  
* Get used to the idea of testing first, and the practice of red green refactor

# Classic Fizz Buzz
Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

ex output: 
` 1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz `
 
We'll be slightly modifying FizzBuzz to build a solution using TDD.  The key difference is our FizzBuzz will take two arguments `startNumber` and `endNumber`, allowing for any range of numbers we wish.  Make sure to read all of the following instructions before starting and to write the tests before implementing the corrosponding features in code. 

Instructions
=====================

We'll give you a bit of room to be creative with how you create your FizzBuzz instances for your tests, but here is one way: 

   - Create a variable of type `FizzBuzz` named `fizzBuzz` (This has been done for you)
   - In your `beforeAll` block, `alloc` `init` an instance of `FizzBuzz` (This has been done for you)
   - in any method that requires instantiating a `FizzBuzz` item, you can call `fizzBuzz`.  

You could also rewrite `FizzBuzz *fizzBuzz = [[FizzBuzz alloc] init]; ` in each test, but that wouldn't adhere to D.R.Y. (don't repeat yourself).  

#Test 1
1. Write a test that asserts that a `FizzBuzz` object can be instantiated i.e. alloc init'ing a `FizzBuzz` object returns an object of class `FizzBuzz`.
2. Run your test (It won't even compile because the `FizzBuzz` class doesn't exist)**Red**
3. Create a class called `FizzBuzz` (subclass of NSObject) and import `FizzBuzz.h` into your Test Class 
4. Run your test (It should pass)**Green**

#Test 2
1. Write a test that tests setting `FizzBuzz`'s `startNumber` property to `@5`.  
2. Run your test (Again it won't compile)**Red**
3. Add the `startNumber` property to your `FizzBuzz` class (remember, properties automatically generate setters and getters!) 
4. Run your test (It should pass)**Green**

#Test 3
1. Write a test that tests setting `FizzBuzz`'s `endNumber` property to `@5`.
2. Run your test (Again it won't compile)**Red**
3. Add the `endNumber` property to your `FizzBuzz` class
4. Run your test (It should pass)**Green**

#Test 4
1. Write a test that tests `FizzBuzz`'s `init` Method with two assertions.  The goal of these assertions is to show that after initializing, `startNumber` and `endNumber` default to `@0`. ie. if `startNumber` and `endNumber` aren't set, they return `@0`.    
2. Run your test (This time it will compile but will fail)**Red**
3. Implement `FizzBuzz`'s `init` method to pass this test. **Green**
 
#Test 5
1. Write a test that tests initialization of `FizzBuzz` property values when using a designated initializer.  Remember, an example of a designated initializer would be `NSString`'s `initWithString` method. In the case of `FizzBuzz`, the designated initializer should set the `startNumber` and `endNumber` properties. 
2. Run your test (It won't compile)**Red**
3. Add the designated initializer to your `FizzBuzz` Class' `.h` file and implement in the `.m` file. Run your test. **Green**

#Refactor
1. Hazah! Adding a designated initializer to the mix gives us a chance to refactor things a bit.  In your `init` method, you set the properties of `startNumber` and `endNumber`.  Why not just use the designated initializer to do the same work in less lines of code. 
2. **Refactor** your default `-init` method to call your designated initializer to set `startNumber` and `endNumber` to `@0`.
3. Run your test.**Green**

#Test 6
1. Write a test that asserts that the array returned from `[FizzBuzz getValuesBetweenNumber:@0 andNumber:@15]` is equivalent to `@[@"0",@"1",@"2",@"Fizz",@"4",@"Buzz",@"Fizz",@"7",@"8",@"Fizz",@"Buzz", @"11", @"Fizz", @"13", @"14", @"FizzBuzz"]` .
2. Run your test! (It won't compile)**Red**
3. Implement the `- (NSArray *)getValuesBetweenNumber:(NSNumber *)startNumber andNumber:(NSNumber)endNumber;` method and run your test. **Green**



