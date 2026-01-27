class UGameInputs : UEnhancedInputComponent
{

    UPROPERTY(Category = "Inputs")
    UInputMappingContext imctx;

    UPROPERTY(Category = "Inputs")
    UInputAction Click;

    UPROPERTY(Category = "Inputs")
    UInputAction Interact;

    UPROPERTY(Category = "Inputs")
    UInputAction Move;

    UPROPERTY(Category = "Inputs")
    UInputAction Pause;

    AGameController controller;

    UFUNCTION(BlueprintOverride)
    void BeginPlay()
    {
        controller = Cast<AGameController>(GetOwner());
        controller.PushInputComponent(this);

        UEnhancedInputLocalPlayerSubsystem InputSubsys = UEnhancedInputLocalPlayerSubsystem::Get(controller);
        InputSubsys.AddMappingContext(imctx, Priority = 1, Options = FModifyContextOptions());
    }
}