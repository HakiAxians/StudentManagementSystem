page 55124 RollCenterPage
{
    PageType = RoleCenter;
    ApplicationArea = All;
    
    layout
    {
        area(RoleCenter)
        {
            part(Headline; Headline)
            {
                ApplicationArea = All;
            }
            part("Student Page"; RoleCenterPart)
            {
                Caption = 'Student Management System';
                ApplicationArea = All;
            }
        }
    }
    
    actions
    {
        area(Sections)
        {
            group(Pages)
            {
            action(Students)
            {
                ApplicationArea = All;
                RunObject = Page "StudentPage";
            }
            action(Grades)
            {
                ApplicationArea = All;
                RunObject = Page "ProfessorPage";
            }
            action(Courses)
            {
                ApplicationArea = All;
                RunObject = Page "CoursePage";
            }
            action(Registration)
            {
                ApplicationArea = All;
                RunObject = Page "RegistrationPage";
            }
            action(Payments)
            {
                ApplicationArea = All;
                RunObject = Page "PaymentPage";
            }
            action(Professor)
            {
                ApplicationArea = All;
                RunObject = Page "ProfessorPage";
            }
        }
    }
    area(Creation){
            action(StudentsList)
            {
                ApplicationArea = All;
                Caption = 'Students List';
                RunObject = Page "StudentPage2";
            }
            action(GradesList)
            {
                ApplicationArea = All;
                Caption = 'Grades List';
                RunObject = Page "ProfessorPage2";
            }
            action(CoursesList)
            {
                ApplicationArea = All;
                Caption = 'Courses List';
                RunObject = Page "CoursePage2";
            }

            action(RegistrationList)
            {
                ApplicationArea = All;
                Caption = 'Registration List';
                RunObject = Page "Registration Page2";
            }
            action(PaymentsList)
            {
                ApplicationArea = All;
                Caption = 'Payments List';
                RunObject = Page "PaymentPage2";
            }
            action(ProfessorList)
            {
                ApplicationArea = All;
                Caption = 'Professors List';
                RunObject = Page "ProfessorPage2";
            }
    }
    }
    
    var
        myInt: Integer;
}