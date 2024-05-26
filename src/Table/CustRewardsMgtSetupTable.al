table 50101 "CustomerRewardsMgtSetup"
{
    Caption = 'Customer Rewards Mgt. Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = CustomerContent;
        }

        field(2; "Cust. Rew. Ext. Mgt. Cod. ID"; Integer)
        {
            Caption = 'Customer Rewards Ext. Mgt. Codeunit ID';
            DataClassification = CustomerContent;
            TableRelation = "CodeUnit Metadata".ID;
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}