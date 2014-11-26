package com.mz.entity;

/**
 * 定义Tracker类
 * 
 * @author xueyuan
 * @since 1.0
 **/
public class Tracker {
    private int    trackerId;
    private String trackerIp;
    private String trackerState;


    public int getTrackerId() {
        return trackerId;
    }


    public void setTrackerId(int trackerId) {
        this.trackerId = trackerId;
    }


    public String getTrackerIp() {
        return trackerIp;
    }


    public void setTrackerIp(String trackerIp) {
        this.trackerIp = trackerIp;
    }


    public String getTrackerState() {
        return trackerState;
    }


    public void setTrackerState(String trackerState) {
        this.trackerState = trackerState;
    }

}
