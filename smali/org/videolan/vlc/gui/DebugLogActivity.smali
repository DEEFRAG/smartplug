.class public Lorg/videolan/vlc/gui/DebugLogActivity;
.super Landroid/app/Activity;
.source "DebugLogActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/DebugLogActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/DebugLogActivity;Lorg/videolan/libvlc/LibVLC;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/DebugLogActivity;->updateTextView(Lorg/videolan/libvlc/LibVLC;)V

    return-void
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/DebugLogActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/videolan/vlc/gui/DebugLogActivity;->copyTextToClipboard()V

    return-void
.end method

.method private copyTextToClipboard()V
    .locals 2

    .prologue
    .line 96
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/DebugLogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 97
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    const v1, 0x7f07014b

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method private updateTextView(Lorg/videolan/libvlc/LibVLC;)V
    .locals 2
    .param p1, "instance"    # Lorg/videolan/libvlc/LibVLC;

    .prologue
    .line 101
    const v1, 0x7f07014b

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lorg/videolan/libvlc/LibVLC;->getBufferContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v6, 0x7f03004d

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/DebugLogActivity;->setContentView(I)V

    .line 45
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/util/VLCInstance;->getLibVlcInstance()Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/libvlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 48
    .local v3, "instance":Lorg/videolan/libvlc/LibVLC;
    const v6, 0x7f070147

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 49
    .local v4, "startLog":Landroid/widget/Button;
    const v6, 0x7f070148

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 51
    .local v5, "stopLog":Landroid/widget/Button;
    invoke-virtual {v3}, Lorg/videolan/libvlc/LibVLC;->isDebugBuffering()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 52
    invoke-virtual {v3}, Lorg/videolan/libvlc/LibVLC;->isDebugBuffering()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 54
    new-instance v6, Lorg/videolan/vlc/gui/DebugLogActivity$1;

    invoke-direct {v6, p0, v3, v4, v5}, Lorg/videolan/vlc/gui/DebugLogActivity$1;-><init>(Lorg/videolan/vlc/gui/DebugLogActivity;Lorg/videolan/libvlc/LibVLC;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v6, Lorg/videolan/vlc/gui/DebugLogActivity$2;

    invoke-direct {v6, p0, v3, v5, v4}, Lorg/videolan/vlc/gui/DebugLogActivity$2;-><init>(Lorg/videolan/vlc/gui/DebugLogActivity;Lorg/videolan/libvlc/LibVLC;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v6, 0x7f070149

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    .local v0, "clearLog":Landroid/widget/Button;
    new-instance v6, Lorg/videolan/vlc/gui/DebugLogActivity$3;

    invoke-direct {v6, p0, v3}, Lorg/videolan/vlc/gui/DebugLogActivity$3;-><init>(Lorg/videolan/vlc/gui/DebugLogActivity;Lorg/videolan/libvlc/LibVLC;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-direct {p0, v3}, Lorg/videolan/vlc/gui/DebugLogActivity;->updateTextView(Lorg/videolan/libvlc/LibVLC;)V

    .line 83
    const v6, 0x7f07014a

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 84
    .local v1, "copyToClipboard":Landroid/widget/Button;
    const v6, 0x7f07014b

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1

    :goto_1
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    new-instance v6, Lorg/videolan/vlc/gui/DebugLogActivity$4;

    invoke-direct {v6, p0}, Lorg/videolan/vlc/gui/DebugLogActivity$4;-><init>(Lorg/videolan/vlc/gui/DebugLogActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .end local v0    # "clearLog":Landroid/widget/Button;
    .end local v1    # "copyToClipboard":Landroid/widget/Button;
    .end local v3    # "instance":Lorg/videolan/libvlc/LibVLC;
    .end local v4    # "startLog":Landroid/widget/Button;
    .end local v5    # "stopLog":Landroid/widget/Button;
    :goto_2
    return-void

    .line 46
    :catch_0
    move-exception v2

    .local v2, "e":Lorg/videolan/libvlc/LibVlcException;
    goto :goto_2

    .end local v2    # "e":Lorg/videolan/libvlc/LibVlcException;
    .restart local v3    # "instance":Lorg/videolan/libvlc/LibVLC;
    .restart local v4    # "startLog":Landroid/widget/Button;
    .restart local v5    # "stopLog":Landroid/widget/Button;
    :cond_0
    move v6, v8

    .line 51
    goto :goto_0

    .restart local v0    # "clearLog":Landroid/widget/Button;
    .restart local v1    # "copyToClipboard":Landroid/widget/Button;
    :cond_1
    move v8, v7

    .line 84
    goto :goto_1
.end method
