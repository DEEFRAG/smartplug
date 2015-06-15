.class Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;
.super Ljava/lang/Object;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollState"
.end annotation


# instance fields
.field index:I

.field top:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "top"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;->index:I

    .line 71
    iput p2, p0, Lorg/videolan/vlc/gui/BrowserActivity$ScrollState;->top:I

    .line 72
    return-void
.end method
