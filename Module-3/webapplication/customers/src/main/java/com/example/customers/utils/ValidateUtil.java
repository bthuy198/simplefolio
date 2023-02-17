package com.example.customers.utils;

import java.util.regex.Pattern;

public class ValidateUtil {
    public static final String FULLNAME_REGEX = "^[a-zA-Z \\-\\.\\']*$";
    public static final String ADDRESS_REGEX = "^[A-Za-z0-9][A-Za-z0-9\\s]{4,14}$";
    public static boolean isNameValid(String name) {
        return Pattern.matches(FULLNAME_REGEX, name);
    }
    public static boolean isAddressValid(String address) {
        return Pattern.matches(ADDRESS_REGEX, address);
    }
}
