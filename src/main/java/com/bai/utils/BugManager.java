package com.bai.utils;

import java.util.ArrayList;
import java.util.List;

public class BugManager {
    private List<Bug> bugs;

    public BugManager() {
        bugs = new ArrayList<>();
    }

    public void addBug(Bug bug) {
        bugs.add(bug);
    }

    public List<Bug> getBugs() {
        return bugs;
    }
}
