<?php

// 数组遍历  foreach

$arr = array(1,2,3,4,5,6,7,8,9,10);

// foreach
foreach($arr as $a)
{
    echo $a,'<br/>';    // 依次输出1，2，3，4
}

foreach($arr as $a => $v)
{
    echo 'key',$a,'== value',$v,'<br/>';    // 依次输出key0 == value1  等
}

// 二维数组
$arr = array(
    0 => array('name' =>'Tom','age' => 10),
    1 => array('name' => 'Jim','age' => 11)
);

// 通过foreach遍历二维元素
foreach($arr as $a)
{
    echo 'name is:',$a['name'],'age is:',$a['age'],'<br/>';
    // name is:TOM age is:10
    // name is:TOM age is:10
}
