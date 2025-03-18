table 50102 "CourseTable"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"CourseID"; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        field(2;"CourseName"; Text[50])
        {
            DataClassification = ToBeClassified;
            
        }
        field(3;"CourseDescription"; Text[250])
        {
            DataClassification = ToBeClassified;
            
        }
        field(4;"Credit"; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        field(5;"CourseStartDate"; Date)
        {
            DataClassification = ToBeClassified;
            
        }
        field(6;"CourseEndDate"; Date)
        {
            DataClassification = ToBeClassified;
            
        }
        field(7;"rate";Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        field(8;"Type of Course"; Option)
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