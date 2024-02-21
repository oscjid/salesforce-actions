@isTest
public with sharing class ClassTwoTest {
    @isTest
    static void testConstructor() {
        ClassTwo c2 = new ClassTwo();
        Assert.isNotNull(c2, 'The constructor should return a new instance of the ClassTwo');
    }

    @isTest
    static void additionTest() {
        Integer result = ClassTwo.additionTest(1, 1);
        System.assertEquals(2,result, 'The result should be 2');
    }
}