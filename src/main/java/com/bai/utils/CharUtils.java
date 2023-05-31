package com.bai.utils;

/**
 * Author:XY
 * PACkAGE:com.bai.utils
 * Date:2023/5/20 23:32
 */
public class CharUtils {
    public static int toNumber(char cr) {
        return cr - 'A';
    }

    public static char toCharacter(int num) {
        return (char) (num + 'A');
    }
}
