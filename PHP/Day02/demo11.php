<?php

$arr = array(1,3,6,17,24,31,32);
// 顺序查找：从数组第一个元素开始挨个匹配
function find_index($arr,$num)
{
    foreach($arr as $k => $v)
    {
        if($v == $num) return $k;
    }
    return false;
}

// var_dump(find_index($arr,2));  // 不存在，故返回bool(false)
// var_dump(find_index($arr,32));  // 存在，故返回int(5)

function Binary_search($arr,$num)
{
    $len = count($arr);
    $left = 0;
    $right = $len-1;

    while($left <= $right)
    {
        $middle = $left+($right-$left>>1);
        if($arr[$middle] > $num)
            $right = $middle-1;
        elseif($arr[$middle] < $num)
            $left = $middle+1;
        else
            return $middle;
    }

    return false;
}
print_r(Binary_search($arr,6));
var_dump(Binary_search($arr,2));
