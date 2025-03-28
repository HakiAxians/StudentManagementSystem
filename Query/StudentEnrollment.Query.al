query 55012 StudentEnrollemntQuery
{
    Caption = 'Student Enrollment Query';
    QueryType = Normal;
    QueryCategory = 'RegistrationTable';
    
    elements
    {
        dataitem(StudentTable;StudentTable)
        {
            column(StudentID;StudentID)
            {
                
            }
            column(StudentName;Name)
            {
                
            }
            dataitem(RegistrationTable;RegistrationTable)
            {
                DataItemLink=StudentID=StudentTable.StudentID;
                SqlJoinType=FullOuterJoin;
                column(EnrollmentID;EnrollmentID)
                {
                    
                }
                column(CourseName;CourseName)
                {
                    
                }
                column(RegistrationDate;RegistrationDate)
                {
                    
                }
                column(RegistrationStatus;RegistrationStatus)
                {
                    
                }
            }
        }
    }
    

    trigger OnBeforeOpen()
    begin
        
    end;
}