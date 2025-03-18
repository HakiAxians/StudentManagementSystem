table 50102 "CourseTable"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "CourseID"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(20; "CourseName"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(30; "CourseDescription"; Text[250])
        {
            DataClassification = ToBeClassified;

        }
        field(40; "Credit"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(50; "CourseStartDate"; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(60; "CourseEndDate"; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(70; "rate"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(80; "Type of Course"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Online,Site,Hybrid;
            OptionCaption = 'O,S,H';
            // Mund te nderhyj me enum
        }

    }


    keys
    {
        key(CourseID; CourseID)
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