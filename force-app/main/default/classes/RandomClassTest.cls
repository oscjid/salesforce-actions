
@isTest
private class RandomClassTest {

    @isTest 
    static void testConstructor() {
        RandomClass rc = new RandomClass();
        Assert.isNotNull(rc, 'The constructor should return a new instance of the RandomClass');
    }

    // Writing comment to test

    @isTest
    static void additionTest() {
        Integer result = RandomClass.additionTest(1, 1);
        System.assertEquals(2, result, 'The addition should return 2 ye');
        System.debug('Testar igen igen Igen Igen Igen');
    }
}