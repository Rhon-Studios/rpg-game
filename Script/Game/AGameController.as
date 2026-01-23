class AAGameController : APlayerController
{
    AMainHUD MainHUD;

    UFUNCTION(BlueprintOverride)
    void BeginPlay()
    {
        MainHUD = Cast<AMainHUD>(GetHUD());
    }
}