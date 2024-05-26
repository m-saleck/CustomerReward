table 50102 "Reward Level Table"
{
    Caption = 'Reward Level';
    TableType = Normal;
    DataClassification = CustomerContent;

    fields
    {
        field(1; Level; Text[20])
        {
            Caption = 'Level';
            DataClassification = CustomerContent;

        }
        field(2; "Minimum Reward Points"; Integer)
        {
            Caption = 'Minimum Reward Points';
            DataClassification = CustomerContent;
            MinValue = 0;
            NotBlank = true;

            trigger OnValidate();
            var
                RewardLevel: Record "Reward Level Table";
                Temppoint: Integer;
            begin
                Temppoint := "Minimum Reward Points";
                RewardLevel.SetRange("Minimum Reward Points", Temppoint);
                if not RewardLevel.IsEmpty() then
                    Error('Minimum Reward Points must be unique');
            end;
        }
    }

    keys
    {
        key(PK; Level)
        {
            Clustered = true;
        }
        key("Minimum Reward Points"; "Minimum Reward Points") { }
    }

    trigger OnInsert()
    begin
        Validate("Minimum Reward Points");
    end;

    trigger OnModify()
    begin
        Validate("Minimum Reward Points");
    end;

}