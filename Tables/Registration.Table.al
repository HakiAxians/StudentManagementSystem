table 50103 "RegistrationTable"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; EnrollmentID; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; StudentID; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(3; CourseID; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(4; RegistrationDate; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(5; RegistrationStatus; Option)
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