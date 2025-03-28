page 54000 "PaymentPage2"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PaymentTable;

    layout
    {
        area(Content)
        {
            group("Payment")
            {
                field(PaymentId; Rec.PaymentId)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(StudentId; Rec.StudentId)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    MinValue = 0.00;
                }
                field(PaymentDate; Rec.PaymentDate)
                {
                    ApplicationArea = All;
                }
                field(PaymentMethod; Rec.PaymentMethod)
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            group("Payment Actions")
            {
                action("Newpayment")
                {
                    ApplicationArea = All;
                    Caption = 'New Payment';
                    Image = New;
                    RunObject = page "PaymentPage";
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"PaymentPage");
                    end;
                }
                action("Editpayment")
                {
                    ApplicationArea = All;
                    Caption = 'Edit Payment';
                    Image = Edit;
                    RunObject = page "PaymentPage";
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"PaymentPage");
                    end;
                }
                action("Deletepayment")
                {
                    ApplicationArea = All;
                    Caption = 'Delete Payment';
                    Image = Delete;
                    RunObject = page "PaymentPage";
                    trigger OnAction()
                    begin
                        PAGE.RUN(PAGE::"PaymentPage");
                    end;
                }

            }
            action("Refresh")
            {
                ApplicationArea = All;
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
                ApplicationArea = All;
                Caption = 'Go To Student List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"StudentPage2");
                end;
            }
            action("GoToCourseList")
            {
                ApplicationArea = All;
                Caption = 'Go To Course List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"CoursePage2");
                end;
            }
            action("GoToRegistrationList")
            {
                ApplicationArea = All;
                Caption = 'Go To Registration List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"Registration Page2");
                end;
            }
            action("GoToProfessorList")
            {
                ApplicationArea = All;
                Caption = 'Go To Professor List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"ProfessorPage2");
                end;
            }
            action("GoToGradeList")
            {
                ApplicationArea = All;
                Caption = 'Go To Grade List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.RUN(PAGE::"GradePage2");
                end;
            }





        }
    }



}