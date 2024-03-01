// $License: NOLICENSE
//--------------------------------------------------------------------------------
/**
  @file $relPath
  @copyright $copyright
  @author IvanJr
*/

//--------------------------------------------------------------------------------
// Libraries used (#uses)

//--------------------------------------------------------------------------------
// Variables and Constants

//--------------------------------------------------------------------------------
/**
*/
class SmartMotionSensor
{
//--------------------------------------------------------------------------------
//@public members
//--------------------------------------------------------------------------------

  //------------------------------------------------------------------------------
  /** The Default Constructor.
  */
  public SmartMotionSensor() {
    state = false;
    uptime = 0;
    downtime = 0;
    connectedNetwork = "";
    motionDetected = false;
    distance = 0.0;
    sensitivityLevel = 5; // Arbitrary scale 1-10
    detectionTimeout = 30;
    longRangeConnectionEnabled = false;
    batteryLifeYears = 1;
    }

   void setState(bool on) {
    state = on;
  }

  const bool getState(){
    return state;
  }

  void setUptime(int uptimeHours) {
    uptime = uptimeHours;
  }

  const int getUptime() {
    return uptime;
  }

 void setDowntime(int downtimeHours) {
    downtime = downtimeHours;
  }

  const int getDowntime() {
    return downtime;
  }

  void setConnectedNetwork(const string& network) {
    connectedNetwork = network;
  }

  const string getConnectedNetwork(){
    return connectedNetwork;
  }

  void setMotionDetected(bool detected) {
     motionDetected = detected;
  }

  const bool getMotionDetected() {
        return motionDetected;
  }

  void setDistance(double dist) {
        distance = dist;
  }

  const double getDistance() {
        return distance;
  }

  void setSensitivityLevel(int level) {
        sensitivityLevel = level;
  }

  const int getSensitivityLevel() {
        return sensitivityLevel;
  }

  void setDetectionTimeout(int timeout) {
        detectionTimeout = timeout;
  }

  const int getDetectionTimeout() {
        return detectionTimeout;
  }

  void enableLongRangeConnection(bool enable) {
        longRangeConnectionEnabled = enable;
  }

  const bool isLongRangeConnectionEnabled() {
        return longRangeConnectionEnabled;
  }

  void setBatteryLifeYears(int years) {
        batteryLifeYears = years;
  }

  const int getBatteryLifeYears() {
        return batteryLifeYears;
  }


//--------------------------------------------------------------------------------
//@protected members
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
//@private members
//--------------------------------------------------------------------------------
  private
      bool state; // true for on, false for off
      bool motionDetected;
      double distance;
      int sensitivityLevel;
      int detectionTimeout;
      bool longRangeConnectionEnabled;
      int batteryLifeYears;
      int uptime; // total uptime in hours
      int downtime; // total downtime in hours
      string connectedNetwork; // the network the bulb is connected to
};
