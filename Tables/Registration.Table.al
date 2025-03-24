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