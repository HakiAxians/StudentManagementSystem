page 50010 "StudentTable2"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentTable;

    layout
    {
        area(Content)
        {
            group(Repeater)
            {
                field("Student ID"; Rec.StudentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The student number';
                }
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'The first name of the student';
                }

                field("Surname"; Rec.Surname)
                {
                    ApplicationArea = All;
                    ToolTip = 'The last name of the student';

                }
                field("Date of Birth"; Rec.DateOfBirth)
                {
                    ApplicationArea = All;
                    ToolTip = 'The date of birth of the student';
                }
                field("Sex"; Rec.Sex)
                {
                    ApplicationArea = All;
                }
                field("Phone No"; Rec."Phone No")
                {
                    ApplicationArea = All;
                    ToolTip = 'The phone number of the student';
                }
                field("Email"; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'The email address of the student';
                }
                field("Address"; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'The address of the student';
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'The registration date of the student';
                }
                field("Status"; Rec.Status)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group("Student Actions")
            {
                action("NewStudent")
                {
                    Caption = 'New Student';
                    ApplicationArea = All;
                    Image = New;
                    RunObject = Page StudentPage;
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"StudentPage");
                    end;
                        
                
                        
                    

                }
                action("EditStudent")
                {
                    Caption = 'Edit Student';
                    Image = Edit;
                    RunObject = Page StudentPage;
                    ApplicationArea = All;
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"StudentPage");
                    end;

                }
                action("DeleteStudent")
                {
                    Caption = 'Delete Student';
                    ApplicationArea = All;
                    Image = Delete;
                    trigger OnAction()
                    begin
                        Rec.DELETE;
                    end;


                }
                group("Search")
                {
                    action("AdvancedSearch")
                    {
                        Caption = 'Advanced Search';
                        ApplicationArea = All;
                        trigger OnAction()
                        begin
                            Rec.SETRANGE("Name", 'A*');
                            Rec.SETRANGE("Surname", 'A*');
                            Rec.SETRANGE("Email", 'A*');
                            Rec.SETRANGE("Address", 'A*');
                            Rec.SETRANGE("Phone No", 'A*');
                        Rec.SETFILTER("Status", 'A*');
                    end;
                    }
                }
            }
        }
        area(Processing)
        {
            group("Export/Print")
            {
                action("ExportData")
                {
                    Caption = 'Export Data';
                    Image = Export;
                    ApplicationArea = All;
                    trigger OnAction()
                    begin
                        MESSAGE('Nashta bahet ma vone');
                    end;

                }
                action("PrintList")
                {
                    Caption = 'Print List';
                    Image = Print;
                    ApplicationArea = All;
                    trigger OnAction()
                    begin
                        MESSAGE('Ndoshta behet me vone nuk idihet');
                    end;


                }
            }
        }



    }
}
