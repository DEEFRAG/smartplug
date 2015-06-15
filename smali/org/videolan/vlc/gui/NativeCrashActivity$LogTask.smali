.class Lorg/videolan/vlc/gui/NativeCrashActivity$LogTask;
.super Landroid/os/AsyncTask;
.source "NativeCrashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/NativeCrashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/NativeCrashActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$LogTask;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/NativeCrashActivity$LogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 80
    .local v1, "log":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/util/Logcat;->getLogcat()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/NativeCrashActivity$LogTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 89
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$LogTask;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    invoke-static {v0, p1}, Lorg/videolan/vlc/gui/NativeCrashActivity;->access$0(Lorg/videolan/vlc/gui/NativeCrashActivity;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$LogTask;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    # getter for: Lorg/videolan/vlc/gui/NativeCrashActivity;->mCrashLog:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/videolan/vlc/gui/NativeCrashActivity;->access$1(Lorg/videolan/vlc/gui/NativeCrashActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$LogTask;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    # getter for: Lorg/videolan/vlc/gui/NativeCrashActivity;->mRestartButton:Landroid/widget/Button;
    invoke-static {v0}, Lorg/videolan/vlc/gui/NativeCrashActivity;->access$2(Lorg/videolan/vlc/gui/NativeCrashActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$LogTask;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    # getter for: Lorg/videolan/vlc/gui/NativeCrashActivity;->mSendLog:Landroid/widget/Button;
    invoke-static {v0}, Lorg/videolan/vlc/gui/NativeCrashActivity;->access$3(Lorg/videolan/vlc/gui/NativeCrashActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    return-void
.end method
