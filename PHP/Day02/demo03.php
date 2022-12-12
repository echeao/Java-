<?php
$x = 5;
function myTest()
{
    $y= 10;
    echo"<P>测试函数内变量:<p>";
    echo"变量x为:$x";
    echo "<br>";
    echo "变量y为:$y";
}
myTest();
echo "<p>测试函数外变量:<p>";
echo "变量x为:$x";
echo "<br>";
echo "变量y为:$y";
?>