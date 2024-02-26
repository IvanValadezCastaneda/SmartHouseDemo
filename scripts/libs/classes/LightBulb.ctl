// $License: NOLICENSE
//--------------------------------------------------------------------------------
/**
  @file LightBulb.ctl
  @author IvanJr
*/

//--------------------------------------------------------------------------------
// Libraries used (#uses)

//--------------------------------------------------------------------------------
// Variables and Constants

//--------------------------------------------------------------------------------

class LightBulb
{
//--------------------------------------------------------------------------------
//@public members
//--------------------------------------------------------------------------------
public LightBulb() {
  state = false;
  level = 0;
  color = "White";
  powerConsumption = 0.0;
  uptime = 0;
  downtime = 0;
  connectedNetwork = "";
}
  //------------------------------------------------------------------------------

  void setState(bool on) {
    state = on;
  }

  const bool getState(){
    return state;
  }

  void setLevel(int lvl) {
    level = lvl;
  }
   const int getLevel(){
    return level;
  }

  void setColor(const string& col) {
    color = col;
  }

   const string getColor(){
    return color;
  }

  void setPowerConsumption(double power) {
    powerConsumption = power;
  }

  const double getPowerConsumption(){
    return powerConsumption;
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

//--------------------------------------------------------------------------------
//@protected members
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
//@private members
//--------------------------------------------------------------------------------
private
  bool state; // true for on, false for off
  int level; // brightness level
  string color; // color of the light
  double powerConsumption; // power consumption in watts
  int uptime; // total uptime in hours
  int downtime; // total downtime in hours
  string connectedNetwork; // the network the bulb is connected to
};
