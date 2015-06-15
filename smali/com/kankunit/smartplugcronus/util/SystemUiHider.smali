.class public abstract Lcom/kankunit/smartplugcronus/util/SystemUiHider;
.super Ljava/lang/Object;
.source "SystemUiHider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;
    }
.end annotation


# static fields
.field public static final FLAG_FULLSCREEN:I = 0x2

.field public static final FLAG_HIDE_NAVIGATION:I = 0x6

.field public static final FLAG_LAYOUT_IN_SCREEN_OLDER_DEVICES:I = 0x1

.field private static sDummyListener:Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAnchorView:Landroid/view/View;

.field protected mFlags:I

.field protected mOnVisibilityChangeListener:Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/kankunit/smartplugcronus/util/SystemUiHider$1;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/util/SystemUiHider$1;-><init>()V

    sput-object v0, Lcom/kankunit/smartplugcronus/util/SystemUiHider;->sDummyListener:Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;

    .line 164
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "flags"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lcom/kankunit/smartplugcronus/util/SystemUiHider;->sDummyListener:Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHider;->mOnVisibilityChangeListener:Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;

    .line 107
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHider;->mActivity:Landroid/app/Activity;

    .line 108
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHider;->mAnchorView:Landroid/view/View;

    .line 109
    iput p3, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHider;->mFlags:I

    .line 110
    return-void
.end method

.method public static getInstance(Landroid/app/Activity;Landroid/view/View;I)Lcom/kankunit/smartplugcronus/util/SystemUiHider;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "flags"    # I

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 100
    new-instance v0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;

    invoke-direct {v0, p0, p1, p2}, Lcom/kankunit/smartplugcronus/util/SystemUiHiderHoneycomb;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 102
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kankunit/smartplugcronus/util/SystemUiHiderBase;

    invoke-direct {v0, p0, p1, p2}, Lcom/kankunit/smartplugcronus/util/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public abstract hide()V
.end method

.method public abstract isVisible()Z
.end method

.method public setOnVisibilityChangeListener(Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    sget-object p1, Lcom/kankunit/smartplugcronus/util/SystemUiHider;->sDummyListener:Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/SystemUiHider;->mOnVisibilityChangeListener:Lcom/kankunit/smartplugcronus/util/SystemUiHider$OnVisibilityChangeListener;

    .line 155
    return-void
.end method

.method public abstract setup()V
.end method

.method public abstract show()V
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/SystemUiHider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/SystemUiHider;->hide()V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/util/SystemUiHider;->show()V

    goto :goto_0
.end method
