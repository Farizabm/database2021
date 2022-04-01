def first_last6(nums):
    return True if nums[0] == 6 or nums[-1] == 6 else False


def same_first_last(nums):
    return True if len(nums) >= 1 and nums[0] == nums[-1] else False


def make_pi():
    return [3, 1, 4]


def common_end(a, b):
    return a[0] == b[0] or a[-1] == b[-1]


def sum3(nums):
    return sum(nums)


def rotate_left3(nums):
    return nums[1:] + nums[:1]


def reverse3(nums):
    return nums[::-1]


def max_end3(nums):
    return [max(nums[0], nums[2]), max(nums[0], nums[2]), max(nums[0], nums[2])]


def sum2(nums):
    return sum(nums[:2])


def middle_way(a, b):
    return [list(zip(a, b))[1][0], list(zip(a, b))[1][1]]


def make_ends(nums):
    return [nums[0], nums[-1]]


def has23(nums):
    return 2 in nums or 3 in nums
