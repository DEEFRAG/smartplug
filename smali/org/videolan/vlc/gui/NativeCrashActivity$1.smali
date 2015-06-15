.class Lorg/videolan/vlc/gui/NativeCrashActivity$1;
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
    iput-object p1, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$1;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v1, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$1;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/NativeCrashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$1;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    const-class v2, Lorg/videolan/vlc/gui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$1;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    invoke-virtual {v1, v0}, Lorg/videolan/vlc/gui/NativeCrashActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    iget-object v1, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$1;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/NativeCrashActivity;->finish()V

    .line 55
    return-void
.end method
