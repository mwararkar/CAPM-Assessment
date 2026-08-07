namespace CapAssesment.db;

using {
    Currency,
    Language
} from '@sap/cds/common';

context MasterData {

    entity Travel {
        key TravelID      : String(30);
            AgencyID      : String(30);
            CustomerID    : String(30);
            BeginDate     : Date;
            EndDate       : Date;
            Description   : String(256);
            BookingFee    : Decimal(13, 2);
            TotalPrice    : Decimal(13, 2);
            CurrencyCode  : Currency;
            Status        : String(1);
            LastChangedAt : DateTime;
            Status_travel : Association to TravelStatus on Status_travel.TravelStatus = $self.Status
    }

    entity Agency {
        key AgencyId   : String(30);
            AgencyName : String(30);
            Street     : String(50);
            PostalCode : String(15);
            City       : String(15);
            Country    : String(12);
            Phone      : String(30);
            Email      : String(50);
            WebAdd     : String(50);
    //Country
    }

    entity Customer {
        key CustomerId  : String(30);
            FirstName   : String(40);
            LastName    : String(40);
            Title       : String(10);
            Street      : String(60);
            PostalCode  : String(10);
            City        : String(40);
            CountryCode : String(3);
            PhoneNumber : String(30);
            EmailAddr   : String(256);
    //Country
    }

    entity TravelStatus {
        key TravelStatus : String(1);
        key Language     : Language;
            Text         : String(1024);
    }

}
