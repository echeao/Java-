<?php

// 快排双指针

$arr = array(1,2,3,9,2,8,7);
function quick_sort($arr)
{
    // 递归结束条件
    $len = count($arr);
    if($len <= 1) return $arr;

    // 定义双指针
    $left = 0;
    $right = $len-1;
    $pivot = $arr[0];  // 确定基准
    while($left < $right)   // left == right时跳出循环
    {
        while($left < $right && $arr[$right] >= $pivot) $right--;
        while($left < $right && $arr[$left] <= $pivot) $left++;
        swap1($arr[$left],$arr[$right]);
    }
    swap1($arr[$left],$arr[0]);   // 跳出循环时，left = right ，故将pivot赋值即可

    // 递归点(上述操作完毕后，需要进一步排序左边和右边，故需递归)
    $left_arr = quick_sort(array_slice($arr,0,$left));
    $right_arr = quick_sort(array_slice($arr,$left+1));

    return array_merge($left_arr,(array)$arr[$left],$right_arr);
}

var_dump(quick_sort($arr));


// 交换值
function swap1(&$a,&$b)
{
    $tmp = $a;
    $a = $b;
    $b = $tmp;
}
