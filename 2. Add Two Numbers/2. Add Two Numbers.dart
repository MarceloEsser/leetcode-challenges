void main() {
  final stopwatch = Stopwatch();
  stopwatch.start();
  final solution = Solution();
  final result = solution.addTwoNumbers(
    ListNode(
      2,
      ListNode(4, ListNode(3)),
    ),
    ListNode(
      5,
      ListNode(6, ListNode(4)),
    ),
  );
  stopwatch.stop();
  print('microseconds: ${stopwatch.elapsedMicroseconds}');
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    List<int?> values1 = [
      l1?.val,
    ];

    List<int?> values2 = [
      l2?.val,
    ];

    ListNode? nextl1 = l1?.next;
    ListNode? nextl2 = l2?.next;
    do {
      values1.add(nextl1?.val);
      nextl1 = nextl1?.next;
    } while (nextl1 != null);

    do {
      values2.add(nextl2?.val);
      nextl2 = nextl2?.next;
    } while (nextl2 != null);

    values1 = values1.reversed.toList();
    values2 = values2.reversed.toList();
    final reduced1 = values1.reduce((v1, v2) {
          return int.parse('$v1' + '$v2');
        }) ??
        0;
    final reduced2 = values2.reduce((v1, v2) {
          return int.parse('$v1' + '$v2');
        }) ??
        0;
    //result
    //TODO: transform into a linked list
    final runes = (reduced1 + reduced2).toString().runes.toList().reversed;
    for (var rune in runes) {
      print(int.parse(String.fromCharCode(rune)));
    }
  }
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
