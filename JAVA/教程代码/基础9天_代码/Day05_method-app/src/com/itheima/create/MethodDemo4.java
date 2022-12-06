package com.itheima.create;

public class MethodDemo4 {
    public static void main(String[] args) {
        MethodDemo4 test = new MethodDemo4();
        test.pupAge();
    }

    public void pupAge() {
        int age = 0;
        age = age + 10;
        System.out.println("小狗的年龄是" + age);
    }
}
