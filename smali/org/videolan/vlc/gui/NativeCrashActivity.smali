.class public Lorg/videolan/vlc/gui/NativeCrashActivity;
.super Landroid/app/Activity;
.source "NativeCrashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;,
        Lorg/videolan/vlc/gui/NativeCrashActivity$LogTask;
    }
.end annotation


# instance fields
.field private mCrashLog:Landroid/widget/TextView;

.field private mLog:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRestartButton:Landroid/widget/Button;

.field private mSendLog:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/NativeCrashActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mLog:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/NativeCrashActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mCrashLog:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/NativeCrashActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mRestartButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3(Lorg/videolan/vlc/gui/NativeCrashActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mSendLog:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lorg/videolan/vlc/gui/NativeCrashActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$5(Lorg/videolan/vlc/gui/NativeCrashActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6(Lorg/videolan/vlc/gui/NativeCrashActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mLog:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f0300a8

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/NativeCrashActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f0702e5

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/NativeCrashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mCrashLog:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0702e7

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/NativeCrashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mRestartButton:Landroid/widget/Button;

    .line 43
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mRestartButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 44
    const v0, 0x7f0702e6

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/NativeCrashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mSendLog:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mSendLog:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 47
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mRestartButton:Landroid/widget/Button;

    new-instance v1, Lorg/videolan/vlc/gui/NativeCrashActivity$1;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/gui/NativeCrashActivity$1;-><init>(Lorg/videolan/vlc/gui/NativeCrashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity;->mSendLog:Landroid/widget/Button;

    new-instance v1, Lorg/videolan/vlc/gui/NativeCrashActivity$2;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/gui/NativeCrashActivity$2;-><init>(Lorg/videolan/vlc/gui/NativeCrashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v0, Lorg/videolan/vlc/gui/NativeCrashActivity$LogTask;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/NativeCrashActivity$LogTask;-><init>(Lorg/videolan/vlc/gui/NativeCrashActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/NativeCrashActivity$LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    return-void
.end method
