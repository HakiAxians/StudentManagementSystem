table 55005 PaymentTable
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;PaymentId; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }

        field(10; StudentId; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(20; Amount; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(30; PaymentDate; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(40; PaymentMethod; Enum PaymentMethodEnum)
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
        key(PK; PaymentId)
        {
            Clustered = true;
        }
        key(FkS; StudentId)
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