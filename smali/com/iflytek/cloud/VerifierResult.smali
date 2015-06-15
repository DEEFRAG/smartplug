.class public Lcom/iflytek/cloud/VerifierResult;
.super Ljava/lang/Object;


# static fields
.field public static final MSS_ERROR_IVP_EXTRA_RGN_SOPPORT:I = 0x2d51

.field public static final MSS_ERROR_IVP_GENERAL:I = 0x2d50

.field public static final MSS_ERROR_IVP_MUCH_NOISE:I = 0x2d53

.field public static final MSS_ERROR_IVP_NO_ENOUGH_AUDIO:I = 0x2d58

.field public static final MSS_ERROR_IVP_TEXT_NOT_MATCH:I = 0x2d57

.field public static final MSS_ERROR_IVP_TOO_LOW:I = 0x2d54

.field public static final MSS_ERROR_IVP_TRUNCATED:I = 0x2d52

.field public static final MSS_ERROR_IVP_UTTER_TOO_SHORT:I = 0x2d56

.field public static final MSS_ERROR_IVP_ZERO_AUDIO:I = 0x2d55

.field public static final TAG:Ljava/lang/String; = "VerifyResult"


# instance fields
.field public dcs:Ljava/lang/String;

.field public err:I

.field public ret:I

.field public rgn:I

.field public score:Ljava/lang/Double;

.field public score_raw:Ljava/lang/Double;

.field public source:Ljava/lang/String;

.field public sst:Ljava/lang/String;

.field public suc:I

.field public trs:Ljava/lang/String;

.field public vid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/iflytek/cloud/VerifierResult;->ret:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/VerifierResult;->dcs:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/VerifierResult;->vid:Ljava/lang/String;

    iput v1, p0, Lcom/iflytek/cloud/VerifierResult;->suc:I

    iput v1, p0, Lcom/iflytek/cloud/VerifierResult;->rgn:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/VerifierResult;->trs:Ljava/lang/String;

    iput v1, p0, Lcom/iflytek/cloud/VerifierResult;->err:I

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/cloud/VerifierResult;->source:Ljava/lang/String;

    :try_start_0
    iput-object p1, p0, Lcom/iflytek/cloud/VerifierResult;->source:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/iflytek/cloud/VerifierResult;->source:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VerifyResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/VerifierResult;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/a/g/a/a;->a(Ljava/lang/String;)V

    const-string v1, "ret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/VerifierResult;->ret:I

    :cond_0
    const-string v1, "sst"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "sst"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/VerifierResult;->sst:Ljava/lang/String;

    :cond_1
    const-string v1, "dcs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "dcs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/VerifierResult;->dcs:Ljava/lang/String;

    :cond_2
    const-string v1, "suc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "suc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/VerifierResult;->suc:I

    :cond_3
    const-string v1, "vid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "vid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/VerifierResult;->vid:Ljava/lang/String;

    :cond_4
    const-string v1, "rgn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "rgn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/VerifierResult;->rgn:I

    :cond_5
    const-string v1, "trs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "trs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/VerifierResult;->trs:Ljava/lang/String;

    :cond_6
    const-string v1, "err"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "err"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/VerifierResult;->err:I

    :cond_7
    const-string v1, "score"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "score"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/VerifierResult;->score:Ljava/lang/Double;

    :cond_8
    const-string v1, "score_raw"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "score_raw"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/VerifierResult;->score_raw:Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
