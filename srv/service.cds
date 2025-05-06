using travel from '../db/schema';

service TravelService {
    entity Employee  as projection on travel.Employee;
    entity Travelrequest as projection on travel.Travelrequest;
    entity ManagerApproval as projection on travel.ManagerApproval;
}