.class public final synthetic Lio/legado/app/ui/welcome/WelcomeActivity$handlePermissionsAndAd$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/legado/app/ui/welcome/WelcomeActivity;


# direct methods
.method public synthetic constructor <init>(Lio/legado/app/ui/welcome/WelcomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/legado/app/ui/welcome/WelcomeActivity$handlePermissionsAndAd$1$$ExternalSyntheticLambda1;->f$0:Lio/legado/app/ui/welcome/WelcomeActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/legado/app/ui/welcome/WelcomeActivity$handlePermissionsAndAd$1$$ExternalSyntheticLambda1;->f$0:Lio/legado/app/ui/welcome/WelcomeActivity;

    # patched: bridge class was removed with the ad cleanup, call the access bridge directly
    invoke-static {v0}, Lio/legado/app/ui/welcome/WelcomeActivity;->access$startMainActivity(Lio/legado/app/ui/welcome/WelcomeActivity;)V

    return-void
.end method
