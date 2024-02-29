@isTest
public class ApexAssignment1Test {
    @isTest
    static void testIsPalindrome() {
        // Positive Test Case
        System.assert(ApexAssignment1.isPalindrome('level'));
        // Negative Test Case
        System.assert(!ApexAssignment1.isPalindrome('hello'));
    }
    @isTest
    static void testSumOfDigits() {
        // Positive Test Case
        System.assertEquals(10, ApexAssignment1.sumOfDigits(1234));
        // Negative Test Case
        System.assertNotEquals(15, ApexAssignment1.sumOfDigits(1234));
    }
    @isTest
    static void testReverseList() {
        // Positive Test Case
        List<Integer> inputList = new List<Integer>{1, 2, 3, 4, 5};
        List<Integer> reversedList = ApexAssignment1.reverseList(inputList);
        System.assertEquals(new List<Integer>{5, 4, 3, 2, 1}, reversedList);
        // Negative Test Case
        List<Integer> emptyList = new List<Integer>();
        List<Integer> reversedEmptyList = ApexAssignment1.reverseList(emptyList);
        System.assertEquals(new List<Integer>(), reversedEmptyList);
    }
    @isTest
    static void testMap2DList() {
        // Positive Test Case
        List<List<Integer>> inputList = new List<List<Integer>>{
            new List<Integer>{1, 2, 3},
            new List<Integer>{4, 5, 6}
        };
        Map<Integer, List<Integer>> resultMap = ApexAssignment1.map2DList(inputList);
        System.assertEquals(new Map<Integer, List<Integer>>{
            0 => new List<Integer>{1, 2, 3},
            1 => new List<Integer>{4, 5, 6}
        }, resultMap);
        // Negative Test Case
        List<List<Integer>> emptyList = new List<List<Integer>>();
        Map<Integer, List<Integer>> resultMapEmpty = ApexAssignment1.map2DList(emptyList);
        System.assertEquals(new Map<Integer, List<Integer>>(), resultMapEmpty);
    }
    @isTest
    static void testRemoveDuplicatesAndSort() {
        // Positive Test Case
        List<List<String>> inputList = new List<List<String>>{
            new List<String>{'a', 'b', 'a', 'v', 'c'},
            new List<String>{'x', 'x', 'y', 'c', 'q'},
            new List<String>{'m', 'b', 'h', 'j', 'm'},
            new List<String>{'u', 'k', 'j', 'u'}
        };
        List<List<String>> resultList = ApexAssignment1.removeDuplicatesAndSort(inputList);
        System.assertEquals(new List<List<String>>{
            new List<String>{'a', 'b', 'c', 'v'},
            new List<String>{'c', 'q', 'x', 'y'},
            new List<String>{'b', 'h', 'j', 'm'},
            new List<String>{'j', 'k', 'u'}
        }, resultList);
        // Negative Test Case
        List<List<String>> emptyList = new List<List<String>>();
        List<List<String>> resultListEmpty = ApexAssignment1.removeDuplicatesAndSort(emptyList);
        System.assertEquals(new List<List<String>>(), resultListEmpty);
    }
    @isTest
    static void testRotateClockwise() {
        // Positive Test Case
        List<Integer> inputList = new List<Integer>{1, 2, 3, 4, 5};
        List<Integer> rotatedList = ApexAssignment1.rotateClockwise(inputList, 2);
        System.assertEquals(new List<Integer>{4, 5, 1, 2, 3}, rotatedList);
        // Negative Test Case
        List<Integer> emptyList = new List<Integer>();
        List<Integer> rotatedEmptyList = ApexAssignment1.rotateClockwise(emptyList, 3);
        System.assertEquals(new List<Integer>(), rotatedEmptyList);
    }
    @isTest
    static void testRotateAntiClockwise() {
        // Positive Test Case
        List<Integer> inputList = new List<Integer>{1, 2, 3, 4, 5};
        List<Integer> rotatedList = ApexAssignment1.rotateAntiClockwise(inputList, 2);
        System.assertEquals(new List<Integer>{3, 4, 5, 1, 2}, rotatedList);
        // Negative Test Case
        List<Integer> emptyList = new List<Integer>();
        List<Integer> rotatedEmptyList = ApexAssignment1.rotateAntiClockwise(emptyList, 3);
        System.assertEquals(new List<Integer>(), rotatedEmptyList);
    }
    @isTest
    static void testFindLeaders() {
        // Positive Test Case
        List<Integer> inputList = new List<Integer>{149, 1, 3, 248, 2, 8, 70, 5};
        List<Integer> leaders = ApexAssignment1.findLeaders(inputList);
        System.assertEquals(new List<Integer>{248, 70, 5}, leaders);
        // Negative Test Case
        List<Integer> emptyList = new List<Integer>();
        List<Integer> leadersEmpty = ApexAssignment1.findLeaders(emptyList);
        System.assertEquals(new List<Integer>(), leadersEmpty);
    }
}
