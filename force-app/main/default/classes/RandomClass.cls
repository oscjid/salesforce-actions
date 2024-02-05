public with sharing class RandomClass {

    public RandomClass(){
        System.debug('Hej');
        System.debug('Hej2');
        System.debug('Den här borde finnas efter push till prod');
    }
    
    public static Integer additionTest(Integer a, Integer b){
        return a + b;
    }
    
}