table  50000 "StudentTable"

{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10;"StudentID"; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        field(20;"Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            
        }
        field(30;"Surname"; Text[50])
        {
            DataClassification = ToBeClassified;
            
        }
        field(40;"DateOfBirth"; Date)
        {
            DataClassification = ToBeClassified;
            
        }
        field(50;"Sex"; Enum SexEnum)
        {
            DataClassification = ToBeClassified;
        }
        field(60;"Phone No"; Text[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(70;"Email"; Text[80])
        {
            DataClassification = ToBeClassified;
            
        }
        field(80;"Address"; Text[250])
        {
            DataClassification = ToBeClassified;
            
        }
        field(90;"Registration Date"; Date)
        {
            DataClassification = ToBeClassified;
            
        }
        field(100;"Status"; Enum StatusEnum)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(StudentID; StudentID)
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