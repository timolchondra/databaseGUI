#DATABASE FOR GUAM TRAVELOR'S INFORMATION SYSTEM
#Timothy Olchondra
CREATE Database Database_Project;

USE Database_Project;

CREATE TABLE Population (
       NameOfArea           Char(30)  NOT NULL,       #Guam will be the name
       NumOfPeople          Int   NOT NULL,
       CONSTRAINT           Population_PK PRIMARY KEY(NameOfArea)
);

CREATE TABLE EthnicGroups (
       NameOfArea         Char(30)  NOT NULL,
       NameOfGroup        Char(30)  NOT NULL,
       Percentage         double    NOT NULL,
       CONSTRAINT         EthnicGroup_PK  PRIMARY KEY(NameOfGroup),
       CONSTRAINT         EthnicGroup_FK  FOREIGN KEY(NameOfArea)
                          REFERENCES      Population(NameOfArea)
);

CREATE TABLE Village (
       VillageName   Char(30)   NOT NULL,
       NameOfArea    Char(30)   NOT NULL,
       CONSTRAINT    Village_PK PRIMARY KEY (VillageName),
       CONSTRAINT Village_FK    FOREIGN KEY(NameOfArea)
                  REFERENCES    Population(NameOfArea)

);

CREATE TABLE House (
       VillageName            Char(30)  NOT NULL,
       House_Description               Char(100)   NOT NULL,
       Address                Char(100)  NOT NULL,
       Cost                   int   NOT NULL,
       NumOfBedrooms          int   NOT NULL,
       NumOfBathrooms         double   NOT NULL,
       SquareAcres            int   NOT NULL,
       CONSTRAINT             House_PK  PRIMARY KEY (Address),
       CONSTRAINT             House_FK   FOREIGN KEY (VillageName)
                              REFERENCES            Village(VillageName)
);

CREATE TABLE Apartment (
       MLSNumber      Char(30)   NOT NULL,
       Address         Char(100)   NOT NULL,
       AptUnit         Char(10)    NULL,
       OnFloor         int         NOT NULL,
       CostOfRent      int    NOT NULL,
       NumOfBedrooms   int    NOT NULL,
       NumOfBathrooms  double NOT NULL,
       SizeInSqft      int    NOT NULL,
       VillageName     Char(30)   NOT NULL,
       CONSTRAINT      Apartment_PK   PRIMARY KEY(MLSNumber),
       CONSTRAINT      Apartment_FK FOREIGN KEY(VillageName)
                       REFERENCES           Village(VillageName)
);


CREATE TABLE PublicSchool (
       PublicID           int NOT NULL,
       VillageName        Char(30)    NOT NULL,
       CONSTRAINT   Public_PK Primary Key(PublicID),
       CONSTRAINT Public_FK   FOREIGN KEY(VillageName)
                  REFERENCES  Village(Villagename)

);

CREATE TABLE PrivateSchool (
       PrivateID           int  NOT NULL,
       Tuition              int  NULL,
       Denomination        Char(30) NOT NULL,
       VillageName         Char(30) NOT NULL,
       CONSTRAINT          Private_PK   PRIMARY KEY(PrivateID),
       CONSTRAINT Private_FK   FOREIGN KEY(VillageName)
       REFERENCES  Village(Villagename)
);

CREATE TABLE ElementarySchool (
      SchoolName              Char(100)  NOT NULL,
      NumOfStudents           int   NULL,
      PhoneNumber             Char(30)  NULL,
      Mascot                  Char(30)  NULL,
      PublicID                int   NULL,
      PrivateID               int   NULL,
      CONSTRAINT              ElementarySchool_PK PRIMARY KEY(SchoolName),
      CONSTRAINT              Private_Relationship  FOREIGN KEY(PrivateID)
                              REFERENCES            PrivateSchool(PrivateID),
      CONSTRAINT              Public_Relationship   Foreign KEY(PublicID)
                              REFERENCES            PublicSchool(PublicID)

);

CREATE TABLE MiddleSchool(
       SchoolName              Char(100)  NOT NULL,
       NumOfStudents           int   NULL,
       PhoneNumber             Char(30)  NULL,
       Mascot                  Char(30)  NULL,
       PublicID                int   NULL,
       PrivateID               int   NULL,
       CONSTRAINT              MiddleSchool_PK PRIMARY KEY(SchoolName),
       CONSTRAINT              MiddlePrivate_Relationship  FOREIGN KEY(PrivateID)
                               REFERENCES            PrivateSchool(PrivateID),
       CONSTRAINT              MiddlePublic_Relationship   Foreign KEY(PublicID)
                               REFERENCES            PublicSchool(PublicID)

);


CREATE TABLE HighSchool(
       SchoolName              Char(100)  NOT NULL,
       NumOfStudents           int   NULL,
       PhoneNumber             Char(30)  NULL,
       Mascot                  Char(30)  NULL,
       PublicID                int   NULL,
       PrivateID               int   NULL,
       CONSTRAINT              HighSchool_PK PRIMARY KEY(SchoolName),
       CONSTRAINT              HighPrivate_Relationship  FOREIGN KEY(PrivateID)
                               REFERENCES            PrivateSchool(PrivateID),
       CONSTRAINT              HighPublic_Relationship   Foreign KEY(PublicID)
                               REFERENCES            PublicSchool(PublicID)

);

CREATE TABLE College(
       CollegeName        Char(30)    NOT NULL,
       WebsiteURL         Char(30)    NOT NULL,
       PhoneNumber        Char(30)    NOT NULL,
       Mascot             Char(30)    NULL,
       VillageName        Char(30)    NOT NULL,
       CONSTRAINT         College_PK  PRIMARY KEY(CollegeName),
       CONSTRAINT         College_FK  Foreign Key(VillageName)
                          REFERENCES  Village(VillageName)

);

CREATE TABLE Restaurant (
       RestaurantName       Char(100)      NOT NULL,
       Address              Char(100)      NOT NULL,
       TypeOfFood           Char(30)      NOT NULL,
       PhoneNumber          Char(30)      NOT NULL,
       VillageName          Char(30)      NOT NULL,
       CONSTRAINT           Restaurant_PK PRIMARY KEY(RestaurantName),
       CONSTRAINT           Village_Relationship  FOREIGN KEY(VillageName)
                            REFERENCES            Village(VillageName)
);

CREATE TABLE RestaurantHours (
       RestaurantName       Char(30)     NOT NULL,
       StartHour            Char(15)     NOT NULL,
       EndHour              Char(15)     NOT NULL,
       CONSTRAINT           RH_PK        PRIMARY KEY(RestaurantName),
       CONSTRAINT           RH_FK        FOREIGN KEY(RestaurantName)
                            REFERENCES   Restaurant(RestaurantName)

);


CREATE TABLE Mall (
       MallName               Char(100)    NOT NULL,
       Address                Char(100)    NOT NULL,
       NumOfStores            int   NOT NULL,
       PhoneNumber            Char(30)  NOT NULL,
       VillageName            Char(30) NOT NULL,
       CONSTRAINT Mall_PK     PRIMARY KEY(MallName),
       CONSTRAINT Mall_FK  FOREIGN KEY(VillageName)
                  REFERENCES  Village(VillageName)
 );

CREATE TABLE MallHours (
       MallName          Char(100)     NOT NULL,
       StartHour         Char(15)     NOT NULL,
       EndHour           Char(15)     NOT NULL,
       CONSTRAINT        MallHours_PK PRIMARY KEY(MallName),
       CONSTRAINT        MallHours_FK FOREIGN KEY(MallName)
                         REFERENCES   Mall(MallName)

);

CREATE TABLE MovieTheater (
       TheaterName        Char(100)   NOT NULL,
       Address            Char(100)   NOT NULL,
       PhoneNumber        Char(30)   NOT NULL,
       VillageName        Char(30)   NOT NULL,
       CONSTRAINT         MovieTheater_PK PRIMARY KEY(TheaterName),
       CONSTRAINT         MovieTheater_FK      FOREIGN KEY(VillageName)
                          REFERENCES      Village(VillageName)
);

CREATE TABLE MovieTheaterHours (
       TheaterName             Char(100)     NOT NULL,
       StartHour               Char(15)     NOT NULL,
       EndHour                 Char(15)     NOT NULL,
       CONSTRAINT              MTH_PK       PRIMARY KEY(TheaterName),
       CONSTRAINT              Theater_FK   FOREIGN KEY(TheaterName)
                               REFERENCES   MovieTheater(TheaterName)
);

CREATE TABLE Beach(
       BeachName      Char(100)    NOT NULL,
       Address        Char(100)    NOT NULL,
       VillageName    Char(30)    NOT NULL,
       CONSTRAINT     Beach_PK    PRIMARY KEY(BeachName),
       CONSTRAINT     Beach_FK  FOREIGN KEY(VillageName)
                      REFERENCES  Village(VillageName)

);

CREATE TABLE Grocery(
       GroceryName    Char(100)    NOT NULL,
       VillageName    Char(30)    NOT NULL,
       Address        Char(100)    NOT NULL,
       PhoneNumber    Char(30)    NOT NULL,
	   PRIMARY KEY(GroceryName),
       CONSTRAINT     GROCERY_FK  FOREIGN KEY(VillageName)
                      REFERENCES  Village(VillageName)

);

CREATE TABLE GroceryHours (
       GroceryName        Char(100)  NOT NULL,
       StartHour          Char(15)  NOT NULL,
       EndHour            Char(15)  NOT NULL,
       PRIMARY KEY(GroceryName),
       CONSTRAINT         GroceryHour_FK  FOREIGN KEY(GroceryName)
                          REFERENCES      Grocery(GroceryName)
);

CREATE TABLE Church (
       ChurchName     Char(100)    NOT NULL,
       Address        Char (100)   NOT NULL,
       Denomination   Char(20)    NOT NULL,
       VillageName    Char(30)    NOT NULL,
       CONSTRAINT     Church_PK   PRIMARY KEY(ChurchName),
       CONSTRAINT     Church_FK   FOREIGN KEY(VillageName)
                      REFERENCES  Village(VillageName)

);
