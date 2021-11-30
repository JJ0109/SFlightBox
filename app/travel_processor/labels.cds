using { sap.fe.cap.travel as schema } from '../../db/schema';

//
// annotations that control rendering of fields and labels
//

annotate schema.Box with @title: '{i18n>Box}' {
  BoxUUID   @UI.Hidden;
  BoxID     @title: '{i18n>TravelID}';
  BeginDateAusleihe    @title: '{i18n>BeginDate}';
  EndDateAusleihe      @title: '{i18n>EndDate}';
  Boxname  @title: '{i18n>Description}';
  BoxStatus @title: '{i18n>TravelStatus}'  @Common.Text: BoxStatus.name     @Common.TextArrangement: #TextOnly;
  to_Patient  @title: '{i18n>CustomerID}'    @Common.Text: to_Patient.Nachname  @Common.TextArrangement: #TextFirst;
}

annotate schema.BoxStatus with {
  code @Common.Text: name @Common.TextArrangement: #TextOnly
}

annotate schema.Geraete with @title: '{i18n>Geraete}' {
  GeraeteUUID   @UI.Hidden;
  to_Box     @UI.Hidden;
  GeraeteID     @title: '{i18n>BookingID}';
  ConnectionID  @title: '{i18n>ConnectionID}';
  GeraeteStatus @title: '{i18n>BookinStatus}'  @Common.Text: GeraeteStatus.name    @Common.TextArrangement: #TextOnly;
  to_Geraetetyp    @title: '{i18n>AirlineID}'      @Common.Text: to_Geraetetyp.Bezeichnung       @Common.TextArrangement: #TextFirst;
  to_Patient   @title: '{i18n>CustomerID}'     @Common.Text: to_Patient.Nachname  @Common.TextArrangement: #TextFirst;
}

annotate schema.GeraeteStatus with {
  code @Common.Text : name @Common.TextArrangement: #TextOnly
}

annotate schema.Patient with @title: '{i18n>Passenger}' {
  PatientenID   @title: '{i18n>CustomerID}'    @Common.Text: Nachname @Common.TextArrangement: #TextFirst;
  Vorname    @title: '{i18n>FirstName}';
  Nachname     @title: '{i18n>LastName}';
  Titel        @title: '{i18n>Title}';
  Strasse       @title: '{i18n>Street}';
  Plz   @title: '{i18n>PostalCode}';
  Stadt         @title: '{i18n>City}';
  CountryCode  @title: '{i18n>CountryCode}';
  Telefonnr  @title: '{i18n>PhoneNumber}';
  EMail @title: '{i18n>EMailAddress}';
}

annotate schema.Geraetetyp with @title: '{i18n>Airline}' {
  GeraetetypID    @title: '{i18n>AirlineID}'     @Common.Text: Bezeichnung @Common.TextArrangement: #TextFirst;
  Bezeichnung         @title: '{i18n>Name}';
}

annotate schema.GVerbindungwith @title: '{i18n>Flight}' {
  AirlineID     @title: '{i18n>AirlineID}';
  ConnectionID  @title: '{i18n>ConnectionID}';
}

