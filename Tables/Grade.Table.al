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

        field(22; CourseName; Text[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "CourseTable".CourseName;
        }

        field(23; Name; Text[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "StudentTable".Name;
        }
        field(25; Email; Text[35])
        {
            DataClassification = ToBeClassified;
            TableRelation = "StudentTable".Email;
        }

        field(30; Grade; Integer)
        {   
            DataClassification = ToBeClassified;
            MinValue = 5;
            MaxValue = 10;
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
        SendEmail: Codeunit GradeEmailCodeunit;

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