class AMainHUD : AHUD
{
    UPROPERTY()
    TSubclassOf<UBattle> BattleWidgetClass;

    UBattle UBattle;

    APlayerController MenuController;

    UFUNCTION()
    void StartingGame()
    {
        MenuController = GetOwningPlayerController();
        auto gs = Cast<AGameStateBase>(GetWorld().GetGameState());

        UBattle = Cast<UBattle>(WidgetBlueprint::CreateWidget(BattleWidgetClass, MenuController));
        UBattle.AddToViewport();
        UBattle.SetVisibility(ESlateVisibility::Visible);
    }
}