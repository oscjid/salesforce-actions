public with sharing class RandomClass {
    public RandomClass() {
        System.debug('Commit 2');
        System.debug('Commit 3');
        System.debug('Commit 4 After destructive changes');
        System.debug('Commit 5');
        System.debug('Commit 6');
        System.debug('Commit 7');
        System.debug('Qick commit to rerun test');
        System.debug('Commit 8');
    }

    public static Integer additionTest(Integer a, Integer b) {
        return a + b;
    }
}
