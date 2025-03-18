table 55004 GradeTable
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;GradeId; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }

        field(10; StudentId; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(20; CourseId; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(30; Grade; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(40; "Grade register Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(PK; GradeId)
        {
            Clustered = true;
        }
        key(FkS;StudentId)
        {
            Clustered = false;
        }
        key(FkC;CourseId)
        {
            Clustered = false;
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