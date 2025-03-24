report 55117 CourseReport
{
    ApplicationArea = All;
    Caption = 'CourseReport';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'CourseReport.rdlc';
    DefaultLayout = Rdlc;
    dataset
    {
        dataitem(CourseTable;CourseTable)
        {
            column(CourseName;CourseName)
            {}   
            column(CourseDescription;CourseDescription){}
            
            column(Credit;Credit)
            {}

            column(CourseStartDate;CourseStartDate)
            {}
            column(CourseEndDate;CourseEndDate)
            {}

            
            }
    }
    
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }


}