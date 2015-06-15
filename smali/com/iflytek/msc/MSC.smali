.class public Lcom/iflytek/msc/MSC;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/msc/MSC;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native DebugLog(Z)I
.end method

.method public static final native QHCRDataWrite([C[B[BII)I
.end method

.method public static final native QHCRFini()I
.end method

.method public static final native QHCRGetResult([C[BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static final native QHCRInit([B)I
.end method

.method public static final native QHCRLogEvent([C[B[B)I
.end method

.method public static final native QHCRSessionBegin([BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static final native QHCRSessionEnd([C[B)I
.end method

.method public static final native QISEAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QISEFini()I
.end method

.method public static final native QISEGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QISEGetResult([CLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static final native QISEInit([B)I
.end method

.method public static final native QISESessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static final native QISESessionEnd([C[B)I
.end method

.method public static final native QISETextPut([C[B[B)I
.end method

.method public static final native QISRAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QISRBuildGrammar([B[BI[BLjava/lang/String;Ljava/lang/Object;)I
.end method

.method public static final native QISRFini()I
.end method

.method public static final native QISRGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QISRGetResult([CLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static final native QISRGrammarActivate([C[B[B)I
.end method

.method public static final native QISRInit([B)I
.end method

.method public static final native QISRLogEvent([C[B[B)I
.end method

.method public static final native QISRRegisterNotify([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method public static final native QISRSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static final native QISRSessionEnd([C[B)I
.end method

.method public static final native QISRSetParam([C[B[B)I
.end method

.method public static final native QISRUpdateLexicon([B[BI[BLjava/lang/String;Ljava/lang/Object;)I
.end method

.method public static final native QISRUploadData([C[B[BI[BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static final native QISVAudioWrite([C[C[BIILcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QISVFini()I
.end method

.method public static final native QISVGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QISVGetResult([C[CLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static final native QISVInit([B)I
.end method

.method public static final native QISVQueDelModel([B[BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static final native QISVQueDelModelRelease([C)I
.end method

.method public static final native QISVSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static final native QISVSessionEnd([C[B)I
.end method

.method public static final native QIVWAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QIVWRegisterNotify([CLjava/lang/String;Ljava/lang/Object;)I
.end method

.method public static final native QIVWSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static final native QIVWSessionEnd([C[B)I
.end method

.method public static final native QMSPDownload([B[BLjava/lang/Object;)I
.end method

.method public static final native QMSPDownloadData([BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static final native QMSPGetParam([BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QMSPLogOut()I
.end method

.method public static final native QMSPLogin([B[B[B)I
.end method

.method public static final native QMSPRegisterNotify(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final native QMSPSearch([B[BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static final native QMSPSetParam([B[B)I
.end method

.method public static final native QMSPUploadData([B[BI[BLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static final native QTTSAudioGet([CLcom/iflytek/msc/MSCSessionInfo;)[B
.end method

.method public static final native QTTSAudioInfo([C)[C
.end method

.method public static final native QTTSFini()I
.end method

.method public static final native QTTSGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I
.end method

.method public static final native QTTSInit([B)I
.end method

.method public static final native QTTSSessionBegin([BLcom/iflytek/msc/MSCSessionInfo;)[C
.end method

.method public static final native QTTSSessionEnd([C[B)I
.end method

.method public static final native QTTSTextPut([C[B)I
.end method

.method public static final native UMSPLogin([B[B[BLjava/lang/Object;)I
.end method

.method public static final native getFileDescriptorFD(Ljava/io/FileDescriptor;)I
.end method

.method public static isLoaded()Z
    .locals 1

    sget-boolean v0, Lcom/iflytek/msc/MSC;->a:Z

    return v0
.end method

.method public static loadLibrary(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lcom/iflytek/msc/MSC;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/iflytek/msc/MSC;->a:Z

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/msc/MSC;->a:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-boolean v0, Lcom/iflytek/msc/MSC;->a:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/msc/MSC;->a:Z

    goto :goto_1
.end method
