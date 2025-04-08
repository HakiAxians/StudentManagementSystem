page 50005 "RegistrationPage"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RegistrationTable;

    layout
    {
        area(Content)
        {
            repeater(Registration)
            {
                field("Enrollment ID"; Rec.EnrollmentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The enrollment ID';
                    Editable = false;
                }


                field("Student ID"; Rec.StudentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The student ID';
                    Visible = false;
                    trigger OnValidate()
                    begin
                        //
                        //nbaz te primary keys se studentit shtoje vleren korrekte tek Rec.Name ose student name
                        //

                        // if StudentRec.Get(Rec.StudentID) then begin

                        //     Rec.Name := StudentRec.Name;
                        // end else
                        //     Error('Student not found for Student ID: %1', Rec.StudentID);
                    end;
                }
                field("Student Name"; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Student Name';
                    ToolTip = 'The student name';
                }
                field("Course ID"; Rec.CourseID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The course ID';
                    Visible = false;
                }
                field("Course Name"; Rec.CourseName)
                {
                    ApplicationArea = All;
                    Caption = 'Course Name';
                    ToolTip = 'The course name';
                }
                field("Registration Date"; Rec.RegistrationDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'The registration date';
                    trigger OnValidate()
                    
                    begin
                    EventPublisher.OnStudentAssignedToCourse(Rec.Name, Rec.CourseName);
                    end;
                }
                field("Registration Status"; Rec.RegistrationStatus)
                {
                    ApplicationArea = All;
                    ToolTip = 'The registration status';
                }

            }
        }
    }

    actions
    {
        area(Promoted)
        {
            actionref(Arbi; "More Details")
            {

            }
            actionref(Hakia; "Delete")
            {

            }
            actionref(PaymentAct; Payment) { }
        }
        area(Processing)
        {

            action("Save")
            {
                Caption = 'Save';
                Image = Save;
                trigger OnAction()
                begin
                    CurrPage.UPDATE(false);
                end;

            }
            action("Cancel")
            {
                Caption = 'Cancel';
                Image = Cancel;
                trigger OnAction()
                begin
                    CurrPage.Close();
                end;

            }
            action("Student Enrolled")

            {
                ApplicationArea = All;
                RunObject = query "StudentEnrollemntQuery";

                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Registration Page2");
                end;
            }

        }
        area(Navigation)
        {
            action("Delete")
            {
                ApplicationArea = All;
                Caption = 'Delete';
                Image = Delete;
                // Promoted = true;
                // PromotedCategory = Process;
                // PromotedIsBig = false;
                trigger OnAction()
                begin
                    Rec.Delete(true);
                end;
            }
            action("More Details")
            {
                ApplicationArea = All;
                Caption = 'More Details';
                Image = ViewDetails;
                // Promoted = true;
                // PromotedCategory = Process;
                // PromotedIsBig = false;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Registration Page2", Rec);
                end;
            }
            action(Payment)
            {
                ApplicationArea = All;
                Caption = 'Payment';
                Image = Payment;
                RunObject = page PaymentPage2;
                trigger OnAction()
                begin

                end;
            }
        }


    }
        var     
        EventPublisher: Codeunit "CourseManagment";
}