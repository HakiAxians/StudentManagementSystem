table 50111 "Log Registrations"
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
        }
        field(22; Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(30; CourseID; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(32; CourseName; Text[50])
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; EnrollmentID)
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