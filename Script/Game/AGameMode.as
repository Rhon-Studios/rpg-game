class ARPGGameMode : AGameModeBase
{
    ARPGGameMode()
    {
        DefaultPawnClass = ACamera::StaticClass();
    }

    UFUNCTION(BlueprintOverride)
    void BeginPlay()
    {
        APlayerController pc = GetWorld().GetGameInstance().GetFirstLocalPlayerController();
        if (pc != nullptr)
        {

        }
    }
}