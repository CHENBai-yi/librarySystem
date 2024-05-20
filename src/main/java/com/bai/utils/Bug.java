package com.bai.utils;

public class Bug {
    private int id;
    private String reason;
    private String testEnvironment;
    private String tester;
    private int progress;

    public Bug(int id, String reason, String testEnvironment, String tester, int progress) {
        this.id = id;
        this.reason = reason;
        this.testEnvironment = testEnvironment;
        this.tester = tester;
        this.progress = progress;
    }

    public String getReason() {
        return reason;
    }

    public String getTestEnvironment() {
        return testEnvironment;
    }

    public String getTester() {
        return tester;
    }

    public int getProgress() {
        return progress;
    }
}

