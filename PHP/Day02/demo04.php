<?php
// 数据类型
// // 创建数据
$a = 'abcd1.1.1';
$b = '1.1.1abc';
// 自动转换。算术运算，系统先转化为数值类型，然后运算
echo $a + $b;
// 强制转换
echo '<br/>', (float)$a, '<br/>', (float)$b;
// 类型判断
echo '<hr/>';
var_dump(is_int($a));
var_dump(is_string($a));
// 获取数据类型
echo '<hr/>';
echo gettype($a);
