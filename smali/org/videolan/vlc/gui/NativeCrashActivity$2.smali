.class Lorg/videolan/vlc/gui/NativeCrashActivity$2;
.super Ljava/lang/Object;
.source "NativeCrashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/NativeCrashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/NativeCrashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$2;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Build date: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "builddate.txt"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Lorg/videolan/vlc/util/Util;->readAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "buildDate":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Builder: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "builder.txt"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Lorg/videolan/vlc/util/Util;->readAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "builder":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Revision: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "revision.txt"

    const-string v6, "Unknown revision"

    invoke-static {v5, v6}, Lorg/videolan/vlc/util/Util;->readAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "revision":Ljava/lang/String;
    new-instance v0, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;

    iget-object v4, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$2;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    invoke-direct {v0, v4}, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;-><init>(Lorg/videolan/vlc/gui/NativeCrashActivity;)V

    .line 65
    .local v0, "asyncHttpRequest":Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;
    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 66
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 67
    aput-object v1, v4, v5

    const/4 v5, 0x7

    aput-object v2, v4, v5

    const/16 v5, 0x8

    aput-object v3, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$2;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    # getter for: Lorg/videolan/vlc/gui/NativeCrashActivity;->mLog:Ljava/lang/String;
    invoke-static {v6}, Lorg/videolan/vlc/gui/NativeCrashActivity;->access$6(Lorg/videolan/vlc/gui/NativeCrashActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 65
    invoke-virtual {v0, v4}, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    return-void
.end method
