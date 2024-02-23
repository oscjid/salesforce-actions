public with sharing class RandomClass {

    public RandomClass(){
        System.debug('Hej');
        System.debug('Hej2');
        System.debug('Hej2');
        System.debug('Den här borde finnas efter push till prod');
        System.debug('Den här borde bara synas om --dry-run tillåter quick deploy?!?!?!?');
        System.debug('Commit 4 intressant hur detta beter sig i PR');
    }
    
    public static Integer additionTest(Integer a, Integer b){
        return a + b;
    }
    
}