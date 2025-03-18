table  50101 "StudentTable"

{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"StudentID"; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        field(2;"Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            
        }
        field(3;"Surname"; Text[50])
        {
            DataClassification = ToBeClassified;
            
        }
        field(4;"DateOfBirth"; Date)
        {
            DataClassification = ToBeClassified;
            
        }
        field(5;"Sex"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Male,Female;
            OptionCaption = 'M,F';
        }
        field(6;"Phone No"; Text[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(7;"Email"; Text[80])
        {
            DataClassification = ToBeClassified;
            
        }
        field(8;"Address"; Text[250])
        {
            DataClassification = ToBeClassified;
            
        }
        field(9;"regisDate"; Date)
        {
            DataClassification = ToBeClassified;
            
        }
        field(10;"Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Active,Inactive;
            OptionCaption = 'A,I';
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