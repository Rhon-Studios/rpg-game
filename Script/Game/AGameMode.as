class ARPGGameMode : AGameModeBase
{

    UFUNCTION(BlueprintOverride)
    void BeginPlay()
    {
        APlayerController pc = GetWorld().GetGameInstance().GetFirstLocalPlayerController();
        if (pc != nullptr)
        {

        }
    }
}