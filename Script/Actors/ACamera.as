class ACamera : APawn
{
    UPROPERTY(DefaultComponent, RootComponent)
    UCameraComponent Camera;

    ARancher Rancher;

    UFUNCTION(BlueprintOverride)
    void BeginPlay()
    {
        if (Rancher != nullptr)
        {
        }
        else
        {
            Print("There is no rancher");
        }
    }
}