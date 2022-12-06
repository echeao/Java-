package com.itheima.create;

public class demo01 {
    public static void main(String[] args) {
        demo01 tes = new demo01();
        //double c = tes.min(3, 2);
        System.out.println(tes.min(3, 2));

        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");

        int e1 = 5;
        int e2 = 2;
        double e3 = (double) e1 / e2;
        System.out.println(e3);
    }

    public static double min(int a, int b) {
        return (double) a / b;


    }
}
