<?php
/*$txt = "hello world";
$a = 5;
$b = 10.5;
*/
$x=5;
$y=10;
function myTest()
{
    global $x,$y;
    $y = $x + $y;
}
myTest();
echo $y;
?>