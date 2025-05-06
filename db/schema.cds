namespace travel;
using{ cuid, managed} from '@sap/cds/common';
type commontype : String(50);
type suggestion : String(10);
entity Employee: cuid, managed {
    key ID   :Integer @title : 'ID';
    key name : commontype @title : 'Name';
    city     : commontype @title : 'City';
    skill : commontype;
    email    : commontype;
    yoe      : Integer @title : 'Years of Experience';
    request  : Association to many Travelrequest on request.employee = $self;
}

entity Travelrequest: cuid{
    destination: commontype;
    startdate: Date;
    Enddate: Date;
    Reason: commontype;
    Status: suggestion;
    employee: Association to Employee;
    maapproval: Association to Managerapproval;

}

entity Managerapproval :cuid{ 
    key name: commontype;
        decision: localized suggestion;
        comment: commontype;
}