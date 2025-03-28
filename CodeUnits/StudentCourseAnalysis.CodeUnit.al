codeunit 55130 StudentCourseAnalysis
{
    procedure GetStudentWithMostCourses()
    var
        CoursesRec: Record "CourseTable";
        StudentCount: Integer;
        MostCoursesStudent: Integer;
        MaxCount: Integer;
    begin
        MaxCount := 0;
        MostCoursesStudent := 0;

        // Kërko të gjitha lidhjet mes studentëve dhe kurseve
        if CoursesRec.FindSet() then
            repeat
            if CoursesRec.StudentId<>0 then begin
                // Numëroni kurset për çdo student
                CoursesRec.Get(CoursesRec.StudentID);
                StudentCount := CoursesRec.Count;

                // Përshtat studentin me numrin më të madh të kurseve
                if StudentCount > MaxCount then begin
                    MaxCount := StudentCount;
                    MostCoursesStudent := CoursesRec.StudentId;
                end;
            end;
            until CoursesRec.Next() = 0;

        // Kthe studentin me më shumë kurse dhe numrin e kurseve
        Message('The student with the most courses has id: %1 and the number of courses is: %2',MostCoursesStudent,MaxCount);
    end;
}