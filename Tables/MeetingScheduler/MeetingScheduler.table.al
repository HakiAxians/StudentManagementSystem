table 50150 Meeting
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Meeting ID"; Code[20])
        {
            DataClassification = SystemMetadata;
            Caption = 'Meeting ID';
        }
        field(2; "Student ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Student ID';
            TableRelation = StudentTable."StudentID";
        }
        field(3; "Meeting Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Meeting Date';
        }
        field(4; "Start Time"; Time)
        {
            DataClassification = CustomerContent;
            Caption = 'Start Time';
        }
        field(5; "End Time"; Time)
        {
            DataClassification = CustomerContent;
            Caption = 'End Time';
        }
        field(6; "Subject"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Subject';
        }
        field(7; "Location"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Location';
        }
        field(8; "Notes"; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Notes';
        }
    }
    

    keys
    {
        key(PK; "Meeting ID")
        {
            Clustered = true;
        }
    }
}
