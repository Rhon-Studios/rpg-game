class ARancher : AActor
{
    UPROPERTY(DefaultComponent, RootComponent)
    USceneComponent SceneRoot;

    UPROPERTY(DefaultComponent)
    USkeletalMeshComponent RancherMesh;

    UPROPERTY(DefaultComponent, Attach = RancherMesh, AttachSocket = RightHand)
    UStaticMeshComponent ToolMesh;
}