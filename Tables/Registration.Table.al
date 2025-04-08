table 50003 "RegistrationTable"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; EnrollmentID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(20; StudentID; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "StudentTable".StudentID;
        }
        field(22; Name; Text[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "StudentTable".Name;
        }
        field(30; CourseID; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "CourseTable".CourseID;
        }
        field(32; CourseName; Text[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "CourseTable".CourseName;
        }
        field(40; RegistrationDate; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50; RegistrationStatus; Enum StatusEnum)
        {
            DataClassification = ToBeClassified;
        }


        field(60; RegistrationMethod; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Online,"In-Person";
            OptionCaption = 'Online, In-Person';


        }
        field(62; PaymentStatus; Enum PaymentStatusEnum)
        {
            DataClassification = ToBeClassified;

        }
        field(64; DiscountAmount; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(66; RegistrationRemarks; Text[250])
        {
            DataClassification = ToBeClassified;

        }
        field(68; EnrollmentType; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Regular,"Special","Audit";
            OptionCaption = 'Regular, Special, Audit';

        }
        field(70; RegistrationChannel; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Website,Event,Referral;
            OptionCaption = 'Website, Event, Referral';

        }
        field(72; TotalFee; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(74; ScholarshipApplied; Boolean)
        {
            DataClassification = ToBeClassified;

        }
        field(76; Referrer; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(78; ProcessedBy; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(80; FollowUpDate; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(82; ApprovalComments; Text[250])
        {
            DataClassification = ToBeClassified;

        }
        field(84; PaymentReference; Text[50])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; EnrollmentID, Name)
        {
            Clustered = true;
        }
        key(SK; StudentID, CourseID)
        {
            Clustered = false;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here if needed.
    }

    var
    // EventPublisher: Codeunit "CourseManagment";

    trigger OnInsert()
    begin
        // BindSubscription(CourseAssigmentLogger);
        // OnStudentAssignedToCourse(Rec);
        // UnbindSubscription(CourseAssigmentLogger);
    end;

    trigger OnModify()
    begin
    end;

    trigger OnDelete()
    begin
    end;

    trigger OnRename()
    begin
    end;
    var 
    // CourseAssigmentLogger: Codeunit "CourseAssigmentLogger";
    // [IntegrationEvent(false, false)]
    // procedure OnStudentAssignedToCourse(Rec: Record "RegistrationTable")
    // begin
    // end;

}
