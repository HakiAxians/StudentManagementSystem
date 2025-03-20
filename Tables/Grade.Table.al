table 55004 GradeTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; GradeId; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }

        field(10; StudentId; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "StudentTable".StudentId;
        }

        field(20; CourseId; Integer)
        {
            TableRelation = "CourseTable".CourseId;
            DataClassification = ToBeClassified;
        }

        field(30; Grade; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(40; Date; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(45; Avarage; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; StudentId, CourseId, GradeId)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        Avarage: Codeunit StudentAverage;

    trigger OnInsert()
    begin
        Avarage.Average(Rec);
    end;

    trigger OnModify()
    begin
        Avarage.Average(Rec);
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}