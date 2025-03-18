table 50003 "RegistrationTable"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; EnrollmentID; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(20; StudentID; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(30; CourseID; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(40; RegistrationDate; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(50; RegistrationStatus; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Active,Inactive;
            OptionCaption = 'A,I';
        }
    }

    keys
    {
        key(EnrollmentID; EnrollmentID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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

}