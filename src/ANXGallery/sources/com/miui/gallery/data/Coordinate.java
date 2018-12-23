package com.miui.gallery.data;

class Coordinate {
    public float latitude;
    public float longitude;

    public Coordinate(float latitude, float longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public Coordinate(String latitudeString, String latitudeRef, String longitudeString, String longitudeRef) {
        this.latitude = LocationUtil.convertRationalLatLonToFloat(latitudeString, latitudeRef);
        this.longitude = LocationUtil.convertRationalLatLonToFloat(longitudeString, longitudeRef);
    }

    public boolean isValid() {
        return LocationUtil.isValidateCoordidate(this.latitude, this.longitude);
    }
}
