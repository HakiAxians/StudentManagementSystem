table 55123 GradeDetailsTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; GradeDetailId; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }

        field(3; Grade; Integer)
        {
            CalcFormula = sum("GradeTable"."Grade" where("GradeId" = field("GradeDetailId")));;
            FieldClass=FlowField;
        }

        field(4; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; GradeDetailId)
        {
            Clustered = true;
        }
    }
}