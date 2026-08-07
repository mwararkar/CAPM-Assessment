using {CapAssesment.db as Cap} from '../db/schema';

service MyService {

    @Capabilities : { Insertable : true, Readable : false }
    entity TravelService       as projection on Cap.MasterData.Travel;
    entity CustomerService     as projection on Cap.MasterData.Customer;
    entity AgencyService       as projection on Cap.MasterData.Agency;
    entity TravelStatusService as projection on Cap.MasterData.TravelStatus;

}
