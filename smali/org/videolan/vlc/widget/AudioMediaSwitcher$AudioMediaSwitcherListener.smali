.class public interface abstract Lorg/videolan/vlc/widget/AudioMediaSwitcher$AudioMediaSwitcherListener;
.super Ljava/lang/Object;
.source "AudioMediaSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/widget/AudioMediaSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioMediaSwitcherListener"
.end annotation


# static fields
.field public static final CURRENT_MEDIA:I = 0x2

.field public static final NEXT_MEDIA:I = 0x3

.field public static final PREVIOUS_MEDIA:I = 0x1


# virtual methods
.method public abstract onMediaSwitched(I)V
.end method

.method public abstract onMediaSwitching()V
.end method

.method public abstract onTouchClick()V
.end method

.method public abstract onTouchDown()V
.end method

.method public abstract onTouchUp()V
.end method
