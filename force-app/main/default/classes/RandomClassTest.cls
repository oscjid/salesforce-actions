@isTest
private class RandomClassTest {
    @isTest
    static void testConstructor() {
        RandomClass rc = new RandomClass();
        Assert.isNotNull(rc, 'The constructor should return a new instance of the RandomClass');
    }

    @isTest
    static void additionTest() {
        Integer result = RandomClass.additionTest(1, 1);
        System.assertEquals(2, result, 'The result should be 2');
    }
}
