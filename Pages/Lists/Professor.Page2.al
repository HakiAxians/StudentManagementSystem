page 55012 "ProfessorPage2"
{
    PageType = list;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ProfessorTable;

    layout
    {
        area(Content)
        {
            group("Professor Information")
            {
                field(ProfessorId; Rec.ProfessorId)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(SurName; Rec.SurName)
                {
                    ApplicationArea = All;
                }
                field("Field of Specialization"; Rec."Field of Specialization")
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field("Employment Date"; Rec."Employment Date")
                {
                    ApplicationArea = All;
                }
                field("Office Location"; Rec."Office Location")
                {
                    ApplicationArea = All;
                }
            }
            group("More Information")
            {
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }

                field("Office Hours"; Rec."Office Hours")
                {
                    ApplicationArea = all;
                    Importance = Additional;

                }
                field("Highest Degree"; Rec."Highest Degree")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field("Biography"; Rec."Biography")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field("Research Interests"; Rec."Research Interests")
                {
                    Importance = Additional;
                    ApplicationArea = All;
                }
                field("Department"; Rec."Department")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field("Courses Taught"; Rec."Courses Taught")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field("Profile Picture URL"; Rec."Profile Picture URL")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("NewProfessor")
            {
                ApplicationArea = All;
                Caption = 'New Professor';
                RunObject = Page "ProfessorPage";
                trigger OnAction()
                begin
                    Rec.INIT();

                end;

            }
            action("EditProfessor")
            {
                ApplicationArea = All;
                Caption = 'Edit Professor';
                RunObject = Page "ProfessorPage";
                trigger OnAction()
                begin
                    Rec.Modify();
                end;
            }
            action("DeleteProfessor")
            {
                ApplicationArea = All;
                Caption = 'Delete Professor';
                RunObject = Page "ProfessorPage";
                trigger OnAction()
                begin
                    CurrPage.Update();
                    Rec.DELETE(true);
                    Message('Kjo vjen me pas si pasoj e mosintegrimit hehe')
                end;
            }
            action("Refreshlist")
            {
                ApplicationArea = All;
                Caption = 'Refresh';
                trigger OnAction()
                begin
                    CurrPage.UPDATE(true);
                end;
            }
        }
        area(Creation)
        {
            group("Contact")
            {
                action("SendEmail")
                {
                    ApplicationArea = All;
                    Caption = 'Send Email';
                    Image = Email;
                    trigger OnAction()
                    begin

                        MESSAGE('Calm before the storm');
                    end;
                }
            }

        }
        area(Navigation)
        {
            action("GoToStudentList")
            {
                ApplicationArea = All;
                Caption = 'Go to Student List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"StudentPage2");
                end;
            }
            action("GoToCourseList")
            {
                ApplicationArea = All;
                Caption = 'Go to Course List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"CoursePage2");
                end;
            }
            action("GoToRegistrationList")
            {
                ApplicationArea = All;
                Caption = 'Go to Registration List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Registration Page2");
                end;
            }
            action("GoToPaymentList")
            {
                ApplicationArea = All;
                Caption = 'Go to Payment List';
                Image = Camera;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"PaymentPage2");
                end;
            }
            action("GoToGradeList")
            {
                ApplicationArea = All;
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