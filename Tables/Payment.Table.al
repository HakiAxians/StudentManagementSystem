table 55005 PaymentTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PaymentId; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(10; StudentId; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "StudentTable".StudentId;
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

        
        field(60; "Payment Reference"; Text[50])
        {
            DataClassification = ToBeClassified;
            // Unique reference number or code for the payment.
        }
        field(70; "Currency"; Code[10])
        {
            DataClassification = ToBeClassified;
            // Currency code for the payment (e.g., USD, EUR).
        }
        field(80; "Payment Note"; Text[250])
        {
            DataClassification = ToBeClassified;
            // Optional note or comment about the payment.
        }
        field(90; "Processed By"; Text[30])
        {
            DataClassification = ToBeClassified;
            // Identifier of the user who processed the payment.
        }
        field(100; "Processed Date"; Date)
        {
            DataClassification = ToBeClassified;
            // Date when the payment was processed.
        }
        field(110; "Approval Remarks"; Text[250])
        {
            DataClassification = ToBeClassified;
            // Remarks provided upon payment approval.
        }
        field(120; "Payment Type"; Text[20])
        {
            DataClassification = ToBeClassified;
            // Type of payment (e.g., Tuition, Fee, Scholarship).
        }
        field(130; "Invoice Number"; Text[30])
        {
            DataClassification = ToBeClassified;
            // Invoice number associated with the payment.
        }
        field(140; "Due Date"; Date)
        {
            DataClassification = ToBeClassified;
            // Due date for the payment.
        }
        field(150; "Discount Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            // Discount amount applied to the payment.
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
}
