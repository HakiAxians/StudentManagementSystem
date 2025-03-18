table 55003 ProfessorTable
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;ProfessorId; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(10; Name; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(20; SurName; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(30; "Field of Specialization"; Text[25])
        {
            DataClassification = ToBeClassified;
        }

        field(35; Email; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(40; "Employment Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50; Status; Enum StatusEnum)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(PK; ProfessorId)
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