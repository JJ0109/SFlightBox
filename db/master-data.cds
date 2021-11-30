using { Currency, Country, custom.managed, sap } from './common';
namespace sap.fe.cap.travel;

aspect MasterData {}

//Airline
entity Geraetetyp : MasterData {
  key GeraetetypID : String(3);
  Bezeichnung          : String(40);
  AnleitungURL : String      @UI : {IsImageURL : true};
};

//Flight
entity GVerbindung : MasterData {
  key GeraetetypID    : String(3);
  key ConnectionID : String(4);
  to_Geraetetyp       : Association to Geraetetyp on to_Geraetetyp.GeraetetypID = GeraetetypID;

};


//Passenger
entity Patient : managed, MasterData {
  key PatientenID : String(6);
  Vorname      : String(40);
  Nachname       : String(40);
  Titel           : String(10);
  Strasse         : String(60);
  Plz     : String(10);
  Stadt            : String(40);
  CountryCode    : Country;
  Telefonnr: String(30);
  EMail   : String(256);
};


