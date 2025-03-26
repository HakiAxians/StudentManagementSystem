table 55003 "ProfessorTable"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; ProfessorId; Integer)
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
        // New fields:
        field(55; "Phone Number"; Text[20])
        {
            DataClassification = ToBeClassified;
            // Professor's phone number.
        }
        field(60; "Office Location"; Text[50])
        {
            DataClassification = ToBeClassified;
            // Office location or building of the professor.
        }
        field(65; "Office Hours"; Text[100])
        {
            DataClassification = ToBeClassified;
            // Details of the professor's office hours for meetings.
        }
        field(70; "Highest Degree"; Text[30])
        {
            DataClassification = ToBeClassified;
            // The highest academic degree obtained by the professor.
        }
        field(75; "Research Interests"; Text[100])
        {
            DataClassification = ToBeClassified;
            // Key research interests or topics of the professor.
        }
        field(80; Biography; Text[250])
        {
            DataClassification = ToBeClassified;
           
        }
        field(85; Department; Text[30])
        {
            DataClassification = ToBeClassified;
            
        }
        field(90; Tenured; Boolean)
        {
            DataClassification = ToBeClassified;
            
        }
        field(95; "Courses Taught"; Integer)
        {
            DataClassification = ToBeClassified;
           
        }
        field(100; "Profile Picture URL"; Text[100])
        {
            DataClassification = ToBeClassified;
            // URL to the professor's profile picture.
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
        // You can add fieldgroups here if needed.
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        // Insert trigger code here.
    end;
}
