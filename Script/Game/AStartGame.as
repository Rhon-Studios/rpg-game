class AStartGame : AActor
{
    AMainHUD MainHUD;

    UFUNCTION(BlueprintOverride)
    void BeginPlay()
    {
        APlayerController pc = GetWorld().GameInstance.GetFirstLocalPlayerController();

        MainHUD = Cast<AMainHUD>(pc.GetHUD());
        MainHUD.StartingGame();
    }
}