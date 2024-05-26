permissionset 50100 "CUSTOM_REWARDS_PERM"
{
    Access = Public;
    Assignable = true;
    Caption = 'Customer Rewards Permissions';

    Permissions =
        TableData "Reward Level Table" = RIMD,
        TableData "CustomerRewardsMgtSetup" = RIMD,
        TableData "Activation Code Information" = RIMD,
        page "Rewards Level List" = X,
        page "Customer Rewards Wizard" = X,
        codeunit "Customer Rewards Ext Mgt" = X,
        codeunit "Guided Experience" = X,
        codeunit "Release Sales Document" = X;



}
