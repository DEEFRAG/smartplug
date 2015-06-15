.class public Lcom/iflytek/cloud/a/g/f;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    sput v0, Lcom/iflytek/cloud/a/g/f;->a:I

    const/16 v0, 0xe

    sput v0, Lcom/iflytek/cloud/a/g/f;->b:I

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Lcom/iflytek/cloud/a/g/f;->b:I

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/iflytek/cloud/a/g/g;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Lcom/iflytek/cloud/a/g/f;->a:I

    if-lt v0, v1, :cond_0

    invoke-static {p0, p2}, Lcom/iflytek/cloud/a/g/g;->a(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Lcom/iflytek/cloud/a/g/f;->a:I

    if-lt v0, v1, :cond_0

    invoke-static {p0, p2}, Lcom/iflytek/cloud/a/g/g;->b(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
