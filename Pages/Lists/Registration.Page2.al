page 50009 "Registration Page2"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RegistrationTable;

    layout
    {
        area(Content)
        {
            group("Registration Information")
            {
                field("Enrollment ID"; Rec.EnrollmentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The enrollment ID';
                }


                field("Student ID"; Rec.StudentID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The student ID';
                }
                field("Course ID"; Rec.CourseID)
                {
                    ApplicationArea = All;
                    ToolTip = 'The course ID';
                }
                field("Registration Date"; Rec.RegistrationDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'The registration date';
                }
                field("Registration Status"; Rec.RegistrationStatus)
                {
                    ApplicationArea = All;
                    ToolTip = 'The registration status';
                    
                }

            }
            group("More Information")
            {
                field("Registration Method"; Rec.RegistrationMethod)
                {
                    ApplicationArea = All;
                    ToolTip = 'The registration method';
                    Importance = Additional;
                }
                field("Payment Status"; Rec.PaymentStatus)
                {
                    ApplicationArea = All;
                    ToolTip = 'The payment status';
                    Importance = Additional;
                }
                field("Discount Amount"; Rec.DiscountAmount)
                {
                    ApplicationArea = All;
                    ToolTip = 'The discount amount';
                    Importance = Additional;
                }
                // field("Registration Remarks"; Rec.RegistrationRemarks)
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'The registration remarks';
                // }
                field("EnrollmentType"; Rec.EnrollmentType)
                {
                    ApplicationArea = All;
                    ToolTip = 'The enrollment type';
                    Importance = Additional;
                }
                field("Registration Channel"; Rec.RegistrationChannel)
                {
                    ApplicationArea = All;
                    ToolTip = 'The registration channel';
                    Importance = Additional;
                }
                field("TotalFee"; Rec.TotalFee)
                {
                    ApplicationArea = All;
                    ToolTip = 'The total fee';
                    Importance = Additional;
                }
                field("Scholarship Applied"; Rec.ScholarshipApplied)
                {
                    ApplicationArea = All;
                    ToolTip = 'The scholarship applied';
                    Importance = Additional;
                }
                field("Referrer"; Rec.Referrer)
                {
                    ApplicationArea = All;
                    ToolTip = 'The referrer';
                    Importance = Additional;
                }
                field("ProcessedBy"; Rec.ProcessedBy)
                {
                    ApplicationArea = All;
                    ToolTip = 'The processed by';
                    Importance = Additional;
                }
                field("FollowUpDate"; Rec.FollowUpDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'The follow up date';
                    Importance = Additional;
                }
                field("ApprovalComments"; Rec.ApprovalComments)
                {
                    ApplicationArea = All;
                    ToolTip = 'The approval comments';
                    Importance = Additional;
                }
                field("PaymentReference"; Rec.PaymentReference)
                {
                    ApplicationArea = All;
                    ToolTip = 'The payment reference';
                    Importance = Additional;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Newregistration")

            {
                Caption = 'New Registration';
                Image = Save;
                trigger OnAction()
                begin
                    CurrPage.UPDATE(false);
                end;


            }
            action("Editregistration")
            {
                Caption = 'Edit Registration';
                Image = Save;
                trigger OnAction()
                begin
                    CurrPage.UPDATE(false);
                end;

            }
            action("Deleteregistration")
            {
                Caption = 'Delete Registration';
                Image = Delete;
                trigger OnAction()
                begin
                    CurrPage.UPDATE(false);
                end;

            }
            action("refresh")
            {
                Caption = 'Refresh';
                Image = Refresh;
                trigger OnAction()
                begin
                    CurrPage.UPDATE(false);
                end;

            }

        }
        area(Navigation)
        {
            action("GoToStudentList")
            {
                Caption = 'Go to Student List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"StudentPage2");
                end;
            }
            action("GoToCourseList")
            {
                Caption = 'Go to Course List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"CoursePage2");
                end;

            }
            action("GoToProfessorList")
            {
                Caption = 'Go to Professor List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"ProfessorPage2");
                end;
            }
            action("GoToPaymentList")
            {
                Caption = 'Go to Payment List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"PaymentPage2");
                end;
            }
            action("GoToGradeList")
            {
                Caption = 'Go to Grade List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"GradePage2");
                end;
            }
        }
    }
}