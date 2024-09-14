void main() {
  final solution = Solution();
  final result = solution.twoSum([3, 2, 4], 6);
  print(result.toString());
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final length = nums.length;
    for (var fi = 0; fi < length; fi++) {
      final fNumber = nums[fi];

      for (var si = 0; si < length; si++) {
        final sNumber = nums[si];

        if (fi == si) continue;

        final calc = fNumber + sNumber;
        if (calc == target) {
          return [fi, si];
        }
      }
    }
    return [];
  }
}
