
@isTest
private class RandomClassTest {
    @isTest
    static void additionTest() {
        Integer result = RandomClass.additionTest(1, 1);
        System.assertEquals(2, result, 'The addition should return 2');
    }
}