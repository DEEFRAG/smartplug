.class public Lcom/kankunit/smartplugcronus/adapter/DevicePagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "DevicePagerAdapter.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 29
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    new-instance v0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;-><init>()V

    goto :goto_0

    .line 25
    :pswitch_1
    new-instance v0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;-><init>()V

    goto :goto_0

    .line 27
    :pswitch_2
    new-instance v0, Lcom/kankunit/smartplugcronus/fragment/InfraredRayFragment;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/fragment/InfraredRayFragment;-><init>()V

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
