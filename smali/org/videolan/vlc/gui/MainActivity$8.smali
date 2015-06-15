.class Lorg/videolan/vlc/gui/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/MainActivity;->showTipViewIfNeeded(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/MainActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$8;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1034
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity$8;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/MainActivity;->removeTipViewIfDisplayed()V

    .line 1035
    return-void
.end method
