@isTest
private class RandomClassTest {

    @isTest 
    static void testConstructor() {
        RandomClass rc = new RandomClass();
        Assert.isNotNull(rc, 'The constructor should return a new instance of the RandomClass');
    }

    // Writing comment to test again

    @isTest
    static void additionTest() {
        Integer result = RandomClass.additionTest(1, 1);
        System.assertEquals(2, result, 'The addition should return 2 ye');
        System.debug('Den här kommentaren borde synas efter pull request!');
        System.debug('Inga destructive changes till integration ORG');
    }
}