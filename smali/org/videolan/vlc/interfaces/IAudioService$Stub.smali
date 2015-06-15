.class public abstract Lorg/videolan/vlc/interfaces/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/interfaces/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/interfaces/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.videolan.vlc.interfaces.IAudioService"

.field static final TRANSACTION_addAudioCallback:I = 0x22

.field static final TRANSACTION_append:I = 0x9

.field static final TRANSACTION_detectHeadset:I = 0x24

.field static final TRANSACTION_getAlbum:I = 0x1c

.field static final TRANSACTION_getArtist:I = 0x19

.field static final TRANSACTION_getArtistNext:I = 0x1b

.field static final TRANSACTION_getArtistPrev:I = 0x1a

.field static final TRANSACTION_getCover:I = 0x1f

.field static final TRANSACTION_getCoverNext:I = 0x21

.field static final TRANSACTION_getCoverPrev:I = 0x20

.field static final TRANSACTION_getCurrentMediaLocation:I = 0xe

.field static final TRANSACTION_getLength:I = 0x1e

.field static final TRANSACTION_getMediaLocations:I = 0xd

.field static final TRANSACTION_getRate:I = 0x27

.field static final TRANSACTION_getRepeatType:I = 0x11

.field static final TRANSACTION_getTime:I = 0x1d

.field static final TRANSACTION_getTitle:I = 0x16

.field static final TRANSACTION_getTitleNext:I = 0x18

.field static final TRANSACTION_getTitlePrev:I = 0x17

.field static final TRANSACTION_hasMedia:I = 0x13

.field static final TRANSACTION_hasNext:I = 0x14

.field static final TRANSACTION_hasPrevious:I = 0x15

.field static final TRANSACTION_isPlaying:I = 0xf

.field static final TRANSACTION_isShuffling:I = 0x10

.field static final TRANSACTION_load:I = 0x8

.field static final TRANSACTION_moveItem:I = 0xa

.field static final TRANSACTION_next:I = 0x4

.field static final TRANSACTION_pause:I = 0x2

.field static final TRANSACTION_play:I = 0x1

.field static final TRANSACTION_playIndex:I = 0x26

.field static final TRANSACTION_previous:I = 0x5

.field static final TRANSACTION_remove:I = 0xb

.field static final TRANSACTION_removeAudioCallback:I = 0x23

.field static final TRANSACTION_removeLocation:I = 0xc

.field static final TRANSACTION_setRepeatType:I = 0x12

.field static final TRANSACTION_setTime:I = 0x7

.field static final TRANSACTION_showWithoutParse:I = 0x25

.field static final TRANSACTION_shuffle:I = 0x6

.field static final TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p0, p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/videolan/vlc/interfaces/IAudioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "org.videolan.vlc.interfaces.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/videolan/vlc/interfaces/IAudioService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lorg/videolan/vlc/interfaces/IAudioService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/videolan/vlc/interfaces/IAudioService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 388
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->play()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->pause()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->stop()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_4
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->next()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    :sswitch_5
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->previous()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_6
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->shuffle()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    :sswitch_7
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 92
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->setTime(J)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":J
    :sswitch_8
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 102
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v4, v7

    .line 105
    .local v4, "_arg2":Z
    :cond_0
    invoke-virtual {p0, v2, v3, v4}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->load(Ljava/util/List;IZ)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 111
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :sswitch_9
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 114
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->append(Ljava/util/List;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->moveItem(II)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_b
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->remove(I)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->removeLocation(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getMediaLocations()Ljava/util/List;

    move-result-object v6

    .line 151
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 157
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_e
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getCurrentMediaLocation()Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->isPlaying()Z

    move-result v5

    .line 167
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v5, :cond_1

    move v4, v7

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 173
    .end local v5    # "_result":Z
    :sswitch_10
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->isShuffling()Z

    move-result v5

    .line 175
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v5, :cond_2

    move v4, v7

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v5    # "_result":Z
    :sswitch_11
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getRepeatType()I

    move-result v5

    .line 183
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 189
    .end local v5    # "_result":I
    :sswitch_12
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->setRepeatType(I)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 198
    .end local v0    # "_arg0":I
    :sswitch_13
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->hasMedia()Z

    move-result v5

    .line 200
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v5, :cond_3

    move v4, v7

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v5    # "_result":Z
    :sswitch_14
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->hasNext()Z

    move-result v5

    .line 208
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v5, :cond_4

    move v4, v7

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v5    # "_result":Z
    :sswitch_15
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->hasPrevious()Z

    move-result v5

    .line 216
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v5, :cond_5

    move v4, v7

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 222
    .end local v5    # "_result":Z
    :sswitch_16
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getTitlePrev()Ljava/lang/String;

    move-result-object v5

    .line 232
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getTitleNext()Ljava/lang/String;

    move-result-object v5

    .line 240
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getArtist()Ljava/lang/String;

    move-result-object v5

    .line 248
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_1a
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getArtistPrev()Ljava/lang/String;

    move-result-object v5

    .line 256
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getArtistNext()Ljava/lang/String;

    move-result-object v5

    .line 264
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_1c
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getAlbum()Ljava/lang/String;

    move-result-object v5

    .line 272
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getTime()I

    move-result v5

    .line 280
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 286
    .end local v5    # "_result":I
    :sswitch_1e
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getLength()I

    move-result v5

    .line 288
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 294
    .end local v5    # "_result":I
    :sswitch_1f
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getCover()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 296
    .local v5, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    if-eqz v5, :cond_6

    .line 298
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    invoke-virtual {v5, p3, v7}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 302
    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 308
    .end local v5    # "_result":Landroid/graphics/Bitmap;
    :sswitch_20
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getCoverPrev()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 310
    .restart local v5    # "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    if-eqz v5, :cond_7

    .line 312
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    invoke-virtual {v5, p3, v7}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 316
    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 322
    .end local v5    # "_result":Landroid/graphics/Bitmap;
    :sswitch_21
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getCoverNext()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 324
    .restart local v5    # "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v5, :cond_8

    .line 326
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    invoke-virtual {v5, p3, v7}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 330
    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 336
    .end local v5    # "_result":Landroid/graphics/Bitmap;
    :sswitch_22
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lorg/videolan/vlc/interfaces/IAudioServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    move-result-object v0

    .line 339
    .local v0, "_arg0":Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->addAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 345
    .end local v0    # "_arg0":Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    :sswitch_23
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lorg/videolan/vlc/interfaces/IAudioServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    move-result-object v0

    .line 348
    .restart local v0    # "_arg0":Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->removeAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 354
    .end local v0    # "_arg0":Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    :sswitch_24
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    move v0, v7

    .line 357
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->detectHeadset(Z)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_9
    move v0, v4

    .line 356
    goto :goto_1

    .line 363
    :sswitch_25
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 366
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->showWithoutParse(I)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 372
    .end local v0    # "_arg0":I
    :sswitch_26
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 375
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->playIndex(I)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 381
    .end local v0    # "_arg0":I
    :sswitch_27
    const-string v8, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getRate()F

    move-result v5

    .line 383
    .local v5, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
