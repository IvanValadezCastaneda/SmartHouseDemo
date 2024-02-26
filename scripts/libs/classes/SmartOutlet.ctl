// $License: NOLICENSE
//--------------------------------------------------------------------------------
/**
  @file SmartOutlet.ctl
  @author IvanJr
*/

//--------------------------------------------------------------------------------
// Libraries used (#uses)

//--------------------------------------------------------------------------------
// Variables and Constants

//--------------------------------------------------------------------------------

class SmartOutlet
{
//--------------------------------------------------------------------------------
//@public members
//--------------------------------------------------------------------------------
public SmartOutlet() {
  state = false;
  powerConsumption = 0.0;
  connectedDevices = 0;
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

  void setPowerConsumption(double power) {
    powerConsumption = power;
  }

  const double getPowerConsumption(){
    return powerConsumption;
  }

  void setConnectedDevices(int devices) {
    connectedDevices = devices;
  }

  const int getConnectedDevices(){
    return connectedDevices;
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

  void scheduleOnOff(bool on, const string& timestring) {
        // Placeholder for scheduling logic
        // 'time' would be when to schedule the on/off state change
  }

  const double calculateEnergyUsage(int hours){
        // Placeholder for energy usage calculation over a given period
        return powerConsumption * hours;
  }

  void autoShutoff(int afterHours) {
  }

  void voiceCommand(const string& command) {
  }

//--------------------------------------------------------------------------------
//@protected members
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
//@private members
//--------------------------------------------------------------------------------
private
  bool state; // true for on, false for off
  double powerConsumption; // power consumption in watts
  int connectedDevices; // number of devices connected to the outlet
  int uptime; // total uptime in hours
  int downtime; // total downtime in hours
  string connectedNetwork; // the network the outlet is connected to
};
