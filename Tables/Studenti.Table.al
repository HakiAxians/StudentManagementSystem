table 50100 "Students"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; "First Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Last Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Date of Birth"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Email"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }
}