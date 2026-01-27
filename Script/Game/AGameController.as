class AGameController : APlayerController
{
    ACamera Camera;
    AMainHUD MainHUD;

    UFUNCTION(BlueprintOverride)
    void BeginPlay()
    {
        Camera = Cast<ACamera>(GetControlledPawn());
        MainHUD = Cast<AMainHUD>(GetHUD());
    }
}