
page 50010 "StudentPage2"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = StudentTable;

    layout
    {
        area(Content)
        {
            group("Student Information")
            {
                field("Student ID"; Rec.StudentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The student number';
                      trigger OnValidate()
                    begin
                        if (Rec.StudentID) < 1 then
                            Error('Student ID must be between 1 and 100');
                        if (Rec.StudentID) > 100 then
                            Error('Student ID must be between 1 and 100');
                    end;
                }
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'The first name of the student';
                    ShowMandatory = true;
                }
                field("Surname"; Rec.Surname)
                {
                    ApplicationArea = All;
                    ToolTip = 'The last name of the student';
                    ShowMandatory = true;
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
                    ShowMandatory = true;
                }
                field("Email"; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'The email address of the student';
                    ShowMandatory = true;
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
            group("More information")
            {
                field("Middle Name"; Rec."Middle Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'The middle name of the student';
                        Importance = Additional;
                }
                field("Nationality"; Rec."Nationality")
                {
                    ApplicationArea = All;
                        Importance = Additional;
                }
                field("Emergency Contact Name"; Rec."Emergency Contact Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'The name of the emergency contact';
                        Importance = Additional;
                }
                field("Emergency Contact Phone"; Rec."Emergency Contact Phone")
                {
                    ApplicationArea = All;
                    ToolTip = 'The phone number of the emergency contact';
                        Importance = Additional;
                }
                field("Program"; Rec.Program)
                {
                    ApplicationArea = All;
                        Importance = Additional;
                }
                field("Minor"; Rec.Minor)
                {
                    ApplicationArea = All;
                        Importance = Additional;
                }
                field("Year/level"; Rec."Year/level")
                {
                    ApplicationArea = All;
                        Importance = Additional;
                }
                field("GPA"; Rec.GPA)
                {
                    ApplicationArea = All;
                        Importance = Additional;
                }
                field("Advisor"; Rec."Advisor")
                {
                    ApplicationArea = All;
                        Importance = Additional;
                }
                field("Notes"; Rec."Notes")
                {
                    ApplicationArea = All;
                        Importance = Additional;
                }
            }
        }
        area(FactBoxes){
        part("Student Photo"; "Customer Picture")
        {   
                Caption = 'Student Photo';
                ApplicationArea = Basic, Suite;
        }
        // part("Transcript"; "Business Chart Part")
        // {
        //         Caption = 'Transcript';
        // }
        

        }
    }

    actions
    {
        area(Promoted)
        {
            actionref(GetConfirm;"ConfirmChanges")
            {

            }
            actionref(GetScheduleMeeting;"ScheduleMeeting")
            {
                
            }
            actionref(GetCheckStatus; "CheckStatus")
            {}

        }
        area(Processing)
        {
            group("Student Actions")
            {
                action("NewStudent")
                {
                    Caption = 'New Student';
                    ApplicationArea = All;
                    Image = New;
                    RunObject = Page "StudentPage";
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"StudentPage");
                    end;
                }
                action("EditStudent")
                {
                    Caption = 'Edit Student';
                    Image = Edit;
                    RunObject = Page "StudentPage";
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
                       if confirm ('Are you sure u wanna do this') then
                        Rec.DELETE;
                    end;
                }
                 action("ScheduleMeeting")
            {
                Caption = 'Schedule Meeting';
                Image = Calendar;
                ApplicationArea = All;

               
                // Promoted = true;                  
                // PromotedCategory = Process;       
                // PromotedIsBig = false;          
                  
                              

                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"Meeting Scheduler");
                end;
//             }
//             action("ConfirmChanges")
//             {
//                     Caption = 'Confirm';
//     Image = Approve;
//     ApplicationArea = All;
//     trigger OnAction()
//     begin
//         if CONFIRM('Do you want to confirm these changes?', false) then begin
           
//             Rec.Modify(true);

           
//             PAGE.RUN(PAGE::"StudentPage", Rec);

//         end
//         else begin
//             MESSAGE('Operation cancelled.');
//         end;
//     end;
            
// }
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
                        Rec.SETFILTER("Phone No", '>=0');
                        Rec.SETFILTER("Status", 'A*');
                    end;
                }
            }
        }
        }
        area(Creation)
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
            action("Refresh")
            {
                Caption = 'Refresh';
                Image = Refresh;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    CurrPage.UPDATE(false);
                end;
            }
        }
        area(Navigation)
        {
            action("GoToRegistrationList")
            {
                Caption = 'Go to Registration List';
                Image = Camera;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Registration Page2");
                end;
            
            }
            action("GoToProfessorList")
            {
                Caption = 'Go to Professor List';
                Image = Camera;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"ProfessorPage2");
                end;
            }
            action("GoToPaymentList")
            {
                Caption = 'Go to Payment List';
                Image = Camera;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"PaymentPage2");
                end;
            }
            action("GoToCourseList")
            {
                Caption = 'Go to Course List';
                Image = Camera;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"CoursePage2");
                end;
            }
            action("GoToGradeList")
            {
                Caption = 'Go to Grade List';
                Image = Camera;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"GradePage2");
                end;
            }
            action("ConfirmChanges")
{
    Caption = 'Confirm';
    Image = Approve;
    ApplicationArea = All;
    trigger OnAction()
    begin
        if CONFIRM('Do you want to confirm these changes?', false) then begin
            // 1. Save the current record
            Rec.Modify(true);

            // 2. Open another page, e.g., the Student Card
            PAGE.RUN(PAGE::"StudentPage", Rec);
        end else begin
            MESSAGE('Operation cancelled.');
        end;
    end;
}
//  action("CheckStatus")
//             {
//                 Caption = 'Check Status';
//                 Image = View;
//                 ApplicationArea = All;
//                 trigger OnAction()
//                 var
//                     RegRec: Record "RegistrationTable";
//                     PaymentRec: Record "PaymentTable";
//                     StatusMessage: Text[250];
//                 begin


//                     RegRec.SETRANGE(StudentID, Rec.StudentID);
//                     RegRec.SETRANGE(PaymentStatus, RegRec.PaymentStatus);
//                     if RegRec.FindFirst then begin

//                         PaymentRec.SETRANGE(StudentID, Rec.StudentID);
//                         PaymentRec.SETRANGE(Status, PaymentRec.Status);
//                         if PaymentRec.FindFirst then
//                             StatusMessage := 'The student has an active course and payment is completed.'
//                         else
//                             StatusMessage := 'The student has an active course, but payment is not completed.';
//                     end else begin
//                         StatusMessage := 'The student does not have an active course.';
//                     end;
//                     MESSAGE(StatusMessage);
//                 end;
//             }
action("CheckStatus")
{
    Caption = 'Check Status';
    Image = View;
    ApplicationArea = All;
    trigger OnAction()
    var
        RegRec: Record "RegistrationTable";
        PaymentRec: Record "PaymentTable";
        StatusMessage: Text[250];
    begin
       
         RegRec.SETRANGE(StudentID, Rec.StudentID);
         RegRec.SETRANGE("RegistrationStatus", Enum::StatusEnum::Active);
        if RegRec.FindSet() then repeat
            Message(RegRec.CourseName);
    
        until RegRec.Next() = 0;

           PaymentRec.SETRANGE(StudentID, Rec.StudentID);
   
        if PaymentRec.FindLast() then begin
            Message(Format(PaymentRec.PaymentDate));
              Message(Format(PaymentRec.Amount));
        end;
     
    end;
    

}


        }
       
}

            }
        
    

