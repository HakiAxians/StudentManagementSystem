table 50000 "StudentTable"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10; "StudentID"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(15; FileName; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(18; SheetName; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(20; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(25; "Middle Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            // Student's middle name.
        }
        field(30; "Surname"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(40; "DateOfBirth"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50; "Sex"; Enum SexEnum)
        {
            DataClassification = ToBeClassified;
        }
        field(55; "Nationality"; Text[30])
        {
            DataClassification = ToBeClassified;
            // Student's nationality.
        }
        field(60; "Phone No"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(70; "Email"; Text[35])
        {
            DataClassification = ToBeClassified;
        }
        field(80; "Address"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(85; "Emergency Contact Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            // Name of the emergency contact.
        }
        field(90; "Emergency Contact Phone"; Text[20])
        {
            DataClassification = ToBeClassified;
            // Phone number of the emergency contact.
        }
        field(100; "Registration Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(105; "Program"; Text[50])
        {
            DataClassification = ToBeClassified;
            // Student's academic program or major.
        }
        field(110; "Minor"; Text[50])
        {
            DataClassification = ToBeClassified;
            // Student's minor field of study.
        }
        field(115; "Year/Level"; Integer)
        {
            DataClassification = ToBeClassified;
            // Student's current year or level.
        }
        field(120; "GPA"; Decimal)
        {
            DataClassification = ToBeClassified;
            // Student's grade point average.
        }
        field(130; "Status"; Enum StatusEnum)
        {
            DataClassification = ToBeClassified;
        }
        field(135; Average; Decimal)
        {
            // Student's average grade (if used separately from GPA).
        }
        field(140; "Scholarship Status"; Boolean)
        {
            DataClassification = ToBeClassified;
            // Indicates if the student is on a scholarship.
        }
        field(145; "Extracurricular Activities"; Text[100])
        {
            DataClassification = ToBeClassified;
            // List of extracurricular activities.
        }
        field(150; "Advisor"; Text[50])
        {
            DataClassification = ToBeClassified;
            // Academic advisor assigned to the student.
        }
        field(155; "Notes"; Text[250])
        {
            DataClassification = ToBeClassified;
            // Additional remarks or comments about the student.
        }
        field(160; "Student Picture"; Media)
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key("PrimaryKey"; "StudentID", "Name")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        fieldgroup("General"; "StudentID", "Name", "Middle Name", "Surname")
        {
        }
        fieldgroup("PersonalDetails"; "DateOfBirth", "Sex", "Nationality")
        {
        }
        fieldgroup("ContactInfo"; "Phone No", "Email", "Address", "Emergency Contact Name", "Emergency Contact Phone")
        {
        }
        fieldgroup("AcademicInfo"; "Registration Date", "Program", "Minor", "Year/Level", "GPA", "Status", Average)
        {
        }
        fieldgroup("AdditionalInfo"; "Scholarship Status", "Extracurricular Activities", "Advisor", "Notes")
        {
        }
    }
    
    var
        Avarage: Codeunit StudentAverage;
        Validation: Codeunit StudentRegistration;
    
    trigger OnInsert()
    begin
        Validation.RegisterStudent(Rec);
    end;
    
    trigger OnModify()
    begin
        Validation.RegisterStudent(Rec);
    end;
    
    trigger OnDelete()
    begin
        // Code for OnDelete trigger.
    end;
    
    trigger OnRename()
    begin
        // Code for OnRename trigger.
    end;
}
