<?php

// 归并排序

$arr = array(1,15,7,9,8,6,2,3,4);

function merge_sort($arr)
{
    // 1、递归结束条件
    $len = count($arr);
    if($len <= 1) return $arr;

    // 2、重复的操作
    // 2、1 拆分数组
    $middle = $len>>1;
    $left = array_slice($arr,0,$middle);
    $right = array_slice($arr,$middle);

    // 4、递归点（最后写这一步，先将一层的分离和合并写完，再找递归点）
    $left = merge_sort($left);
    $right = merge_sort($right);
    // 2、2 二路归并
    $res = array();    // 存合并后的元素

    while(count($left) && count($right))
    {
        $res[] = $left[0]>$right[0] ? array_shift($right):array_shift($left);
    }
    while(count($left) && !count($right))
    {
        $res[] = array_shift($left);
    }
    while(count($right) && !count($left))
    {
        $res[] = array_shift($right);
    }

    // 3、返回值
    return array_merge($res);
}

var_dump(merge_sort($arr));